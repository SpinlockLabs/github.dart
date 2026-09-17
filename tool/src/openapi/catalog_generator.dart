import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';

import 'openapi_model.dart';

/// Generates the compact `RestContracts` catalog at lib/src/common/generated/rest_contracts.g.dart.
class CatalogGenerator {
  final List<RestOperation> operations;

  CatalogGenerator(this.operations);

  String generate() {
    final buffer = StringBuffer();
    buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
    buffer.writeln('// Generated from GitHub OpenAPI 2022-11-28 description.');
    buffer.writeln();
    buffer.writeln(
        '/// Immutable contract metadata for a GitHub REST API operation.');
    buffer.writeln('class RestOperationContract {');
    buffer.writeln('  final String operationId;');
    buffer.writeln('  final String method;');
    buffer.writeln('  final String path;');
    buffer.writeln('  final List<String> pathParams;');
    buffer.writeln('  final List<String> queryParams;');
    buffer.writeln('  final List<String> headerParams;');
    buffer.writeln('  final bool hasRequestBody;');
    buffer.writeln('  final List<String> requestMediaTypes;');
    buffer.writeln('  final List<int> successStatuses;');
    buffer.writeln('  final bool isMultiSegmentPath;');
    buffer.writeln();
    buffer.writeln('  const RestOperationContract({');
    buffer.writeln('    required this.operationId,');
    buffer.writeln('    required this.method,');
    buffer.writeln('    required this.path,');
    buffer.writeln('    this.pathParams = const [],');
    buffer.writeln('    this.queryParams = const [],');
    buffer.writeln('    this.headerParams = const [],');
    buffer.writeln('    this.hasRequestBody = false,');
    buffer.writeln('    this.requestMediaTypes = const [],');
    buffer.writeln('    this.successStatuses = const [200],');
    buffer.writeln('    this.isMultiSegmentPath = false,');
    buffer.writeln('  });');
    buffer.writeln('}');
    buffer.writeln();
    buffer.writeln('/// Catalog of all 2022-11-28 REST operation contracts.');
    buffer.writeln('abstract final class RestContracts {');

    for (final op in operations) {
      final safeIdentifier = _toIdentifier(op.operationId);
      buffer.writeln('  /// `${op.method} ${op.path}`');
      if (op.summary.isNotEmpty) {
        buffer.writeln('  /// ${op.summary.replaceAll('\n', ' ')}');
      }
      buffer.writeln('  static const $safeIdentifier = RestOperationContract(');
      buffer.writeln('    operationId: \'${op.operationId}\',');
      buffer.writeln('    method: \'${op.method}\',');
      buffer.writeln('    path: \'${op.path}\',');
      if (op.pathParams.isNotEmpty) {
        buffer.writeln(
            '    pathParams: [${op.pathParams.map((p) => '\'$p\'').join(', ')}],');
      }
      if (op.queryParams.isNotEmpty) {
        buffer.writeln(
            '    queryParams: [${op.queryParams.map((p) => '\'$p\'').join(', ')}],');
      }
      if (op.headerParams.isNotEmpty) {
        buffer.writeln(
            '    headerParams: [${op.headerParams.map((p) => '\'$p\'').join(', ')}],');
      }
      if (op.hasRequestBody) {
        buffer.writeln('    hasRequestBody: true,');
      }
      if (op.requestMediaTypes.isNotEmpty) {
        buffer.writeln(
            '    requestMediaTypes: [${op.requestMediaTypes.map((m) => '\'$m\'').join(', ')}],');
      }
      if (op.successStatuses.isNotEmpty &&
          !(op.successStatuses.length == 1 &&
              op.successStatuses.first == 200)) {
        buffer.writeln(
            '    successStatuses: [${op.successStatuses.join(', ')}],');
      }
      if (op.isMultiSegmentPath) {
        buffer.writeln('    isMultiSegmentPath: true,');
      }
      buffer.writeln('  );');
      buffer.writeln();
    }

    buffer.writeln('  /// Map of all operations indexed by operationId.');
    buffer.writeln('  static const Map<String, RestOperationContract> all = {');
    for (final op in operations) {
      final safeIdentifier = _toIdentifier(op.operationId);
      buffer.writeln('    \'${op.operationId}\': $safeIdentifier,');
    }
    buffer.writeln('  };');
    buffer.writeln('}');

    final code = buffer.toString();
    try {
      return DartFormatter(languageVersion: Version(3, 5, 0)).format(code);
    } catch (_) {
      return code;
    }
  }

  static String _toIdentifier(String operationId) {
    final cleaned = operationId
        .replaceAll('/', '_')
        .replaceAll('-', '_')
        .replaceAll('.', '_');
    final parts = cleaned.split('_');
    final sb = StringBuffer(parts.first);
    for (var i = 1; i < parts.length; i++) {
      final part = parts[i];
      if (part.isEmpty) {
        continue;
      }
      sb.write(part[0].toUpperCase());
      if (part.length > 1) {
        sb.write(part.substring(1));
      }
    }
    return sb.toString();
  }

  Future<void> writeToFile([
    String outputPath = 'lib/src/common/generated/rest_contracts.g.dart',
  ]) async {
    final file = File(outputPath);
    final parent = file.parent;
    if (!parent.existsSync()) {
      await parent.create(recursive: true);
    }
    await file.writeAsString(generate());
    Process.runSync(Platform.resolvedExecutable, ['format', outputPath]);
  }
}
