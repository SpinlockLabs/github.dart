import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../github.dart';
import '../util/auth.dart';
import '../util/errors.dart';
import '../util/json.dart';
import 'error_decoder.dart';
import 'request.dart';
import 'retry_policy.dart';

typedef ResponseCallback = void Function(http.Response response);

/// High-level transport orchestrating URI construction, credential boundary checks,
/// serialization, retry loops, rate-limit tracking, and typed error decoding.
class HttpTransport {
  final GitHub github;
  final http.Client client;
  final RetryPolicy retryPolicy;
  final Set<String> trustedOrigins;
  final bool allowInsecureAuth;
  final String endpoint;

  HttpTransport({
    required this.github,
    required this.client,
    required this.trustedOrigins,
    this.retryPolicy = const RetryPolicy(),
    this.allowInsecureAuth = false,
    this.endpoint = 'https://api.github.com',
  });

  /// Resolves an [ApiRequest] into an absolute, normalized [Uri].
  Uri resolveUri(
    String rawPath, {
    Map<String, dynamic> params = const {},
    Map<String, String> pathParams = const {},
    Set<String> multiSegmentParams = const {},
  }) {
    var expandedPath = rawPath;

    // Substitute path parameters e.g. {owner}, {repo}, {+path}
    for (final entry in pathParams.entries) {
      final key = entry.key;
      final value = entry.value;
      final isMultiSegment =
          multiSegmentParams.contains(key) || key.startsWith('+');
      final encoded =
          isMultiSegment ? Uri.encodeFull(value) : Uri.encodeComponent(value);
      expandedPath = expandedPath
          .replaceAll('{$key}', encoded)
          .replaceAll('{+$key}', encoded);
    }

    Uri targetUri;
    if (expandedPath.startsWith('http://') ||
        expandedPath.startsWith('https://')) {
      targetUri = Uri.parse(expandedPath);
    } else {
      final normalizedEndpoint = endpoint.endsWith('/')
          ? endpoint.substring(0, endpoint.length - 1)
          : endpoint;
      final normalizedPath =
          expandedPath.startsWith('/') ? expandedPath : '/$expandedPath';

      targetUri = Uri.parse('$normalizedEndpoint$normalizedPath');
    }

    // Merge query parameters
    if (params.isNotEmpty) {
      final currentQuery =
          Map<String, List<String>>.from(targetUri.queryParametersAll);
      for (final entry in params.entries) {
        if (entry.value == null) {
          continue;
        }
        final key = entry.key;
        final value = entry.value;
        if (value is Iterable) {
          final list = currentQuery.putIfAbsent(key, () => []);
          for (final item in value) {
            if (item != null) {
              list.add(item is Enum ? item.name : item.toString());
            }
          }
        } else {
          final list = currentQuery.putIfAbsent(key, () => []);
          list.add(value is Enum ? value.name : value.toString());
        }
      }

      targetUri = targetUri.replace(
          queryParameters: currentQuery.isEmpty ? null : currentQuery);
    }

    return targetUri;
  }

  /// Validates security constraints against [targetUri].
  void validateSecurityBoundaries(Uri targetUri, Authentication auth) {
    if (targetUri.scheme != 'https' &&
        !allowInsecureAuth &&
        !auth.isAnonymous) {
      throw GitHubError(
        github,
        'Insecure HTTP authentication is disallowed by default. '
        'Set allowInsecureAuth: true only for local testing.',
      );
    }
  }

  /// Prepares the headers map for [request], injecting User-Agent and Authorization.
  Map<String, String> prepareHeaders(
    ApiRequest request,
    Uri targetUri,
    Authentication auth,
  ) {
    final headers = Map<String, String>.from(request.headers);

    // Apply GitHub required User-Agent
    headers.putIfAbsent('User-Agent', () => auth.username ?? 'github.dart');

    // Apply Authorization if origin is trusted
    if (trustedOrigins.contains(targetUri.origin)) {
      final authHeader = auth.authorizationHeaderValue();
      if (authHeader != null) {
        headers.putIfAbsent('Authorization', () => authHeader);
      }
    }

    // Content length for empty PUT/POST
    if ((request.method == 'PUT' || request.method == 'POST') &&
        request.body == null) {
      headers.putIfAbsent('Content-Length', () => '0');
    }

    return headers;
  }

