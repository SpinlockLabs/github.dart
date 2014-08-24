part of github.common;

typedef http.Client ClientCreator();

/**
 * The Main GitHub Client
 * 
 * ## Example
 * 
 *      var github = new GitHub(auth: new Authentication.withToken("SomeToken"));
 *      // Use the Client
 */
class GitHub {
  /**
   * Default Client Creator
   */
  static ClientCreator defaultClient;

  /**
   * Authentication Information
   */
  Authentication auth;

  /**
   * API Endpoint
   */
  final String endpoint;

  /**
   * HTTP Client
   */
  final http.Client client;

  /**
   * Creates a new [GitHub] instance.
   * 
   * [fetcher] is the HTTP Transporter to use
   * [endpoint] is the api endpoint to use
   * [auth] is the authentication information
   */
  GitHub({Authentication auth, this.endpoint: "https://api.github.com", http.Client client})
      : this.auth = auth == null ? new Authentication.anonymous() : auth,
        this.client = client == null ? defaultClient() : client;

  /**
   * Fetches the user specified by [name].
   */
  Future<User> user(String name) =>
      getJSON("/users/${name}", convert: User.fromJSON);
  
  /**
   * Checks if a user exists.
   */
  Future<bool> userExists(String name) =>
      request("GET", "/users/${name}").then((resp) => resp.statusCode == 200);

  /**
   * Fetches the users specified by [name].
   */
  Future<List<User>> users(List<String> names) {
    var group = new FutureGroup<User>();
    names.forEach((name) {
      group.add(user(name));
    });
    return group.future;
  }

