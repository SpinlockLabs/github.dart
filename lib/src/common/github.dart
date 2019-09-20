part of github.common;

typedef ClientCreator = http.Client Function();

///  The Main GitHub Client
///
///  ## Example
///
///       var github = new GitHub(auth: new Authentication.withToken("SomeToken"));
///       // Use the Client
///
class GitHub {
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

  /// Creates a new [GitHub] instance.
  ///
  /// [endpoint] is the api endpoint to use
  /// [auth] is the authentication information
  GitHub({
    Authentication auth,
    this.endpoint = "https://api.github.com",
    http.Client client,
  })  : this.auth = auth == null ? Authentication.anonymous() : auth,
        this.client = client == null ? http.Client() : client;

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
    if (_activity == null) {
      _activity = ActivityService(this);
    }
    return _activity;
  }

  /// Service for autorizations related methods of the GitHub API.
  ///
  /// Note: You can only access this API via Basic Authentication using your
  /// username and password, not tokens.
  AuthorizationsService get authorizations {
    if (_authorizations == null) {
      _authorizations = AuthorizationsService(this);
    }
    return _authorizations;
  }

  /// Service for gist related methods of the GitHub API.
  GistsService get gists {
    if (_gists == null) {
      _gists = GistsService(this);
    }
    return _gists;
  }

  /// Service for git data related methods of the GitHub API.
  GitService get git {
    if (_git == null) {
      _git = GitService(this);
    }
    return _git;
  }

  /// Service for issues related methods of the GitHub API.
  IssuesService get issues {
    if (_issues == null) {
      _issues = IssuesService(this);
    }
    return _issues;
  }

  /// Service for misc related methods of the GitHub API.
  MiscService get misc {
    if (_misc == null) {
      _misc = MiscService(this);
    }
    return _misc;
  }

  /// Service for organization related methods of the GitHub API.
  OrganizationsService get organizations {
    if (_organizations == null) {
      _organizations = OrganizationsService(this);
    }
    return _organizations;
  }

  /// Service for pull requests related methods of the GitHub API.
  PullRequestsService get pullRequests {
    if (_pullRequests == null) {
      _pullRequests = PullRequestsService(this);
    }
    return _pullRequests;
  }

  /// Service for repository related methods of the GitHub API.
  RepositoriesService get repositories {
    if (_repositories == null) {
      _repositories = RepositoriesService(this);
    }
    return _repositories;
  }

  /// Service for search related methods of the GitHub API.
  SearchService get search {
    if (_search == null) {
      _search = SearchService(this);
    }
    return _search;
  }

  /// Service to provide a handy method to access GitHub's url shortener.
  UrlShortenerService get urlShortener {
    if (_urlShortener == null) {
      _urlShortener = UrlShortenerService(this);
    }
    return _urlShortener;
  }

  /// Service for user related methods of the GitHub API.
  UsersService get users {
    if (_users == null) {
      _users = UsersService(this);
    }
    return _users;
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
          void fail(http.Response response),
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
  /// [body] is the data to send to the server.
  /// [S] represents the input type.
  /// [T] represents the type return from this function after conversion
  Future<T> postJSON<S, T>(
    String path, {
    int statusCode,
    void fail(http.Response response),
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
    void fail(http.Response response),
    Map<String, String> headers,
    Map<String, String> params,
    JSONConverter<S, T> convert,
    dynamic body,
    String preview,
  }) async {
    convert ??= (input) => input as T;
    headers ??= {};

    if (preview != null) {
      headers["Accept"] = preview;
    }

    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    var response = await request(
      method,
      path,
      headers: headers,
      params: params,
      body: body,
      statusCode: statusCode,
      fail: fail,
    );

    var json = jsonDecode(response.body);

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
  /// [body] is the body content of requests that take content.
  ///
  Future<http.Response> request(
    String method,
    String path, {
    Map<String, String> headers,
    Map<String, dynamic> params,
    dynamic body,
    int statusCode,
    void fail(http.Response response),
    String preview,
  }) async {
    if (headers == null) headers = {};

    if (preview != null) {
      headers["Accept"] = preview;
    }

    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass =
          base64Encode(utf8.encode('${auth.username}:${auth.password}'));
      headers.putIfAbsent("Authorization", () => "basic $userAndPass");
    }

    if (method == "PUT" && body == null) {
      headers.putIfAbsent("Content-Length", () => "0");
    }

    var queryString = "";

    if (params != null) {
      queryString = buildQueryString(params);
    }

    var url = StringBuffer();

    if (path.startsWith("http://") || path.startsWith("https://")) {
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

    var request = http.Request(method, Uri.parse(url.toString()));
    request.headers.addAll(headers);
    if (body != null) {
      if (body is String) {
        request.body = body;
      } else {
        request.bodyBytes = body;
      }
    }

    var streamedResponse = await client.send(request);

    var response = await http.Response.fromStream(streamedResponse);

    _updateRateLimit(response.headers);
    if (statusCode != null && statusCode != response.statusCode) {
      fail != null ? fail(response) : null;
      handleStatusCode(response);
    } else {
      return response;
    }
  }

  ///
  /// Internal method to handle status codes
  ///
  @meta.alwaysThrows
  void handleStatusCode(http.Response response) {
    String message;
    List<Map<String, String>> errors;
    if (response.headers['content-type'].contains('application/json')) {
      var json = jsonDecode(response.body);
      message = json['message'];
      errors = json['errors'] as List<Map<String, String>>;
    }
    switch (response.statusCode) {
      case 404:
        throw NotFound(this, "Requested Resource was Not Found");
        break;
      case 401:
        throw AccessForbidden(this);
      case 400:
        if (message == "Problems parsing JSON") {
          throw InvalidJSON(this, message);
        } else if (message == "Body should be a JSON Hash") {
          throw InvalidJSON(this, message);
        } else {
          throw BadRequest(this);
        }
        break;
      case 422:
        var buff = StringBuffer();
        buff.writeln();
        buff.writeln("  Message: $message");
        if (errors != null) {
          buff.writeln("  Errors:");
          for (Map<String, String> error in errors) {
            var resource = error['resource'];
            var field = error['field'];
            var code = error['code'];
            buff
              ..writeln("    Resource: $resource")
              ..writeln("    Field $field")
              ..write("    Code: $code");
          }
        }
        throw ValidationFailed(this, buff.toString());
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
