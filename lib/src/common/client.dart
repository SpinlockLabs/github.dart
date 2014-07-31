part of github.common;

/**
 * Main GitHub Client
 */
class GitHub {
  /**
   * Authentication Information
   */
  final Authentication auth;
  
  /**
   * API Endpoint
   */
  final String endpoint;
  
  /**
   * HTTP Fetcher
   */
  final Fetcher fetcher;

  /**
   * Creates a new [GitHub] instance.
   * 
   * [fetcher] is the HTTP Transporter to use
   * [endpoint] is the api endpoint to use
   * [auth] is the authentication information
   */
  GitHub(this.fetcher, {
    Authentication auth,
    this.endpoint: "https://api.github.com"
  }) : this.auth = auth == null ? new Authentication.anonymous() : auth {
    fetcher.github = this;
  }
  
  /**
   * Fetches the user specified by [name].
   */
  Future<User> user(String name) {
    return fetcher.fetchJSON("/users/${name}", convert: User.fromJSON);
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
    return fetcher.fetchJSON("/repos/${slug.owner}/${slug.name}", convert: Repository.fromJSON);
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
  Future<List<Repository>> userRepositories(String user, {
    String type: "owner",
    int limit: 5000,
    String sort: "full_name",
    String direction: "asc"
  }) {
    var params = {
      "per_page": limit.toString(),
      "sort": sort,
      "direction": direction
    };
    return fetcher.fetchJSON("/users/${user}/repos", params: params).then((List json) {
      return new List.from(json.map((it) => Repository.fromJSON(this, it)));
    });
  }
  
  /**
   * Fetches the organization specified by [name].
   */
  Future<Organization> organization(String name) {
    return fetcher.fetchJSON("/orgs/${name}", convert: Organization.fromJSON);
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
    fetcher.fetchJSON("/orgs/${name}/teams").then((teams) {
      for (var team in teams) {
        group.add(fetcher.fetchJSON(team['url'], convert: Team.fromJSON));
      }
    });
    return group.future;
  }
  
  /**
   * Fetches the team members of the team specified by [id].
   */
  Future<List<TeamMember>> teamMembers(int id) {
    return fetcher.fetchJSON("/teams/${id}/members").then((List json) {
      return new List.from(json.map((it) => TeamMember.fromJSON(this, it)));
    });
  }
}