  /**
   * Fetches the repository specified by the [slug].
   */
  Future<Repository> repository(RepositorySlug slug) {
    return getJSON("/repos/${slug.owner}/${slug.name}", convert: Repository.fromJSON, statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new RepositoryNotFound(this, slug.fullName);
      }
    });
  }

  /**
   * Fetches the repositories specified by [slugs].
   */
  Future<List<Repository>> repositories(List<RepositorySlug> slugs) {
    var group = new FutureGroup<Repository>();
    slugs.forEach((repo) {
      group.add(repository(repo));
    });
    return group.future;
  }

  /**
   * Fetches the repositories of the user specified by [user].
   */
  Future<List<Repository>> userRepositories(String user, {String type: "owner", int limit, String sort: "full_name", String direction: "asc"}) {
    var params = {
      "sort": sort,
      "direction": direction
    };
    
    var pages = limit != null ? (limit / 30).ceil() : null;
    
    return new PaginationHelper(this).fetch("GET", "/users/${user}/repos", pages: pages, params: params).then((List<http.Response> responses) {
      var list = <dynamic>[];
      for (var response in responses) {
        list.addAll(JSON.decode(response.body));
      }
      return new List.from(list.map((it) => Repository.fromJSON(this, it)));
    });
  }
  
  /**
   * Fetches the repositories of the user specified by [user] in a streamed fashion.
   */
  Stream<Repository> userRepositoriesStreamed(String user, {String type: "owner", int limit, String sort: "full_name", String direction: "asc"}) {
    var params = {
      "sort": sort,
      "direction": direction
    };
    
    var pages = limit != null ? (limit / 30).ceil() : null;
    
    var controller = new StreamController.broadcast();
    
    new PaginationHelper(this).fetchStreamed("GET", "/users/${user}/repos", pages: pages, params: params).listen((http.Response response) {
      var list = JSON.decode(response.body);
      var repos = new List.from(list.map((it) => Repository.fromJSON(this, it)));
      for (var repo in repos) controller.add(repo);
    });
    
    return controller.stream;
  }

  /**
   * Fetches the organization specified by [name].
   */
  Future<Organization> organization(String name) {
    return getJSON("/orgs/${name}", convert: Organization.fromJSON, statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new OrganizationNotFound(this, name);
      }
    });
  }

  /**
   * Fetches the organizations specified by [names].
   */
  Future<List<Organization>> organizations(List<String> names) {
    var group = new FutureGroup<Organization>();
    names.forEach((name) {
      group.add(organization(name));
    });
    return group.future;
  }

  /**
   * Fetches the teams for the specified organization.
   * 
   * [name] is the organization name.
   * [limit] is the maximum number of teams to provide.
   */
  Future<List<Team>> teams(String name, [int limit]) {
    var group = new FutureGroup<Team>();
    getJSON("/orgs/${name}/teams?per_page=${limit}").then((teams) {
      for (var team in teams) {
        group.add(getJSON(team['url'], convert: Team.fromJSON, statusCode: 200, fail: (http.Response response) {
          if (response.statusCode == 404) {
            throw new TeamNotFound(this, team['id']);
          }
        }));
      }
    });
    return group.future;
  }
  
  /**
   * Renders Markdown from the [input].
   * 
   * [mode] is the markdown mode. (either 'gfm', or 'markdown')
   * [context] is the repository context. Only take into account when [mode] is 'gfm'.
   */
  Future<String> renderMarkdown(String input, {String mode: "markdown", String context}) {
    return request("POST", "/markdown", body: JSON.encode({
      "text": input,
      "mode": mode,
      "context": context
    })).then((response) {
      return response.body;
    });
  }
  
  /**
   * Gets .gitignore template names.
   */
  Future<List<String>> gitignoreTemplates() {
    return getJSON("/gitignore/templates");
  }
  
  /**
   * Gets a .gitignore template by [name].
   * 
   * All template names can be fetched using [gitignoreTemplates].
   */
  Future<GitignoreTemplate> gitignoreTemplate(String name) {
    return getJSON("/gitignore/templates/${name}", convert: GitignoreTemplate.fromJSON);
  }

  /**
   * Fetches the team members of a specified team.
   * 
   * [id] is the team id.
   */
  Future<List<TeamMember>> teamMembers(int id) {
    return getJSON("/teams/${id}/members").then((List json) {
      return new List.from(json.map((it) => TeamMember.fromJSON(this, it)));
    });
  }
  
  /**
   * Gets a Repositories Releases.
   * 
   * [slug] is the repository to fetch releases from.
   * [limit] is the maximum number of releases to show.
   */
  Future<List<Release>> releases(RepositorySlug slug, {int limit}) {
    var pages = limit != null ? (limit / 30).ceil() : null;
    
    return new PaginationHelper(this).fetch("GET", "/repos/${slug.fullName}/releases", pages: pages, params: {}).then((List<http.Response> responses) {
      var list = <dynamic>[];
      for (var response in responses) {
        list.addAll(JSON.decode(response.body));
      }
      return new List.from(list.map((it) => Release.fromJSON(this, it)));
    });
  }
  
  /**
   * Fetches a GitHub Release.
   * 
   * [slug] is the repository to fetch the release from.
   * [id] is the release id.
   */
  Future<Release> release(RepositorySlug slug, int id) {
    return getJSON("/repos/${slug.fullName}/releases/${id}", convert: Release.fromJSON);
  }
  
  /**
   * Gets API Rate Limit Information
   */
  Future<RateLimit> rateLimit() {
    return request("GET", "/").then((response) {
      return RateLimit.fromHeaders(response.headers);
    });
  }

  /**
   * Gets the Currently Authenticated User
   * 
   * Throws [AccessForbidden] if we are not authenticated.
   */
  Future<CurrentUser> currentUser() {
    return getJSON("/user", statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 403) {
        throw new AccessForbidden(this);
      }
    }, convert: CurrentUser.fromJSON);
  }
  
  /**
   * Fetches Gists for a User
   * 
   * [username] is the user's username.
   */
  Future<List<Gist>> userGists(String username) {
    return getJSON("/users/${username}/gists", statusCode: 200, convert: (GitHub github, List<dynamic> input) {
      return copyOf(input.map((it) => Gist.fromJSON(github, it)));
    });
  }
  
  /**
   * Fetches the Gists for the currently Authenticated User.
   * 
   * If the user is not authenticated, this returns all public gists.
   */
  Future<List<Gist>> currentUserGists() {
    return getJSON("/gists", statusCode: 200, convert: (GitHub github, List<dynamic> input) {
      return copyOf(input.map((it) => Gist.fromJSON(github, it)));
    });
  }
  
  /**
   * Fetches a Gist by the specified [id].
   */
  Future<Gist> gist(String id) {
    return getJSON("/gist/${id}", statusCode: 200, convert: Gist.fromJSON);
  }
  
  /**
   * Fetches the Currently Authenticated User's Public Gists
   */
  Future<List<Gist>> currentUserPublicGists() {
    return getJSON("/gists/public", statusCode: 200, convert: (GitHub github, List<dynamic> input) {
      return copyOf(input.map((it) => Gist.fromJSON(github, it)));
    });
  }
  
  /**
   * Fetches the Currently Authenticated User's Starred Gists
   */
  Future<List<Gist>> currentUserStarredGists() {
    return getJSON("/gists/starred", statusCode: 200, convert: (GitHub github, List<dynamic> input) {
      return copyOf(input.map((it) => Gist.fromJSON(github, it)));
    });
  }
  
  /**
   * Fetches the Stargazers for a Repository
   * 
   * [slug] is a repository slug.
   */
  Future<List<User>> stargazers(RepositorySlug slug) {
    return new PaginationHelper(this).fetch("GET", "/repos/${slug.fullName}/stargazers").then((responses) {
      var users = [];
      for (var response in responses) {
        var json = JSON.decode(response.body);
        users.addAll(json.map((it) => User.fromJSON(this, it)));
      }
      return users;
    });
  }
  
  /**
   * Fetches the repositories that [user] has starred.
   */
  Future<List<Repository>> starred(String user) {
    return getJSON("/users/${user}/starred", statusCode: 200, convert: (GitHub github, List<dynamic> input) {
      return copyOf(input.map((it) => Repository.fromJSON(github, it)));
    });
  }
  
  /**
   * Checks if the currently authenticated user has starred the specified repository.
   */
  Future<bool> hasStarred(RepositorySlug slug) {
    return request("GET", "/user/starred/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  /**
   * Stars the specified repository for the currently authenticated user.
   */
  Future star(RepositorySlug slug) {
    return request("PUT", "/user/starred/${slug.fullName}", headers: { "Content-Length": 0 }).then((response) {
      return null;
    });
  }
  
  /**
   * Unstars the specified repository for the currently authenticated user.
   */
  Future unstar(RepositorySlug slug) {
    return request("DELETE", "/user/starred/${slug.fullName}", headers: { "Content-Length": 0 }).then((response) {
      return null;
    });
  }
  
  /**
   * Fetches a Single Notification
   */
  Future<Notification> notification(String id) {
    return getJSON("/notification/threads/${id}", statusCode: 200, convert: Notification.fromJSON);
  }
  
  /**
   * Fetches notifications for the current user. If [repository] is specified, it fetches notifications for that repository.
   */
  Future<List<Notification>> notifications({RepositorySlug repository, bool all: false, bool participating: false}) {
    var url = repository != null ? "/repos/${repository.fullName}/notifications" : "/notifications";
    return getJSON(url, params: { "all": all, "participating": participating }, convert: (github, input) => copyOf(input.map((it) => Notification.fromJSON(github, it))));
  }
  
  /**
   * Fetches repository subscription information.
   */
  Future<RepositorySubscription> subscription(RepositorySlug slug) {
    return getJSON("/repos/${slug.fullName}/subscription", statusCode: 200, convert: RepositorySubscription.fromJSON);
  }
  
  /**
   * Fetches the Watchers of the specified repository.
   */
  Future<List<User>> watchers(RepositorySlug slug) {
    return getJSON("/repos/${slug.fullName}/subscribers", statusCode: 200, convert: (GitHub github, input) {
      return input.map((it) => User.fromJSON(github, it));
    });
  }

  /**
   * Fetches repositories that the current user is watching. If [user] is specified, it will get the watched repositories for that user.
   */
  Future<List<Repository>> watching({String user}) {
    var path = user != null ? "/users/${user}/subscribers" : "/subscribers";
    return getJSON(path, statusCode: 200, convert: (GitHub github, input) {
      return input.map((it) => Repository.fromJSON(github, it));
    });
  }
  
  /**
   * Handles Get Requests that respond with JSON
   * 
   * [path] can either be a path like '/repos' or a full url.
   * 
   * [statusCode] is the expected status code. If it is null, it is ignored. 
   * If the status code that the response returns is not the status code you provide
   * then the [fail] function will be called with the HTTP Response.
   * If you don't throw an error or break out somehow, it will go into some error checking
   * that throws exceptions when it finds a 404 or 401. If it doesn't find a general HTTP Status Code
   * for errors, it throws an Unknown Error.
   * 
   * [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
   * 
   * [params] are query string parameters.
   * 
   * [convert] is a simple function that is passed this [GitHub] instance and a JSON object.
   * The future will pass the object returned from this function to the then method.
   * The default [convert] function returns the input object.
   */
  Future<dynamic> getJSON(String path, {int statusCode, void fail(http.Response response), Map<String, String> headers, Map<String, String> params, JSONConverter convert}) {
    if (convert == null) {
      convert = (github, input) => input;
    }

    return request("GET", path, headers: headers, params: params).then((response) {
      if (statusCode != null && statusCode != response.statusCode) {
        fail != null ? fail(response) : null;
        _handleStatusCode(response, response.statusCode);
        return new Future.value(null);
      }
      return convert(this, JSON.decode(response.body));
    });
  }

  /**
   * Gets a language breakdown for the specified repository.
   */
  Future<LanguageBreakdown> languages(RepositorySlug slug) =>
      getJSON("/repos/${slug.fullName}/languages", statusCode: 200, convert: (github, input) => new LanguageBreakdown(input));
  
  /**
   * Gets the readme file for a repository.
   */
  Future<File> readme(RepositorySlug slug) {
    return getJSON("/repos/${slug.fullName}/readme", statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new NotFound(this, response.body);
      }
    }, convert: File.fromJSON);
  }
  
  /**
   * Gets the GitHub API Status.
   */
  Future<APIStatus> apiStatus() {
    return getJSON("https://status.github.com/api/status.json", statusCode: 200, convert: APIStatus.fromJSON);
  }
  
  /**
   * Handles Post Requests that respond with JSON
   * 
   * [path] can either be a path like '/repos' or a full url.
   * 
   * [statusCode] is the expected status code. If it is null, it is ignored. 
   * If the status code that the response returns is not the status code you provide
   * then the [fail] function will be called with the HTTP Response.
   * If you don't throw an error or break out somehow, it will go into some error checking
   * that throws exceptions when it finds a 404 or 401. If it doesn't find a general HTTP Status Code
   * for errors, it throws an Unknown Error.
   * 
   * [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
   * 
   * [params] are query string parameters.
   * 
   * [convert] is a simple function that is passed this [GitHub] instance and a JSON object.
   * The future will pass the object returned from this function to the then method.
   * The default [convert] function returns the input object.
   * 
   * [body] is the data to send to the server.
   */
  Future<dynamic> postJSON(String path, {int statusCode, void fail(http.Response response), Map<String, String> headers, Map<String, String> params, JSONConverter convert, body}) {
    if (convert == null) {
      convert = (github, input) => input;
    }

    return request("POST", path, headers: headers, params: params, body: body).then((response) {
      if (statusCode != null && statusCode != response.statusCode) {
        fail != null ? fail(response) : null;
        _handleStatusCode(response, response.statusCode);
        return new Future.value(null);
      }
      return convert(this, JSON.decode(response.body));
    });
  }
  
  /**
   * Internal method to handle status codes
   */
  void _handleStatusCode(http.Response response, int code) {
    switch (code) {
      case 404:
        throw new NotFound(this, "Requested Resource was Not Found");
        break;
      case 401:
        throw new AccessForbidden(this);
      default:
        throw new UnknownError(this);
    }
  }

  /**
   * Handles Authenticated Requests in an easy to understand way.
   * 
   * [method] is the HTTP method.
   * [path] can either be a path like '/repos' or a full url.
   * [headers] are HTTP Headers. If it doesn't exist, the 'Accept' and 'Authorization' headers are added.
   * [params] are query string parameters.
   * [body] is the body content of requests that take content.
   */
  Future<http.Response> request(String method, String path, {Map<String, String> headers, Map<String, dynamic> params, String body}) {
    if (headers == null) {
      headers = {};
    }

    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass = UTF8.encode("${auth.username}:${auth.password}");
      headers.putIfAbsent("Authorization", () => "basic ${CryptoUtils.bytesToBase64(userAndPass)}");
    }
    
    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    var queryString = "";

    if (params != null) {
      queryString = buildQueryString(params);
    }

    var url = new StringBuffer();

    if (path.startsWith("http")) {
      url.write(path);
      url.write(queryString);
    } else {
      url.write(endpoint);
      url.write(path);
      url.write(queryString);
    }

    return client.request(new http.Request(url.toString(), method: method, headers: headers, body: body));
  }
}

