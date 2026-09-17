import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

import 'openapi_model.dart';

/// Loads, validates, resolves $refs, and normalizes GitHub OpenAPI descriptions.
class SpecLoader {
  final Map<String, dynamic> lockData;
  final String cacheDirectory;

  SpecLoader({
    required this.lockData,
    this.cacheDirectory = 'tool/spec/.cache',
  });

  static Future<SpecLoader> loadFromLock([
    String lockFilePath = 'tool/spec/github-openapi.lock.json',
    String cacheDir = 'tool/spec/.cache',
  ]) async {
    final lockFile = File(lockFilePath);
    if (!lockFile.existsSync()) {
      throw StateError('Lock file not found at $lockFilePath');
    }
    final lockContent = await lockFile.readAsString();
    final lockJson = jsonDecode(lockContent) as Map<String, dynamic>;
    return SpecLoader(lockData: lockJson, cacheDirectory: cacheDir);
  }

  /// Ensures the spec artifact is downloaded and matches the lock SHA-256.
  Future<File> ensureArtifact({bool offline = false}) async {
    final cacheDir = Directory(cacheDirectory);
    if (!cacheDir.existsSync()) {
      await cacheDir.create(recursive: true);
    }

    final artifactName = (lockData['artifactPath'] as String).split('/').last;
    final cachedFile = File('$cacheDirectory/$artifactName');
    final expectedSha = lockData['sha256'] as String;

    if (cachedFile.existsSync()) {
      final bytes = await cachedFile.readAsBytes();
      final actualSha = sha256.convert(bytes).toString();
      if (actualSha == expectedSha) {
        return cachedFile;
      }
      if (offline) {
        throw StateError(
          'Cached spec SHA-256 ($actualSha) does not match lock ($expectedSha) in offline mode.',
        );
      }
    }

    if (offline) {
      throw StateError(
        'OpenAPI spec artifact not found at ${cachedFile.path} in offline mode.',
      );
    }

    // Download from GitHub raw
    final repo = lockData['repository'] as String;
    final commit = lockData['upstreamCommit'] as String;
    final artifactPath = lockData['artifactPath'] as String;
    final url = Uri.parse(
        'https://raw.githubusercontent.com/$repo/$commit/$artifactPath');

    final client = HttpClient();
    try {
      final req = await client.getUrl(url);
      final res = await req.close();
      if (res.statusCode != 200) {
        throw HttpException(
          'Failed to download spec from $url: HTTP ${res.statusCode}',
          uri: url,
        );
      }
      final sink = cachedFile.openWrite();
      await res.pipe(sink);
    } finally {
      client.close();
    }

    // Verify downloaded SHA-256
    final downloadedBytes = await cachedFile.readAsBytes();
    final downloadedSha = sha256.convert(downloadedBytes).toString();
    if (downloadedSha != expectedSha) {
      await cachedFile.delete();
      throw StateError(
        'Downloaded spec SHA-256 ($downloadedSha) does not match expected lock ($expectedSha).',
      );
    }

    return cachedFile;
  }

