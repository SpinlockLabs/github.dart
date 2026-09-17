import 'dart:async';
import 'dart:convert';

import 'package:github/src/common.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as http_parser;
import 'package:meta/meta.dart';

///  The Main GitHub Client
///
///  ## Example
///
///       var github = new GitHub(auth: new Authentication.withToken("SomeToken"));
///       // Use the Client
///
class GitHub {
  /// Creates a new [GitHub] instance.
  ///
  /// [endpoint] is the api endpoint to use
  /// [auth] is the authentication information
  GitHub({
    this.auth = const Authentication.anonymous(),
    this.endpoint = 'https://api.github.com',
    this.version = '2022-11-28',
    http.Client? client,
    Set<String>? trustedOrigins,
    this.allowInsecureAuth = false,
    this.retryPolicy = const RetryPolicy(),
    HttpTransport? transport,
  })  : client = client ?? http.Client(),
        trustedOrigins = trustedOrigins ?? _defaultTrustedOrigins(endpoint),
        _transport = transport;

  static Set<String> _defaultTrustedOrigins(String endpoint) {
    final origins = <String>{};
    final uri = Uri.tryParse(endpoint);
    if (uri != null && uri.hasScheme && uri.hasAuthority) {
      origins.add(uri.origin);
    } else {
      origins.add('https://api.github.com');
    }
    origins.add('https://uploads.github.com');
    return origins;
  }

  /// Policy governing retries, exponential backoff, and rate limits.
  final RetryPolicy retryPolicy;

  /// Underlying injectable HTTP transport.
  HttpTransport get transport => _transport ??= HttpTransport(
        github: this,
        client: client,
        retryPolicy: retryPolicy,
        trustedOrigins: trustedOrigins,
        allowInsecureAuth: allowInsecureAuth,
        endpoint: endpoint,
      );
  HttpTransport? _transport;

  /// Set of trusted origins permitted to receive authentication credentials.
  /// Defaults to the origin of [endpoint] (e.g. `https://api.github.com`) and
  /// `https://uploads.github.com`.
  final Set<String> trustedOrigins;

  /// Whether to allow sending credentials over unencrypted HTTP.
  /// Defaults to `false` for security. Set to `true` only for local test servers.
  final bool allowInsecureAuth;

  static const _ratelimitLimitHeader = 'x-ratelimit-limit';
  static const _ratelimitResetHeader = 'x-ratelimit-reset';
  static const _ratelimitRemainingHeader = 'x-ratelimit-remaining';

  @visibleForTesting
  static const versionHeader = 'X-GitHub-Api-Version';

  /// Authentication Information
  Authentication auth;

  /// API Endpoint
  final String endpoint;

  /// Calendar version of the GitHub API to use.
  ///
  /// Changing this value is unsupported. However, it may unblock you if there's
  /// hotfix versions.
  ///
  /// See also:
  ///   * https://docs.github.com/en/rest/overview/api-versions?apiVersion=2022-11-28
  final String version;

  /// HTTP Client
  final http.Client client;

  ActivityService? _activity;
  // ignore: deprecated_member_use_from_same_package
  AuthorizationsService? _authorizations;
  GistsService? _gists;
  GitService? _git;
  IssuesService? _issues;
  MiscService? _misc;
  OrganizationsService? _organizations;
  PullRequestsService? _pullRequests;
  RepositoriesService? _repositories;
  SearchService? _search;
  // ignore: deprecated_member_use_from_same_package
  UrlShortenerService? _urlShortener;
  UsersService? _users;
  ChecksService? _checks;

  /// The maximum number of requests that the consumer is permitted to make per
  /// hour.
  ///
  /// Updated with every request.
  ///
  /// Will be `null` if no requests have been made yet.
  int? get rateLimitLimit => _rateLimitLimit;

  /// The number of requests remaining in the current rate limit window.
  ///
  /// Updated with every request.
  ///
  /// Will be `null` if no requests have been made yet.
  int? get rateLimitRemaining => _rateLimitRemaining;

  /// The time at which the current rate limit window resets.
  ///
  /// Updated with every request.
  ///
  /// Will be `null` if no requests have been made yet.
  DateTime? get rateLimitReset => _rateLimitReset == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(_rateLimitReset! * 1000,
          isUtc: true);

  int? _rateLimitReset, _rateLimitLimit, _rateLimitRemaining;

  /// Service for activity related methods of the GitHub API.
  ActivityService get activity => _activity ??= ActivityService(this);

  /// Service for autorizations related methods of the GitHub API.
  ///
  /// Note: You can only access this API via Basic Authentication using your
  /// username and password, not tokens.
  // ignore: deprecated_member_use_from_same_package
  AuthorizationsService get authorizations =>
      // ignore: deprecated_member_use_from_same_package
      _authorizations ??= AuthorizationsService(this);

