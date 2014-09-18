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
      request("GET", "/users/${name}").then((resp) => resp.statusCode == StatusCodes.OK);

  /**
   * Fetches the users specified by [names].
   * 
   * If [names] is null, it will fetch all the users.
   */
  Stream<User> users({List<String> names, int pages}) {
    if (names != null) {
      var controller = new StreamController();
      
      for (var i = 0; i < names.length; i++) {
        user(names[i]).then((user) {
          controller.add(user);
          if (i == names.length - 1) {
            controller.close();
          }
        });
      }
      
      return controller.stream;
    }
    
    return new PaginationHelper(this).objects("GET", "/users", User.fromJSON, pages: pages);
  }
  
  Future<String> shortenUrl(String url, {String code}) {
    return _shortenUrl(this, url, code: code);
  }
  
  Stream<Authorization> authorizations() {
    return new PaginationHelper(this).objects("GET", "/authorizations", Authorization.fromJSON);
  }
  
  Future<Authorization> authorization(int id) {
    return getJSON("/authorizations/${id}", statusCode: 200, convert: Authorization.fromJSON);
  }

  /**
   * Fetches the repository specified by the [slug].
   */
  Future<Repository> repository(RepositorySlug slug) {
    return getJSON("/repos/${slug.owner}/${slug.name}", convert: Repository.fromJSON, statusCode: StatusCodes.OK, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new RepositoryNotFound(this, slug.fullName);
      }
    });
  }

  /**
   * Fetches the repositories specified by [slugs].
   */
  Stream<Repository> repositories(List<RepositorySlug> slugs) {
    var controller = new StreamController();
    
    for (var i = 0; i < slugs.length; i++) {
      repository(slugs[i]).then((repo) {
        controller.add(repo);
        if (i == slugs.length - 1) {
          controller.close();      
        }
      });
    }
    
    return controller.stream;
  }
  
  
  
  Stream<Octocat> octocats({bool cors: false}) => _octocats(this, cors);
  
  Stream<Team> userTeams() {
    return new PaginationHelper(this).objects("GET", "/user/teams", Team.fromJSON);
  }
  
  Future<String> zen() => request("GET", "/zen").then((response) => response.body);
  
  Stream<TrendingRepository> trendingRepositories({String language, String since: "daily"}) =>
      _trendingRepos(this, language: language, since: since);
  
  /**
   * Fetches the repositories of the user specified by [user] in a streamed fashion.
   */
  Stream<Repository> userRepositories(String user, {String type: "owner", String sort: "full_name", String direction: "asc"}) {
    var params = {
      "type": type,
      "sort": sort,
      "direction": direction
    };
    
    return new PaginationHelper(this).objects("GET", "/users/${user}/repos", Repository.fromJSON, params: params);
  }

  /**
   * Fetches the organization specified by [name].
   */
  Future<Organization> organization(String name) {
    return getJSON("/orgs/${name}", convert: Organization.fromJSON, statusCode: StatusCodes.OK, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new OrganizationNotFound(this, name);
      }
    });
  }

  /**
   * Fetches the organizations specified by [names].
   */
  Stream<Organization> organizations(List<String> names) {
    var controller = new StreamController();
    
    for (var i = 0; i < names.length; i++) {
      organization(names[i]).then((org) {
        controller.add(org);
        if (i == names.length - 1) {
          controller.close();
        }
      });
    }
    
    return controller.stream;
  }
  
  Stream<RepositoryStatus> status(RepositorySlug slug, String sha) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/commits/${sha}/statuses", RepositoryStatus.fromJSON);
  }
  
  Future<RepositoryStatus> updateStatus(RepositorySlug slug, String sha, CreateStatus request) {
    return postJSON("/repos/${slug.fullName}/commits/${sha}/statuses", body: request.toJSON(), convert: RepositoryStatus.fromJSON);
  }
  
  Stream<IssueLabel> listLabels(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/labels", IssueLabel.fromJSON);
  }
  
  Stream<Milestone> listMilestones(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/milestones", Milestone.fromJSON);
  }

  Future<Milestone> createMilestone(RepositorySlug slug, CreateMilestone request) {
    return postJSON("/repos/${slug.fullName}/milestones", body: JSON.encode(request.toJSON()), convert: Milestone.fromJSON);
  }
  
  Future<IssueLabel> createLabel(RepositorySlug slug, String name, String color) {
    return postJSON("/repos/${slug.fullName}/labels", body: JSON.encode({ "name": name, "color": color }), convert: IssueLabel.fromJSON);
  }
  
  Future<IssueLabel> updateLabel(RepositorySlug slug, String name, String color) {
    return postJSON("/repos/${slug.fullName}/labels/${name}", body: JSON.encode({ "name": name, "color": color }), convert: IssueLabel.fromJSON);
  }
  
  Future<bool> deleteLabel(RepositorySlug slug, String name) {
    return request("DELETE", "/repos/${slug.fullName}/labels/${name}").then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }
  
  Stream<User> availableAssignees(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/assignees", User.fromJSON);
  }
  
  Future<bool> isAvailableAssignee(RepositorySlug slug, String name) {
    return request("GET", "/repos/${slug.fullName}/assignees/${name}").then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /**
   * Fetches the teams for the specified organization.
   * 
   * [name] is the organization name.
   * [limit] is the maximum number of teams to provide.
   */
  Stream<Team> teams(String name) {    
    return new PaginationHelper(this).objects("GET", "/orgs/${name}/teams", Team.fromJSON);
  }
  
  Stream<GistComment> gistComments(String id) {
    return new PaginationHelper(this).objects("GET", "/gists/${id}/comments", GistComment.fromJSON);
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
  
  Stream<ShowcaseInfo> showcases() => _showcases(this);
  
  Future<Showcase> showcase(ShowcaseInfo info) => _showcase(this, info);
  
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
   * Fetches all the public repositories on GitHub.
   * 
   * If [limit] is not null, it is used to specify the amount of repositories to fetch.
   * 
   * If [limit] is null, it will fetch ALL the repositories on GitHub.
   */
  Stream<Repository> publicRepositories({int limit: 50, DateTime since}) {
    var params = {};
    
    if (since != null) {
      params['since'] = since.toIso8601String();
    }
    
    var pages = limit != null ? (limit / 30).ceil() : null;
    
    var controller = new StreamController.broadcast();
    
    new PaginationHelper(this)
      .fetchStreamed("GET", "/repositories", pages: pages, params: params)
      .listen((http.Response response) {
      var list = JSON.decode(response.body);
      var repos = new List.from(list.map((it) => Repository.fromJSON(this, it)));
      for (var repo in repos) controller.add(repo);
    });
    
    return controller.stream.take(limit);
  }

  /**
   * Fetches the team members of a specified team.
   * 
   * [id] is the team id.
   */
  Stream<TeamMember> teamMembers(int id) {
    return new PaginationHelper(this).objects("GET", "/teams/${id}/members", TeamMember.fromJSON);
  }
  
  Stream<Commit> commits(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/commits", Commit.fromJSON);
  }
  
  Future<Commit> commit(RepositorySlug slug, String sha) {
    return getJSON("/repos/${slug.fullName}/commits/${sha}", convert: Commit.fromJSON);
  }
  
  /**
   * Gets a Repositories Releases.
   * 
   * [slug] is the repository to fetch releases from.
   * [limit] is the maximum number of releases to show.
   */
  Stream<Release> releases(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/releases", Release.fromJSON);
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
  
  Stream<Repository> forks(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/forks", Repository.fromJSON);
  }
  
  Stream<Hook> hooks(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/hooks", (gh, input) => Hook.fromJSON(gh, slug.fullName, input));
  }

  /**
   * Gets the Currently Authenticated User
   * 
   * Throws [AccessForbidden] if we are not authenticated.
   */
  Future<CurrentUser> currentUser() {
    return getJSON("/user", statusCode: StatusCodes.OK, fail: (http.Response response) {
      if (response.statusCode == StatusCodes.FORBIDDEN) {
        throw new AccessForbidden(this);
      }
    }, convert: CurrentUser.fromJSON);
  }
  
  /**
   * Fetches Gists for a User
   * 
   * [username] is the user's username.
   */
  Stream<Gist> userGists(String username) {
    return new PaginationHelper(this).objects("GET", "/users/${username}/gists", Gist.fromJSON);
  }
  
  /**
   * Fetches Issues for a Repository
   */
  Stream<Issue> issues(RepositorySlug slug, {String state: "open"}) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/issues", Issue.fromJSON, params: {"state": state});
  }
  
  /**
   * Fetches emails for the currently authenticated user
   */
  Stream<UserEmail> emails() {
    return new PaginationHelper(this).objects("GET", "/user/emails", UserEmail.fromJSON);
  }
  
  /**
   * Fetches the Gists for the currently Authenticated User.
   * 
   * If the user is not authenticated, this returns all public gists.
   */
  Stream<Gist> currentUserGists() {
    return new PaginationHelper(this).objects("GET", "/gists", Gist.fromJSON);
  }
  
  /**
   * Fetches a Gist by the specified [id].
   */
  Future<Gist> gist(String id) {
    return getJSON("/gist/${id}", statusCode: StatusCodes.OK, convert: Gist.fromJSON);
  }
  
  Stream<BlogPost> blogPosts([String url = "https://github.com/blog.atom"]) => _blogPosts(this, url);
  
  /**
   * Fetches the Currently Authenticated User's Public Gists
   */
  Stream<Gist> currentUserPublicGists() {
    return new PaginationHelper(this).objects("GET", "/gists/public", Gist.fromJSON);
  }
  
  /**
   * Fetches the Currently Authenticated User's Starred Gists
   */
  Stream<Gist> currentUserStarredGists() {
    return new PaginationHelper(this).objects("GET", "/gists/starred", Gist.fromJSON);
  }
  
  /**
   * Fetches the Stargazers for a Repository.
   * 
   * [slug] is a repository slug.
   */
  Stream<User> stargazers(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/stargazers", User.fromJSON);
  }
  
  /**
   * Fetches the repositories that [user] has starred.
   */
  Stream<Repository> starred(String user) {
    return new PaginationHelper(this).objects("GET", "/users/${user}/starred", Repository.fromJSON);
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
    return getJSON("/notification/threads/${id}", statusCode: StatusCodes.OK, convert: Notification.fromJSON);
  }
  
  /**
   * Fetches notifications for the current user. If [repository] is specified, it fetches notifications for that repository.
   */
  Stream<Notification> notifications({RepositorySlug repository, bool all: false, bool participating: false}) {
    var url = repository != null ? "/repos/${repository.fullName}/notifications" : "/notifications";
    return new PaginationHelper(this).objects("GET", url, Notification.fromJSON, params: { "all": all, "participating": participating });
  }
  
  /**
   * Fetches repository subscription information.
   */
  Future<RepositorySubscription> subscription(RepositorySlug slug) {
    return getJSON("/repos/${slug.fullName}/subscription", statusCode: StatusCodes.OK, convert: RepositorySubscription.fromJSON);
  }
  
  Stream<PublicKey> publicKeys([String user]) {
    var path = user == null ? "/user/keys" : "/users/${user}/keys";
    return new PaginationHelper(this).objects("GET", path, PublicKey.fromJSON);
  }
  
  Future<PublicKey> createPublicKey(CreatePublicKey request) {
    return postJSON("/user/keys", body: request.toJSON());
  }
  
  Stream<PublicKey> deployKeys(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/keys", PublicKey.fromJSON);
  }
  
  Future<PublicKey> createDeployKey(RepositorySlug slug, CreatePublicKey request) {
    return postJSON("/repos/${slug.fullName}/keys", body: request.toJSON());
  }
  
  /**
   * Search for Repositories using [query].
   * 
   * Since the Search Rate Limit is small, this is a best effort implementation.
   */
  Stream<Repository> searchRepositories(String query, {String sort, int pages: 2}) {
    var params = { "q": query };
    if (sort != null) {
      params["sort"] = sort;
    }
    
    var controller = new StreamController();
    
    var isFirst = true;
    
    new PaginationHelper(this).fetchStreamed("GET", "/search/repositories", params: params, pages: pages).listen((response) {
      if (response.statusCode == 403 && response.body.contains("rate limit") && isFirst) {
        throw new RateLimitHit(this);
      }
      
      isFirst = false;
      
      var input = JSON.decode(response.body);
      
      if (input['items'] == null) {
        return;
      }
      
      List<dynamic> items = input['items'];
      
      items
        .map((item) => Repository.fromJSON(this, item))
        .forEach(controller.add);
    }).onDone(controller.close);
    
    return controller.stream;
  }
  
  EventPoller pollUserEvents(String user) =>
      new EventPoller(this, "/users/${user}/events");
  
  EventPoller pollUserOrganizationEvents(String user, String organization) =>
      new EventPoller(this, "/users/${user}/events/orgs/${organization}");
  
  EventPoller pollPublicUserEvents(String user) =>
      new EventPoller(this, "/repos/${user}/events/public");
  
  EventPoller pollPublicEvents() =>
      new EventPoller(this, "/events");
  
  EventPoller pollOrganizationEvents(String name) =>
      new EventPoller(this, "/orgs/${name}/events");
  
  EventPoller pollRepositoryEvents(RepositorySlug slug) =>
      new EventPoller(this, "/repos/${slug.fullName}/events");
  
  Stream<Event> publicEvents({int pages: 2}) {
    return new PaginationHelper(this).objects("GET", "/events", Event.fromJSON, pages: pages);
  }
  
  Stream<Event> repositoryEvents(RepositorySlug slug, {int pages}) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/events", Event.fromJSON, pages: pages);
  }
  
  Stream<Event> userEvents(String username, {int pages}) {
    return new PaginationHelper(this).objects("GET", "/users/${username}/events", Event.fromJSON, pages: pages);
  }
  
  Stream<Event> organizationEvents(String name, {int pages}) {
    return new PaginationHelper(this).objects("GET", "/orgs/${name}/events", Event.fromJSON, pages: pages);
  }
  
  /**
   * Search for Users using [query].
   * 
   * Since the Search Rate Limit is small, this is a best effort implementation.
   */
  Stream<User> searchUsers(String query, {String sort, int pages: 2, int perPage: 30}) {
    var params = { "q": query };
    
    if (sort != null) {
      params["sort"] = sort;
    }
    
    params["per_page"] = perPage;
    
    var controller = new StreamController();
    
    var isFirst = true;
    
    new PaginationHelper(this).fetchStreamed("GET", "/search/users", params: params, pages: pages).listen((response) {
      if (response.statusCode == 403 && response.body.contains("rate limit") && isFirst) {
        throw new RateLimitHit(this);
      }
      
      isFirst = false;
      
      var input = JSON.decode(response.body);
      
      if (input['items'] == null) {
        return;
      }
      
      List<dynamic> items = input['items'];
      
      items
        .map((item) => User.fromJSON(this, item))
        .forEach(controller.add);
    }).onDone(controller.close);
    
    return controller.stream;
  }
  
  /**
   * Fetches the Watchers of the specified repository.
   */
  Stream<User> watchers(RepositorySlug slug) {
    return new PaginationHelper(this).objects("GET", "/repos/${slug.fullName}/subscribers", User.fromJSON);
  }
  
  /**
   * Fetches all emojis available on GitHub
   * 
   * Returns a map of the name to a url of the image.
   */
  Future<Map<String, String>> emojis() {
    return getJSON("/emojis", statusCode: StatusCodes.OK);
  }

  /**
   * Fetches repositories that the current user is watching. If [user] is specified, it will get the watched repositories for that user.
   */
  Stream<Repository> watching({String user}) {
    var path = user != null ? "/users/${user}/subscribers" : "/subscribers";
    
    return new PaginationHelper(this).objects("GET", path, Repository.fromJSON);
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
    if (headers == null) headers = {};
    
    if (convert == null) {
      convert = (github, input) => input;
    }
    
    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    return request("GET", path, headers: headers, params: params).then((response) {
      if (statusCode != null && statusCode != response.statusCode) {
        fail != null ? fail(response) : null;
        handleStatusCode(response);
        return new Future.value(null);
      }
      return convert(this, JSON.decode(response.body));
    });
  }

  /**
   * Gets a language breakdown for the specified repository.
   */
  Future<LanguageBreakdown> languages(RepositorySlug slug) =>
      getJSON("/repos/${slug.fullName}/languages", statusCode: StatusCodes.OK, convert: (github, input) => new LanguageBreakdown(input));
  
  /**
   * Gets the readme file for a repository.
   */
  Future<File> readme(RepositorySlug slug) {
    var headers = {};
    
    return getJSON("/repos/${slug.fullName}/readme", headers: headers, statusCode: StatusCodes.OK, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new NotFound(this, response.body);
      }
    }, convert: (gh, input) => File.fromJSON(gh, input, slug));
  }
  
  Future<String> octocat(String text) {
    var params = {};
    
    if (text != null) {
      params["s"] = text;
    }
    
    return request("GET", "/octocat", params: params).then((response) {
      return response.body;
    });
  }
  
  Future<String> wisdom() => octocat(null);
  
  /**
   * Fetches content in a repository at the specified [path].
   */
  Future<RepositoryContents> contents(RepositorySlug slug, String path) {
    return getJSON("/repos/${slug.fullName}/contents/${path}", convert: (github, input) {
      var contents = new RepositoryContents();
      if (input is Map) {
        contents.isFile = true;
        contents.isDirectory = false;
        contents.file = File.fromJSON(github, input);
      } else {
        contents.isFile = false;
        contents.isDirectory = true;
        contents.tree = copyOf(input.map((it) => File.fromJSON(github, it)));
      }
      return contents;
    });
  }
  
  Future<ContentCreation> createFile(RepositorySlug slug, CreateFile file) {
    return request("PUT", "/repos/${slug.fullName}/contents/${file.path}", body: file.toJSON()).then((response) {
      return ContentCreation.fromJSON(this, JSON.decode(response.body));
    });
  }
  
  /**
   * Gets the GitHub API Status.
   */
  Future<APIStatus> apiStatus() {
    return getJSON("https://status.github.com/api/status.json", statusCode: StatusCodes.OK, convert: APIStatus.fromJSON);
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
    if (headers == null) headers = {};
    
    if (convert == null) {
      convert = (github, input) => input;
    }

    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");
    
    return request("POST", path, headers: headers, params: params, body: body).then((response) {
      if (statusCode != null && statusCode != response.statusCode) {
        fail != null ? fail(response) : null;
        handleStatusCode(response);
        return new Future.value(null);
      }
      return convert(this, JSON.decode(response.body));
    });
  }
  
  /**
   * Internal method to handle status codes
   */
  void handleStatusCode(http.Response response) {
    switch (response.statusCode) {
      case 404:
        throw new NotFound(this, "Requested Resource was Not Found");
        break;
      case 401:
        throw new AccessForbidden(this);
      case 400:
        var json = response.asJSON();
        String msg = json['message'];
        if (msg == "Problems parsing JSON") {
          throw new InvalidJSON(this, msg);
        } else if (msg == "Body should be a JSON Hash") {
          throw new InvalidJSON(this, msg);
        }
        break;
      case 422:
        var json = response.asJSON();
        String msg = json['message'];
        var errors = json['errors'];
        
        var buff = new StringBuffer();
        buff.writeln();
        buff.writeln("  Message: ${msg}");
        buff.writeln("  Errors:");
        for (Map<String, String> error in errors) {
          var resource = error['resource'];
          var field = error['field'];
          var code = error['code'];
          buff
          ..writeln("    Resource: ${resource}")
          ..writeln("    Field ${field}")
          ..write("    Code: ${code}");
        }
        throw new ValidationFailed(this, buff.toString());
    }
    throw new UnknownError(this);
  }
  
  Future<PullRequest> pullRequest(RepositorySlug slug, int number) {
    return getJSON("/repos/${slug.fullName}/pulls/${number}", convert: PullRequest.fromJSON, statusCode: StatusCodes.OK);
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
    if (headers == null) headers = {};
    
    if (auth.isToken) {
      headers.putIfAbsent("Authorization", () => "token ${auth.token}");
    } else if (auth.isBasic) {
      var userAndPass = UTF8.encode("${auth.username}:${auth.password}");
      headers.putIfAbsent("Authorization", () => "basic ${CryptoUtils.bytesToBase64(userAndPass)}");
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
      url.write(path);
      url.write(queryString);
    }

    return client.request(new http.Request(url.toString(), method: method, headers: headers, body: body));
  }

  /**
   * Disposes of this GitHub Instance.
   *
   * No other methods on this instance should be called after this method is called.
   */
  void dispose() {
    // Destroy the Authentication Information
    // This is needed for security reasons.
    auth = null;

    // Closes the HTTP Client
    client.close();
  }
  
  Stream<Issue> currentUserIssues() {
    return new PaginationHelper(this).objects("GET", "/issues", Issue.fromJSON);
  }
}
