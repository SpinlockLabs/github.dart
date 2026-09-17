// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../github.dart';
import '../util/errors.dart';

/// Helper to parse, redact, and construct typed GitHub exceptions from HTTP error responses.
class ErrorDecoder {
  static final RegExp _tokenRegex = RegExp(
    r'(?:gh[pousr]_[A-Za-z0-9_]{20,}|github_pat_[A-Za-z0-9_]{20,})',
  );
  static final RegExp _authHeaderRegex = RegExp(
    r'((?:bearer|token)\s+)[A-Za-z0-9_\-\.]+',
    caseSensitive: false,
  );

  static const int maxBodyLength = 2000;

  /// Redacts sensitive authentication tokens from [input].
  static String redact(String input) {
    return input
        .replaceAll(_tokenRegex, '[REDACTED_TOKEN]')
        .replaceAllMapped(_authHeaderRegex, (m) => '${m.group(1)}[REDACTED]');
  }

  /// Truncates [body] safely and redacts credentials.
  static String sanitizeBody(String body) {
    var truncated = body;
    if (truncated.length > maxBodyLength) {
      truncated = '${truncated.substring(0, maxBodyLength)}... [TRUNCATED]';
    }
    return redact(truncated);
  }

  /// Safely decodes an HTTP response into a typed [GitHubError] and throws it.
  static Never decode(
    GitHub github,
    http.Response response, {
    String? requestUrl,
  }) {
    final sanitizedBody = sanitizeBody(response.body);
    final contentType = response.headers['content-type'] ?? '';
    final requestId = response.headers['x-github-request-id'];

    String? message;
    List<Map<String, dynamic>>? errors;

    if (contentType.contains('application/json') ||
        response.body.trim().startsWith('{')) {
      try {
        final decoded = jsonDecode(response.body);
        if (decoded is Map<String, dynamic>) {
          message = decoded['message']?.toString();
          if (decoded['errors'] != null) {
            final rawErrors = decoded['errors'];
            if (rawErrors is List) {
              errors = rawErrors.map((e) {
                if (e is Map<String, dynamic>) {
                  return Map<String, dynamic>.from(e);
                } else if (e is Map) {
                  return e.map((k, v) => MapEntry(k.toString(), v));
                }
                return {'message': e.toString()};
              }).toList();
            } else if (rawErrors is Map) {
              errors = [
                rawErrors.map((k, v) => MapEntry(k.toString(), v)),
              ];
            } else {
              errors = [
                {'code': rawErrors.toString()},
              ];
            }
          }
        }
      } catch (_) {
        // Fall back gracefully on malformed JSON without crashing
      }
    }

    if (message != null) {
      message = redact(message);
    }

    final effectiveMessage = message ??
        (sanitizedBody.isNotEmpty
            ? sanitizedBody
            : 'HTTP ${response.statusCode}');

    final rateRemaining = response.headers['x-ratelimit-remaining'];
    final isRateLimitExceeded = response.statusCode == 429 ||
        (response.statusCode == 403 &&
            ((rateRemaining != null && rateRemaining == '0') ||
                effectiveMessage.toLowerCase().contains('rate limit')));

    if (isRateLimitExceeded) {
      DateTime? resetDate;
      final resetHeader = response.headers['x-ratelimit-reset'];
      if (resetHeader != null) {
        final resetEpoch = int.tryParse(resetHeader.trim());
        if (resetEpoch != null) {
          resetDate = DateTime.fromMillisecondsSinceEpoch(resetEpoch * 1000);
        }
      }
      final limit = int.tryParse(response.headers['x-ratelimit-limit'] ?? '');
      final remaining = int.tryParse(rateRemaining ?? '');

      throw RateLimitHit(
        github,
        message: effectiveMessage,
        reset: resetDate,
        limit: limit,
        remaining: remaining,
        apiUrl: requestUrl,
        statusCode: response.statusCode,
        responseBody: sanitizedBody,
        responseHeaders: response.headers,
        requestId: requestId,
      );
    }

    switch (response.statusCode) {
      case 400:
        if (message == 'Problems parsing JSON' ||
            message == 'Body should be a JSON Hash') {
          throw InvalidJSON(
            github,
            message,
            requestUrl,
            response.headers,
            sanitizedBody,
          );
        }
        throw BadRequest(
          github,
          effectiveMessage,
          requestUrl,
          response.headers,
          sanitizedBody,
        );
      case 401:
        throw NotAuthenticated(
          github,
          effectiveMessage,
          requestUrl,
          response.headers,
          sanitizedBody,
        );
      case 403:
        throw AccessForbidden(
          github,
          effectiveMessage,
          requestUrl,
          response.headers,
          sanitizedBody,
        );
      case 404:
        throw NotFound(
          github,
          effectiveMessage.isNotEmpty
              ? effectiveMessage
              : 'Requested Resource was Not Found',
          apiUrl: requestUrl,
          responseBody: sanitizedBody,
          responseHeaders: response.headers,
          requestId: requestId,
        );
      case 409:
        throw Conflict(
          github,
          effectiveMessage,
          requestUrl,
          response.headers,
          sanitizedBody,
        );
      case 422:
        final buff = StringBuffer();
        buff.writeln();
        buff.writeln('  Message: $effectiveMessage');
        if (errors != null) {
          buff.writeln('  Errors:');
          for (final error in errors) {
            final resource = error['resource'];
            final field = error['field'];
            final code = error['code'];
            final errMessage = error['message'];
            buff.writeln(
                '    ${resource != null ? 'Resource: $resource ' : ''}${field != null ? 'Field: $field ' : ''}${code != null ? 'Code: $code ' : ''}${errMessage != null ? 'Message: $errMessage' : ''}'
                    .trimRight());
          }
        }
        throw ValidationFailed(
          github,
          buff.toString().trim(),
          errors,
          requestUrl,
          response.headers,
          sanitizedBody,
        );
      case 500:
      case 502:
      case 504:
        throw ServerError(
          github,
          response.statusCode,
          message,
          apiUrl: requestUrl,
          responseHeaders: response.headers,
          responseBody: sanitizedBody,
          requestId: requestId,
        );
      case 503:
        throw ServiceUnavailable(
          github,
          message,
          requestUrl,
          response.headers,
          sanitizedBody,
          requestId,
        );
      default:
        throw UnknownError(
          github,
          effectiveMessage,
          requestUrl,
          response.headers,
          sanitizedBody,
          response.statusCode,
        );
    }
  }
}
