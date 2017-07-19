part of github.common;

typedef http.Client ClientCreator();

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
  BlogService _blog;
  ExploreService _explore;
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
  GitHub(
      {Authentication auth,
      this.endpoint: "https://api.github.com",
      http.Client client})
      : this.auth = auth == null ? new Authentication.anonymous() : auth,
        this.client = client == null ? new http.Client() : client;

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
      : new DateTime.fromMillisecondsSinceEpoch(_rateLimitReset * 1000,
          isUtc: true);

  int _rateLimitReset, _rateLimitLimit, _rateLimitRemaining;

  /// Service for activity related methods of the GitHub API.
  ActivityService get activity {
    if (_activity == null) {
      _activity = new ActivityService(this);
    }
    return _activity;
  }

  /// Service for autorizations related methods of the GitHub API.
  ///
  /// Note: You can only access this API via Basic Authentication using your
  /// username and password, not tokens.
  AuthorizationsService get authorizations {
    if (_authorizations == null) {
      _authorizations = new AuthorizationsService(this);
    }
    return _authorizations;
  }

  /// Service to retrieve blog posts.
  BlogService get blog {
    if (_blog == null) {
      _blog = new BlogService(this);
    }
    return _blog;
  }

  /// Service to explore GitHub.
  ExploreService get explore {
    if (_explore == null) {
      _explore = new ExploreService(this);
    }
    return _explore;
  }

  /// Service for gist related methods of the GitHub API.
  GistsService get gists {
    if (_gists == null) {
      _gists = new GistsService(this);
    }
    return _gists;
  }

  /// Service for git data related methods of the GitHub API.
  GitService get git {
    if (_git == null) {
      _git = new GitService(this);
    }
    return _git;
  }

  /// Service for issues related methods of the GitHub API.
  IssuesService get issues {
    if (_issues == null) {
      _issues = new IssuesService(this);
    }
    return _issues;
  }

  /// Service for misc related methods of the GitHub API.
  MiscService get misc {
    if (_misc == null) {
      _misc = new MiscService(this);
    }
    return _misc;
  }

  /// Service for organization related methods of the GitHub API.
  OrganizationsService get organizations {
    if (_organizations == null) {
      _organizations = new OrganizationsService(this);
    }
    return _organizations;
  }

  /// Service for pull requests related methods of the GitHub API.
  PullRequestsService get pullRequests {
    if (_pullRequests == null) {
      _pullRequests = new PullRequestsService(this);
    }
    return _pullRequests;
  }

  /// Service for repository related methods of the GitHub API.
  RepositoriesService get repositories {
    if (_repositories == null) {
      _repositories = new RepositoriesService(this);
    }
    return _repositories;
  }

  /// Service for search related methods of the GitHub API.
  SearchService get search {
    if (_search == null) {
      _search = new SearchService(this);
    }
    return _search;
  }

  /// Service to provide a handy method to access GitHub's url shortener.
  UrlShortenerService get urlShortener {
    if (_urlShortener == null) {
      _urlShortener = new UrlShortenerService(this);
    }
    return _urlShortener;
  }

  /// Service for user related methods of the GitHub API.
  UsersService get users {
    if (_users == null) {
      _users = new UsersService(this);
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
  Future<T> getJSON<T>(String path,
      {int statusCode,
      void fail(http.Response response),
      Map<String, String> headers,
      Map<String, String> params,
      JSONConverter<T> convert,
      String preview}) async {
    if (headers == null) headers = {};

    if (preview != null) {
      headers["Accept"] = preview;
    }

    if (convert == null) {
      convert = (input) => input;
    }

    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass =
          BASE64.encode(UTF8.encode('${auth.username}:${auth.password}'));
      headers.putIfAbsent("Authorization", () => "basic $userAndPass");
    }

    var response = await request("GET", path,
        headers: headers, params: params, statusCode: statusCode, fail: fail);

    var json = JSON.decode(response.body);

    if (convert == null) {
      return json;
    }

    return convert(json);
  }

  /// Handles Post Requests that respond with JSO
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
  Future<dynamic> postJSON(String path,
      {int statusCode,
      void fail(http.Response response),
      Map<String, String> headers,
      Map<String, String> params,
      JSONConverter convert,
      String body,
      String preview}) async {
    if (headers == null) headers = {};

    if (preview != null) {
      headers["Accept"] = preview;
    }

    if (convert == null) {
      convert = (input) => input;
    }

    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass =
          BASE64.encode(UTF8.encode('${auth.username}:${auth.password}'));
      headers.putIfAbsent("Authorization", () => "basic $userAndPass");
    }

    var response = await request("POST", path,
        headers: headers,
        params: params,
        body: body,
        statusCode: statusCode,
        fail: fail);
    return convert(JSON.decode(response.body));
  }

  ///
  /// Internal method to handle status codes
  ///
  void handleStatusCode(http.Response response) {
    String message;
    List<Map<String, String>> errors;
    if (response.headers['content-type'].contains('application/json')) {
      var json = JSON.decode(response.body);
      message = json['message'];
      errors = json['errors'] as List<Map<String, String>>;
    }
    switch (response.statusCode) {
      case 404:
        throw new NotFound(this, "Requested Resource was Not Found");
        break;
      case 401:
        throw new AccessForbidden(this);
      case 400:
        if (message == "Problems parsing JSON") {
          throw new InvalidJSON(this, message);
        } else if (message == "Body should be a JSON Hash") {
          throw new InvalidJSON(this, message);
        } else
          throw new BadRequest(this);
        break;
      case 422:
        var buff = new StringBuffer();
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
        throw new ValidationFailed(this, buff.toString());
    }
    throw new UnknownError(this, message);
  }

  /// Handles Authenticated Requests in an easy to understand way.
  ///
  /// [method] is the HTTP method.
  /// [path] can either be a path like '/repos' or a full url.
  /// [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
  /// [params] are query string parameters.
  /// [body] is the body content of requests that take content.
  ///
  Future<http.Response> request(String method, String path,
      {Map<String, String> headers,
      Map<String, dynamic> params,
      String body,
      int statusCode,
      void fail(http.Response response),
      String preview}) async {
    if (headers == null) headers = {};

    if (preview != null) {
      headers["Accept"] = preview;
    }

    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass =
          BASE64.encode(UTF8.encode('${auth.username}:${auth.password}'));
      headers.putIfAbsent("Authorization", () => "basic $userAndPass");
    }

    if (method == "PUT" && body == null) {
      headers.putIfAbsent("Content-Length", () => "0");
    }

    var queryString = "";

    if (params != null) {
      queryString = buildQueryString(params);
    }

    var url = new StringBuffer();

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

    var request = new http.Request(method, Uri.parse(url.toString()));
    request.headers.addAll(headers);
    if (body != null) {
      request.body = body;
    }

    var streamedResponse = await client.send(request);

    var response = await http.Response.fromStream(streamedResponse);

    _updateRateLimit(response.headers);
    if (statusCode != null && statusCode != response.statusCode) {
      fail != null ? fail(response) : null;
      handleStatusCode(response);
      return null;
    } else
      return response;
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
