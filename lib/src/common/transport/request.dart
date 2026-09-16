import '../generated/rest_contracts.g.dart';

/// A structured, type-safe API request description.
class ApiRequest {
  /// HTTP method (e.g. 'GET', 'POST', 'PATCH', 'PUT', 'DELETE').
  final String method;

  /// Request path or absolute URL.
  final String path;

  /// HTTP headers to send with the request.
  final Map<String, String> headers;

  /// Query parameters to encode into the URL.
  final Map<String, dynamic> params;

  /// Request body (JSON-encodable Object, `List<int>` bytes, or `null`).
  final Object? body;

  /// Set of accepted HTTP status codes considered successful.
  /// If `null`, any status code is returned without error decoding.
  final Set<int>? successStatuses;

  /// Associated OpenAPI operation contract, if known.
  final RestOperationContract? contract;

  /// Optional per-request timeout.
  final Duration? timeout;

  const ApiRequest({
    required this.method,
    required this.path,
    this.headers = const {},
    this.params = const {},
    this.body,
    this.successStatuses = const {200},
    this.contract,
    this.timeout,
  });

  /// True if the HTTP method is idempotent according to RFC 9110.
  bool get isIdempotent {
    final m = method.toUpperCase();
    return m == 'GET' || m == 'HEAD' || m == 'PUT' || m == 'DELETE';
  }
}
