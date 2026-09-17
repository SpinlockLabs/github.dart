import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'request.dart';

typedef Sleeper = Future<void> Function(Duration duration);
typedef Clock = DateTime Function();
typedef RandomGenerator = double Function();

/// Policy governing request retries, exponential backoff, and rate-limit delays.
class RetryPolicy {
  /// Maximum number of retry attempts for idempotent operations.
  final int maxRetries;

  /// Initial backoff delay for the first retry.
  final Duration initialDelay;

  /// Maximum backoff delay allowed between retries.
  final Duration maxDelay;

  /// Multiplier for exponential backoff calculation.
  final double backoffMultiplier;

  /// Whether to retry requests that hit HTTP 429 or secondary rate limits.
  final bool retryOnRateLimit;

  /// Injectable sleeper function (defaults to `Future.delayed`).
  final Sleeper sleeper;

  /// Injectable clock function (defaults to `DateTime.now`).
  final Clock clock;

  /// Injectable random generator for jitter (returns value in [0.0, 1.0)).
  final RandomGenerator? random;

  const RetryPolicy({
    this.maxRetries = 3,
    this.initialDelay = const Duration(milliseconds: 250),
    this.maxDelay = const Duration(seconds: 30),
    this.backoffMultiplier = 2.0,
    this.retryOnRateLimit = true,
    this.sleeper = Future.delayed,
    this.clock = DateTime.now,
    this.random,
  });

  /// No-retry policy for tests or callers desiring fail-fast behavior.
  static const RetryPolicy noRetries = RetryPolicy(maxRetries: 0);

  /// Determines whether [error] or [response] warrants a retry on [attempt] (0-indexed).
  bool shouldRetry({
    required ApiRequest request,
    required int attempt,
    http.Response? response,
    Object? error,
  }) {
    if (attempt >= maxRetries) {
      return false;
    }

    // By default, retry only idempotent requests
    if (!request.isIdempotent) {
      return false;
    }

    if (error != null) {
      if (error is TimeoutException ||
          error is SocketException ||
          error is http.ClientException) {
        return true;
      }
      return false;
    }

    if (response != null) {
      final code = response.statusCode;
      if (code == 502 || code == 503 || code == 504) {
        return true;
      }
      if (retryOnRateLimit &&
          (code == 429 || _isSecondaryRateLimit(response))) {
        return true;
      }
    }

    return false;
  }

  /// Calculates delay before attempt [attempt] (0-indexed), honoring `Retry-After` if present.
  Duration delayFor({
    required int attempt,
    http.Response? response,
  }) {
    if (response != null) {
      final retryAfterHeader = response.headers['retry-after'];
      if (retryAfterHeader != null) {
        final seconds = int.tryParse(retryAfterHeader.trim());
        if (seconds != null) {
          final d = Duration(seconds: seconds);
          return d > maxDelay ? maxDelay : d;
        }
        try {
          final date = HttpDate.parse(retryAfterHeader);
          final diff = date.difference(clock());
          if (diff > Duration.zero) {
            return diff > maxDelay ? maxDelay : diff;
          }
        } catch (_) {}
      }

      // Check x-ratelimit-reset if 429 or secondary rate limit
      if (response.statusCode == 429 || _isSecondaryRateLimit(response)) {
        final resetHeader = response.headers['x-ratelimit-reset'];
        if (resetHeader != null) {
          final resetEpoch = int.tryParse(resetHeader.trim());
          if (resetEpoch != null) {
            final resetDate =
                DateTime.fromMillisecondsSinceEpoch(resetEpoch * 1000);
            final diff = resetDate.difference(clock());
            if (diff > Duration.zero && diff <= maxDelay) {
              return diff;
            }
          }
        }
      }
    }

    // Exponential backoff with ±20% jitter
    final exponentialMs =
        initialDelay.inMilliseconds * math.pow(backoffMultiplier, attempt);
    final jitterFactor =
        0.8 + ((random?.call() ?? math.Random().nextDouble()) * 0.4);
    final delayMs = (exponentialMs * jitterFactor).round();

    final capped = math.min(delayMs, maxDelay.inMilliseconds);
    return Duration(milliseconds: capped);
  }

  bool _isSecondaryRateLimit(http.Response response) {
    if (response.statusCode != 403) {
      return false;
    }
    final body = response.body.toLowerCase();
    return body.contains('secondary rate limit') ||
        body.contains('rate limit exceeded');
  }
}
