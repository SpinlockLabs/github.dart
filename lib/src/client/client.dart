part of github.client;

typedef http.Client ClientCreator();

/**
 * Main GitHub Client
 */
class GitHub {
  static ClientCreator defaultClient = () => new http.Client();

  /**
   * Authentication Information
   */
  final Authentication auth;

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
  Future<User> user(String name) {
    return getJSON("/users/${name}", convert: User.fromJSON);
  }

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
    return getJSON("/repos/${slug.owner}/${slug.name}", convert: Repository.fromJSON);
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
  Future<List<Repository>> userRepositories(String user, {String type: "owner", int limit: 5000, String sort: "full_name", String direction: "asc"}) {
    var params = {
      "per_page": limit.toString(),
      "sort": sort,
      "direction": direction
    };
    return getJSON("/users/${user}/repos", params: params).then((List json) {
      return new List.from(json.map((it) => Repository.fromJSON(this, it)));
    });
  }

  /**
   * Fetches the organization specified by [name].
   */
  Future<Organization> organization(String name) {
    return getJSON("/orgs/${name}", convert: Organization.fromJSON);
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
   * Fetches the teams for the organization specified by [name].
   */
  Future<List<Team>> teams(String name) {
    var group = new FutureGroup<Team>();
    getJSON("/orgs/${name}/teams").then((teams) {
      for (var team in teams) {
        group.add(getJSON(team['url'], convert: Team.fromJSON));
      }
    });
    return group.future;
  }
  
  Future<String> renderMarkdown(String input, {String mode: "markdown", String context}) {
    return request("POST", "/markdown", body: JSON.encode({
      "text": input,
      "mode": mode,
      "context": context
    })).then((response) {
      return response.body;
    });
  }
  
  Future<List<String>> gitignoreTemplates() {
    return getJSON("/gitignore/templates");
  }
  
  Future<GitignoreTemplate> gitignoreTemplate(String name) {
    return getJSON("/gitignore/templates/${name}", convert: GitignoreTemplate.fromJSON);
  }

  /**
   * Fetches the team members of the team specified by [id].
   */
  Future<List<TeamMember>> teamMembers(int id) {
    return getJSON("/teams/${id}/members").then((List json) {
      return new List.from(json.map((it) => TeamMember.fromJSON(this, it)));
    });
  }
  
  Future<RateLimit> rateLimit() {
    return request("GET", "/").then((response) {
      return RateLimit.fromHeaders(response.headers);
    });
  }

  Future<CurrentUser> currentUser() {
    return getJSON("/user", convert: CurrentUser.fromJSON);
  }

  Future<dynamic> getJSON(String path, {Map<String, String> headers, Map<String, String> params, JSONConverter convert}) {
    if (convert == null) {
      convert = (github, input) => input;
    }

    return request("GET", path, headers: headers, params: params).then((response) {
      return convert(this, JSON.decode(response.body));
    });
  }

  Future<dynamic> postJSON(String path, {Map<String, String> headers, Map<String, String> params, JSONConverter convert, body}) {
    if (convert == null) {
      convert = (github, input) => input;
    }

    return request("POST", path, headers: headers, params: params, body: body).then((response) {
      return convert(this, JSON.decode(response.body));
    });
  }

  Future<http.Response> request(String method, String path, {Map<String, String> headers, Map<String, String> params, String body}) {
    if (headers == null) {
      headers = {};
    }

    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass = UTF8.encode("${auth.username}:${auth.password}");
      headers.putIfAbsent("Authorization", () => "basic ${CryptoUtils.bytesToBase64(userAndPass)}");
    }
    
    headers.putIfAbsent("User-Agent", () => "GitHub for Dart");

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

    switch (method) {
      case "GET":
        return client.get(url.toString(), headers: headers);
      case "POST":
        return client.post(url.toString(), headers: headers, body: body);
      default:
        throw new UnsupportedError("Method '${method}' not supported");
    }
  }
}