  /// Service for gist related methods of the GitHub API.
  GistsService get gists => _gists ??= GistsService(this);

  /// Service for git data related methods of the GitHub API.
  GitService get git => _git ??= GitService(this);

  /// Service for issues related methods of the GitHub API.
  IssuesService get issues => _issues ??= IssuesService(this);

  /// Service for misc related methods of the GitHub API.
  MiscService get misc => _misc ??= MiscService(this);

  /// Service for organization related methods of the GitHub API.
  OrganizationsService get organizations =>
      _organizations ??= OrganizationsService(this);

  /// Service for pull requests related methods of the GitHub API.
  PullRequestsService get pullRequests =>
      _pullRequests ??= PullRequestsService(this);

  /// Service for repository related methods of the GitHub API.
  RepositoriesService get repositories =>
      _repositories ??= RepositoriesService(this);

  /// Service for search related methods of the GitHub API.
  SearchService get search => _search ??= SearchService(this);

  /// Service to provide a handy method to access GitHub's url shortener.
  // ignore: deprecated_member_use_from_same_package
  UrlShortenerService get urlShortener =>
      // ignore: deprecated_member_use_from_same_package
      _urlShortener ??= UrlShortenerService(this);

  /// Service for user related methods of the GitHub API.
  UsersService get users => _users ??= UsersService(this);

  /// Service containing methods to interact with the Checks API.
  ///
  /// See https://developer.github.com/v3/checks/
  ChecksService get checks => _checks ??= ChecksService(this);

  /// Handles Get Requests that respond with JSON
  /// [path] can either be a path like '/repos' or a full url.
  /// [statusCode] is the expected status code. If it is null, it is ignored.
  /// If the status code that the response returns is not the status code you provide
  /// then the [fail] function will be called with the HTTP Response.
  /// If you don't throw an error or break out somehow, it will go into some error checking
  /// that throws exceptions when it finds a 404 or 401. If it doesn't find a general HTTP Status Code
  /// for errors, it throws an Unknown Error.
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [convert] is a simple function that is passed this [GitHub] instance and a JSON object.
  /// The future will pass the object returned from this function to the then method.
  /// The default [convert] function returns the input object.
  Future<T> getJSON<S, T>(
    String path, {
    int? statusCode,
    void Function(http.Response response)? fail,
    Map<String, String>? headers,
    Map<String, String>? params,
    JSONConverter<S, T>? convert,
    String? preview,
  }) =>
      requestJson(
        'GET',
        path,
        statusCode: statusCode,
        fail: fail,
        headers: headers,
        params: params,
        convert: convert,
        preview: preview,
      );

  /// Handles Post Requests that respond with JSON
  ///
  /// [path] can either be a path like '/repos' or a full url.
  /// [statusCode] is the expected status code. If it is null, it is ignored.
  /// If the status code that the response returns is not the status code you provide
  /// then the [fail] function will be called with the HTTP Response.
  ///
  /// If you don't throw an error or break out somehow, it will go into some error checking
  /// that throws exceptions when it finds a 404 or 401. If it doesn't find a general HTTP Status Code
  /// for errors, it throws an Unknown Error.
  ///
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [convert] is a simple function that is passed this [GitHub] instance and a JSON object.
  ///
  /// The future will pass the object returned from this function to the then method.
  /// The default [convert] function returns the input object.
  /// [body] is the data to send to the server. Pass in a `List<int>` if you want to post binary body data. Everything else will have .toString() called on it and set as text content
  /// [S] represents the input type.
  /// [T] represents the type return from this function after conversion
  Future<T> postJSON<S, T>(
    String path, {
    int? statusCode,
    void Function(http.Response response)? fail,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    JSONConverter<S, T>? convert,
    dynamic body,
    String? preview,
  }) =>
      requestJson(
        'POST',
        path,
        statusCode: statusCode,
        fail: fail,
        headers: headers,
        params: params,
        convert: convert,
        body: body,
        preview: preview,
      );

  /// Handles PUT Requests that respond with JSON
  ///
  /// [path] can either be a path like '/repos' or a full url.
  /// [statusCode] is the expected status code. If it is null, it is ignored.
  /// If the status code that the response returns is not the status code you provide
  /// then the [fail] function will be called with the HTTP Response.
  ///
  /// If you don't throw an error or break out somehow, it will go into some error checking
  /// that throws exceptions when it finds a 404 or 401. If it doesn't find a general HTTP Status Code
  /// for errors, it throws an Unknown Error.
  ///
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [convert] is a simple function that is passed this [GitHub] instance and a JSON object.
  ///
  /// The future will pass the object returned from this function to the then method.
  /// The default [convert] function returns the input object.
  /// [body] is the data to send to the server. Pass in a `List<int>` if you want to post binary body data. Everything else will have .toString() called on it and set as text content
  /// [S] represents the input type.
  /// [T] represents the type return from this function after conversion
  Future<T> putJSON<S, T>(
    String path, {
    int? statusCode,
    void Function(http.Response response)? fail,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    JSONConverter<S, T>? convert,
    dynamic body,
    String? preview,
  }) =>
      requestJson(
        'PUT',
        path,
        statusCode: statusCode,
        fail: fail,
        headers: headers,
        params: params,
        convert: convert,
        body: body,
        preview: preview,
      );