  /// Executes [request], performing retries and typed error handling.
  Future<http.Response> execute(
    ApiRequest request, {
    ResponseCallback? fail,
  }) async {
    // If rate limit remaining is 0, wait for reset window if within reasonable max delay
    if (github.rateLimitRemaining != null &&
        github.rateLimitRemaining! <= 0 &&
        github.rateLimitReset != null) {
      final now = retryPolicy.clock();
      if (github.rateLimitReset!.isAfter(now)) {
        final waitTime = github.rateLimitReset!.difference(now);
        if (waitTime <= retryPolicy.maxDelay) {
          await retryPolicy.sleeper(waitTime);
        }
      }
    }

    final auth = github.auth;
    final targetUri = resolveUri(
      request.path,
      params: request.params,
    );

    validateSecurityBoundaries(targetUri, auth);
    final headers = prepareHeaders(request, targetUri, auth);

    http.Response? lastResponse;
    Object? lastError;

    for (var attempt = 0; attempt <= retryPolicy.maxRetries; attempt++) {
      try {
        final httpRequest = http.Request(request.method, targetUri);
        httpRequest.headers.addAll(headers);

        if (request.body != null) {
          final body = request.body;
          if (body is List<int>) {
            httpRequest.bodyBytes = body;
          } else if (body is String) {
            httpRequest.body = body;
          } else {
            httpRequest.headers.putIfAbsent(
                'Content-Type', () => 'application/json; charset=utf-8');
            httpRequest.body = jsonEncode(body);
          }
        }

        var sendFuture = client.send(httpRequest);
        if (request.timeout != null) {
          sendFuture = sendFuture.timeout(request.timeout!);
        }

        final streamed = await sendFuture;
        final response = await http.Response.fromStream(streamed);
        lastResponse = response;

        // Update rate limit metadata on parent github instance
        github.updateRateLimit(response.headers);

        // Check if status is accepted
        if (request.successStatuses == null ||
            request.successStatuses!.contains(response.statusCode)) {
          return response;
        }

        // Check if retry policy triggers on this response
        if (retryPolicy.shouldRetry(
          request: request,
          attempt: attempt,
          response: response,
        )) {
          final delay =
              retryPolicy.delayFor(attempt: attempt, response: response);
          await retryPolicy.sleeper(delay);
          continue;
        }

        // Failed status without retry
        if (fail != null) {
          fail(response);
        }
        ErrorDecoder.decode(github, response, requestUrl: targetUri.toString());
      } catch (e) {
        lastError = e;
        if (e is GitHubError) {
          rethrow;
        }

        if (retryPolicy.shouldRetry(
          request: request,
          attempt: attempt,
          error: e,
        )) {
          final delay = retryPolicy.delayFor(attempt: attempt);
          await retryPolicy.sleeper(delay);
          continue;
        }

        throw GitHubError(
          github,
          'Network request failed: $e',
          apiUrl: targetUri.toString(),
          source: e,
        );
      }
    }

    if (lastResponse != null) {
      if (fail != null) {
        fail(lastResponse);
      }
      ErrorDecoder.decode(github, lastResponse,
          requestUrl: targetUri.toString());
    }

    throw GitHubError(
      github,
      'Request failed after ${retryPolicy.maxRetries} retries: $lastError',
      apiUrl: targetUri.toString(),
      source: lastError,
    );
  }

  /// Convenience method to execute a request and decode the JSON body.
  Future<T> executeJson<T>(
    ApiRequest request, {
    JSONConverter<dynamic, T?>? convert,
    ResponseCallback? fail,
  }) async {
    final response = await execute(request, fail: fail);
    if (response.statusCode == 204 || response.body.isEmpty) {
      return null as T;
    }
    final decoded = jsonDecode(response.body);
    if (convert != null) {
      return convert(decoded) as T;
    }
    return decoded as T;
  }
}