/**
 * Internal Helper for dealing with GitHub Pagination
 */
class PaginationHelper {
  final GitHub github;
  final List<http.Response> responses;
  final Completer<List<http.Response>> completer;
  
  PaginationHelper(this.github) : responses = [], completer = new Completer<List<http.Response>>();
  
  Future<List<http.Response>> fetch(String method, String path, {int pages, Map<String, String> headers, Map<String, dynamic> params, String body}) {
    Future<http.Response> actualFetch(String realPath) {
      return github.request(method, realPath, headers: headers, params: params, body: body);
    }
    
    void done() => completer.complete(responses);
    
    var count = 0;
    
    var handleResponse;
    handleResponse = (http.Response response) {
      count++;
      responses.add(response);
      
      if (!response.headers.containsKey("link")) {
        done();
        return;
      }
      
      var info = parseLinkHeader(response.headers['link']);
      
      if (!info.containsKey("next")) {
        done();
        return;
      }
      
      if (pages != null && count == pages) {
        done();
        return;
      }
      
      var nextUrl = info['next'];
      
      actualFetch(nextUrl).then(handleResponse);
    };
    
    actualFetch(path).then(handleResponse);
    
    return completer.future;
  }
  
  Stream<http.Response> fetchStreamed(String method, String path, {int pages, Map<String, String> headers, Map<String, dynamic> params, String body}) {
    var controller = new StreamController.broadcast();
    
    Future<http.Response> actualFetch(String realPath) {
      return github.request(method, realPath, headers: headers, params: params, body: body);
    }
    
    var count = 0;
    
    var handleResponse;
    handleResponse = (http.Response response) {
      count++;
      controller.add(response);
      
      if (!response.headers.containsKey("link")) {
        controller.close();
        return;
      }
      
      var info = parseLinkHeader(response.headers['link']);
      
      if (!info.containsKey("next")) {
        controller.close();
        return;
      }
      
      if (pages != null && count == pages) {
        controller.close();
        return;
      }
      
      var nextUrl = info['next'];
      
      actualFetch(nextUrl).then(handleResponse);
    };
    
    actualFetch(path).then(handleResponse);
    
    return controller.stream;
  }
}