  /// Handles PATCH Requests that respond with JSON
  ///
  /// [path] can either be a path like '/repos' or a full url.
  /// [statusCode] is the expected status code. If it is null, it is ignored.
  /// If the status code that the response returns is not the status code you provide
  /// then the [fail] function will be called with the HTTP Response.
  ///
  /// If you don't throw an error or break out somehow, it will go into some error checking
  /// that throws exceptions when it finds a 404 or 401. If it doesn't find a general HTTP Status Code
  /// for errors, it throws an Unknown Error.
  ///
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [convert] is a simple function that is passed this [GitHub] instance and a JSON object.
  ///
  /// The future will pass the object returned from this function to the then method.
  /// The default [convert] function returns the input object.
  /// [body] is the data to send to the server. Pass in a `List<int>` if you want to post binary body data. Everything else will have .toString() called on it and set as text content
  /// [S] represents the input type.
  /// [T] represents the type return from this function after conversion
  Future<T> patchJSON<S, T>(
    String path, {
    int? statusCode,
    void Function(http.Response response)? fail,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    JSONConverter<S, T>? convert,
    dynamic body,
    String? preview,
  }) =>
      requestJson(
        'PATCH',
        path,
        statusCode: statusCode,
        fail: fail,
        headers: headers,
        params: params,
        convert: convert,
        body: body,
        preview: preview,
      );

  Future<T> requestJson<S, T>(
    String method,
    String path, {
    int? statusCode,
    void Function(http.Response response)? fail,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    JSONConverter<S, T?>? convert,
    dynamic body,
    String? preview,
  }) async {
    convert ??= (input) => input as T?;
    headers ??= {};

    if (preview != null) {
      headers['Accept'] = preview;
    }

    headers.putIfAbsent('Accept', () => v3ApiMimeType);
    headers.putIfAbsent(versionHeader, () => version);

    final response = await request(
      method,
      path,
      headers: headers,
      params: params,
      body: body,
      statusCode: statusCode,
      fail: fail,
    );

    if (response.statusCode == 204 || response.body.isEmpty) {
      return null as T;
    }

    final json = jsonDecode(response.body);

    final returnValue = convert(json as S) as T;
    if (returnValue != null) {
      _applyExpandos(returnValue, response);
    }
    return returnValue;
  }

  /// Handles Authenticated Requests in an easy to understand way.
  ///
  /// [method] is the HTTP method.
  /// [path] can either be a path like '/repos' or a full url.
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [body] is the body content of requests that take content. Pass in a `List<int>` if you want to post binary body data. Everything else will have .toString() called on it and set as text content
  ///
  Future<http.Response> request(
    String method,
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    dynamic body,
    int? statusCode,
    void Function(http.Response response)? fail,
    String? preview,
  }) async {
    headers ??= <String, String>{};

    if (preview != null) {
      headers['Accept'] = preview;
    }

    final apiRequest = ApiRequest(
      method: method,
      path: path,
      headers: headers,
      params: params ?? const {},
      body: body,
      successStatuses: statusCode != null ? {statusCode} : null,
    );

    return transport.execute(apiRequest, fail: fail);
  }

  /// Internal method to handle status codes
  Never handleStatusCode(http.Response response) {
    ErrorDecoder.decode(this, response);
  }

  /// Disposes of this GitHub Instance.
  /// No other methods on this instance should be called after this method is called.
  void dispose() {
    // Closes the HTTP Client
    client.close();
  }

  /// Updates rate limit fields from HTTP response [headers].
  void updateRateLimit(Map<String, String> headers) {
    if (headers.containsKey(_ratelimitLimitHeader)) {
      _rateLimitLimit = int.tryParse(headers[_ratelimitLimitHeader] ?? '');
      _rateLimitRemaining =
          int.tryParse(headers[_ratelimitRemainingHeader] ?? '');
      _rateLimitReset = int.tryParse(headers[_ratelimitResetHeader] ?? '');
    }
  }
}

void _applyExpandos(Object? target, http.Response response) {
  if (target == null || target is String || target is num || target is bool) {
    return;
  }
  _etagExpando[target] = response.headers['etag'];
  if (response.headers['date'] != null) {
    _dateExpando[target] = http_parser.parseHttpDate(response.headers['date']!);
  }
}

final _etagExpando = Expando<String>('etag');
final _dateExpando = Expando<DateTime>('date');

String? getResponseEtag(Object obj) => _etagExpando[obj];
DateTime? getResponseDate(Object obj) => _dateExpando[obj];