  /// Parses the spec and returns normalized [RestOperation]s.
  Future<List<RestOperation>> loadOperations({bool offline = false}) async {
    final file = await ensureArtifact(offline: offline);
    final rawText = await file.readAsString();
    final root = jsonDecode(rawText) as Map<String, dynamic>;

    dynamic resolveRef(dynamic item) {
      if (item is! Map<String, dynamic>) {
        return item;
      }
      if (!item.containsKey(r'$ref')) {
        return item;
      }

      final ref = item[r'$ref'] as String;
      if (!ref.startsWith('#/')) {
        throw UnsupportedError('External $ref not supported: $ref');
      }

      final parts = ref.substring(2).split('/');
      dynamic current = root;
      for (final part in parts) {
        final decodedPart = part.replaceAll('~1', '/').replaceAll('~0', '~');
        if (current is Map<String, dynamic>) {
          current = current[decodedPart];
        } else if (current is List && int.tryParse(decodedPart) != null) {
          current = current[int.parse(decodedPart)];
        } else {
          throw StateError('Unresolvable $ref at $part');
        }
      }
      return resolveRef(current);
    }

    final paths = root['paths'] as Map<String, dynamic>? ?? {};
    final operations = <RestOperation>[];

    final sortedPaths = paths.keys.toList()..sort();

    for (final path in sortedPaths) {
      final pathItemRaw = paths[path];
      final pathItem = resolveRef(pathItemRaw) as Map<String, dynamic>;

      final commonParams = <Map<String, dynamic>>[];
      if (pathItem.containsKey('parameters')) {
        for (final p in pathItem['parameters'] as List) {
          commonParams.add(resolveRef(p) as Map<String, dynamic>);
        }
      }

      for (final method in ['get', 'post', 'put', 'delete', 'patch', 'head']) {
        if (!pathItem.containsKey(method)) {
          continue;
        }

        final opRaw = pathItem[method];
        final op = resolveRef(opRaw) as Map<String, dynamic>;

        final operationId = op['operationId'] as String?;
        if (operationId == null) {
          continue;
        }

        final tags = (op['tags'] as List?)?.cast<String>() ?? <String>[];
        final summary = op['summary'] as String? ?? '';
        final description = op['description'] as String? ?? '';
        final deprecated = op['deprecated'] as bool? ?? false;

        // Combine parameters
        final allParams = <Map<String, dynamic>>[...commonParams];
        if (op.containsKey('parameters')) {
          for (final p in op['parameters'] as List) {
            allParams.add(resolveRef(p) as Map<String, dynamic>);
          }
        }

        final pathParams = <String>[];
        final queryParams = <String>[];
        final headerParams = <String>[];

        for (final param in allParams) {
          final inLocation = param['in'] as String?;
          final name = param['name'] as String?;
          if (name == null) {
            continue;
          }

          if (inLocation == 'path') {
            if (!pathParams.contains(name)) {
              pathParams.add(name);
            }
          } else if (inLocation == 'query') {
            if (!queryParams.contains(name)) {
              queryParams.add(name);
            }
          } else if (inLocation == 'header') {
            if (!headerParams.contains(name)) {
              headerParams.add(name);
            }
          }
        }
        pathParams.sort();
        queryParams.sort();
        headerParams.sort();

        // Request body
        var hasRequestBody = false;
        final requestMediaTypes = <String>[];
        if (op.containsKey('requestBody')) {
          hasRequestBody = true;
          final reqBody = resolveRef(op['requestBody']) as Map<String, dynamic>;
          final content = reqBody['content'] as Map<String, dynamic>?;
          if (content != null) {
            requestMediaTypes.addAll(content.keys);
            requestMediaTypes.sort();
          }
        }

        // Response status codes
        final successStatuses = <int>[];
        final errorStatuses = <int>[];
        if (op.containsKey('responses')) {
          final responses = resolveRef(op['responses']) as Map<String, dynamic>;
          for (final codeStr in responses.keys) {
            final code = int.tryParse(codeStr);
            if (code != null) {
              if (code >= 200 && code < 300) {
                successStatuses.add(code);
              } else {
                errorStatuses.add(code);
              }
            }
          }
        }
        successStatuses.sort();
        errorStatuses.sort();

        final isMultiSegmentPath = path.contains('{+path}') ||
            path.contains('{path*}') ||
            (op['x-multi-segment'] == true);

        operations.add(RestOperation(
          operationId: operationId,
          method: method.toUpperCase(),
          path: path,
          summary: summary,
          description: description,
          tags: tags,
          pathParams: pathParams,
          queryParams: queryParams,
          headerParams: headerParams,
          hasRequestBody: hasRequestBody,
          requestMediaTypes: requestMediaTypes,
          successStatuses:
              successStatuses.isEmpty ? const [200] : successStatuses,
          errorStatuses: errorStatuses,
          deprecated: deprecated,
          isMultiSegmentPath: isMultiSegmentPath,
        ));
      }
    }

    // Sort deterministically by operationId
    operations.sort((a, b) => a.operationId.compareTo(b.operationId));
    return operations;
  }
}
