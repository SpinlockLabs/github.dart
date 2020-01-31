import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/util.dart';
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
    Authentication auth,
    this.endpoint = 'https://api.github.com',
    http.Client client,
  })  : auth = auth ?? Authentication.anonymous(),
        client = client ?? http.Client();

  static const _ratelimitLimitHeader = 'x-ratelimit-limit';
  static const _ratelimitResetHeader = 'x-ratelimit-reset';
  static const _ratelimitRemainingHeader = 'x-ratelimit-remaining';

  /// Authentication Information
  Authentication auth;

  /// API Endpoint
  final String endpoint;

  /// HTTP Client
  final http.Client client;

  ActivityService _activity;
  AuthorizationsService _authorizations;
  GistsService _gists;
  GitService _git;
  IssuesService _issues;
  MiscService _misc;
  OrganizationsService _organizations;
  PullRequestsService _pullRequests;
  RepositoriesService _repositories;
  SearchService _search;
  UrlShortenerService _urlShortener;
  UsersService _users;

  /// The maximum number of requests that the consumer is permitted to make per
  /// hour.
  ///
  /// Updated with every request.
  ///
  /// Will be `null` if no requests have been made yet.
  int get rateLimitLimit => _rateLimitLimit;

  /// The number of requests remaining in the current rate limit window.
  ///
  /// Updated with every request.
  ///
  /// Will be `null` if no requests have been made yet.
  int get rateLimitRemaining => _rateLimitRemaining;

  /// The time at which the current rate limit window resets.
  ///
  /// Updated with every request.
  ///
  /// Will be `null` if no requests have been made yet.
  DateTime get rateLimitReset => _rateLimitReset == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(_rateLimitReset * 1000,
          isUtc: true);

  int _rateLimitReset, _rateLimitLimit, _rateLimitRemaining;

  /// Service for activity related methods of the GitHub API.
  ActivityService get activity {
    return _activity ??= ActivityService(this);
  }

  /// Service for autorizations related methods of the GitHub API.
  ///
  /// Note: You can only access this API via Basic Authentication using your
  /// username and password, not tokens.
  AuthorizationsService get authorizations {
    return _authorizations ??= AuthorizationsService(this);
  }

  /// Service for gist related methods of the GitHub API.
  GistsService get gists {
    return _gists ??= GistsService(this);
  }

  /// Service for git data related methods of the GitHub API.
  GitService get git {
    return _git ??= GitService(this);
  }

  /// Service for issues related methods of the GitHub API.
  IssuesService get issues {
    return _issues ??= IssuesService(this);
  }

  /// Service for misc related methods of the GitHub API.
  MiscService get misc {
    return _misc ??= MiscService(this);
  }

  /// Service for organization related methods of the GitHub API.
  OrganizationsService get organizations {
    return _organizations ??= OrganizationsService(this);
  }

  /// Service for pull requests related methods of the GitHub API.
  PullRequestsService get pullRequests {
    return _pullRequests ??= PullRequestsService(this);
  }

  /// Service for repository related methods of the GitHub API.
  RepositoriesService get repositories {
    return _repositories ??= RepositoriesService(this);
  }

  /// Service for search related methods of the GitHub API.
  SearchService get search {
    return _search ??= SearchService(this);
  }

  /// Service to provide a handy method to access GitHub's url shortener.
  UrlShortenerService get urlShortener {
    return _urlShortener ??= UrlShortenerService(this);
  }

  /// Service for user related methods of the GitHub API.
  UsersService get users {
    return _users ??= UsersService(this);
  }

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
  Future<T> getJSON<S, T>(String path,
          {int statusCode,
          void Function(http.Response response) fail,
          Map<String, String> headers,
          Map<String, String> params,
          JSONConverter<S, T> convert,
          String preview}) =>
      _requestJson('GET', path,
          statusCode: statusCode,
          fail: fail,
          headers: headers,
          params: params,
          convert: convert,
          preview: preview);

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
  /// [body] is the data to send to the server. Pass in a List<int> if you want to post binary body data. Everything else will have .toString() called on it and set as text content
  /// [S] represents the input type.
  /// [T] represents the type return from this function after conversion
  Future<T> postJSON<S, T>(
    String path, {
    int statusCode,
    void Function(http.Response response) fail,
    Map<String, String> headers,
    Map<String, String> params,
    JSONConverter<S, T> convert,
    dynamic body,
    String preview,
  }) =>
      _requestJson(
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

  Future<T> _requestJson<S, T>(
    String method,
    String path, {
    int statusCode,
    void Function(http.Response response) fail,
    Map<String, String> headers,
    Map<String, String> params,
    JSONConverter<S, T> convert,
    dynamic body,
    String preview,
  }) async {
    convert ??= (input) => input as T;
    headers ??= {};

    if (preview != null) {
      headers['Accept'] = preview;
    }

    headers.putIfAbsent('Accept', () => v3ApiMimeType);

    final response = await request(
      method,
      path,
      headers: headers,
      params: params,
      body: body,
      statusCode: statusCode,
      fail: fail,
    );

    final json = jsonDecode(response.body);

    if (convert == null) {
      _applyExpandos(json, response);
      return json;
    }

    final returnValue = convert(json);
    _applyExpandos(returnValue, response);
    return returnValue;
  }

  /// Handles Authenticated Requests in an easy to understand way.
  ///
  /// [method] is the HTTP method.
  /// [path] can either be a path like '/repos' or a full url.
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [body] is the body content of requests that take content. Pass in a List<int> if you want to post binary body data. Everything else will have .toString() called on it and set as text content
  ///
  Future<http.Response> request(
    String method,
    String path, {
    Map<String, String> headers,
    Map<String, dynamic> params,
    dynamic body,
    int statusCode,
    void Function(http.Response response) fail,
    String preview,
  }) async {
    if (rateLimitRemaining != null && rateLimitRemaining <= 0) {
      assert(rateLimitReset != null);
      final now = DateTime.now();
      final waitTime = rateLimitReset.difference(now);
      await Future.delayed(waitTime);
    }

    headers ??= {};

    if (preview != null) {
      headers['Accept'] = preview;
    }

    if (auth.isToken) {
      headers.putIfAbsent('Authorization', () => 'token ${auth.token}');
    } else if (auth.isBasic) {
      final userAndPass =
          base64Encode(utf8.encode('${auth.username}:${auth.password}'));
      headers.putIfAbsent('Authorization', () => 'basic $userAndPass');
    }

    if (method == 'PUT' && body == null) {
      headers.putIfAbsent('Content-Length', () => '0');
    }

    var queryString = '';

    if (params != null) {
      queryString = buildQueryString(params);
    }

    final url = StringBuffer();

    if (path.startsWith('http://') || path.startsWith('https://')) {
      url.write(path);
      url.write(queryString);
    } else {
      url.write(endpoint);
      if (!path.startsWith('/')) {
        url.write('/');
      }
      url.write(path);
      url.write(queryString);
    }

    final request = http.Request(method, Uri.parse(url.toString()));
    request.headers.addAll(headers);
    if (body != null) {
      if (body is List<int>) {
        request.bodyBytes = body;
      } else {
        request.body = body.toString();
      }
    }

    final streamedResponse = await client.send(request);

    final response = await http.Response.fromStream(streamedResponse);

    _updateRateLimit(response.headers);
    if (statusCode != null && statusCode != response.statusCode) {
      if (fail != null) {
        fail(response);
      }
      handleStatusCode(response);
    } else {
      return response;
    }
  }

  ///
  /// Internal method to handle status codes
  ///
  @alwaysThrows
  void handleStatusCode(http.Response response) {
    String message;
    List<Map<String, String>> errors;
    if (response.headers['content-type'].contains('application/json')) {
      final json = jsonDecode(response.body);
      message = json['message'];
      if (json['errors'] != null) {
        try {
          errors = List<Map<String, String>>.from(json['errors']);
        } catch (_) {
          errors = [
            {'code': json['errors'].toString()}
          ];
        }
      }
    }
    switch (response.statusCode) {
      case 404:
        throw NotFound(this, 'Requested Resource was Not Found');
        break;
      case 401:
        throw AccessForbidden(this);
      case 400:
        if (message == 'Problems parsing JSON') {
          throw InvalidJSON(this, message);
        } else if (message == 'Body should be a JSON Hash') {
          throw InvalidJSON(this, message);
        } else {
          throw BadRequest(this);
        }
        break;
      case 422:
        final buff = StringBuffer();
        buff.writeln();
        buff.writeln('  Message: $message');
        if (errors != null) {
          buff.writeln('  Errors:');
          for (final error in errors) {
            final resource = error['resource'];
            final field = error['field'];
            final code = error['code'];
            buff
              ..writeln('    Resource: $resource')
              ..writeln('    Field $field')
              ..write('    Code: $code');
          }
        }
        throw ValidationFailed(this, buff.toString());
      case 500:
      case 502:
      case 504:
        throw ServerError(this, response.statusCode, message);
    }
    throw UnknownError(this, message);
  }

  /// Disposes of this GitHub Instance.
  /// No other methods on this instance should be called after this method is called.
  void dispose() {
    // Destroy the Authentication Information
    // This is needed for security reasons.
    auth = null;

    // Closes the HTTP Client
    client.close();
  }

  void _updateRateLimit(Map<String, String> headers) {
    if (headers.containsKey(_ratelimitLimitHeader)) {
      _rateLimitLimit = int.parse(headers[_ratelimitLimitHeader]);
      _rateLimitRemaining = int.parse(headers[_ratelimitRemainingHeader]);
      _rateLimitReset = int.parse(headers[_ratelimitResetHeader]);
    }
  }
}

void _applyExpandos(Object target, http.Response response) {
  _etagExpando[target] = response.headers['etag'];
  if (response.headers['date'] != null) {
    _dateExpando[target] = http_parser.parseHttpDate(response.headers['date']);
  }
}

final _etagExpando = Expando<String>('etag');
final _dateExpando = Expando<DateTime>('date');

String getResponseEtag(Object obj) => _etagExpando[obj];
DateTime getResponseDate(Object obj) => _dateExpando[obj];
