part of github.common;

/**
 * A GitHub Organization
 */
class Organization {
  final GitHub github;
  
  /**
   * Organization Login
   */
  String login;
  
  /**
   * Organization ID
   */
  int id;

  /**
   * Url to Organization Profile
   */
  @ApiName("html_url")
  String url;

  /**
   * Url to the Organization Avatar
   */
  @ApiName("avatar_url")
  String avatarUrl;

  /**
   * Organization Name
   */
  String name;
  
  /**
   * Organization Company
   */
  String company;
  
  /**
   * Organization Blog
   */
  String blog;
  
  /**
   * Organization Location
   */
  String location;
  
  /**
   * Organization Email
   */
  String email;

  /**
   * Number of Public Repositories
   */
  @ApiName("public_repos")
  int publicReposCount;

  /**
   * Number of Public Gists
   */
  @ApiName("public_gists")
  int publicGistsCount;

  /**
   * Number of Followers
   */
  @ApiName("followers")
  int followersCount;

  /**
   * Number of People this Organization is Following
   */
  @ApiName("following")
  int followingCount;

  /**
   * Time this organization was created
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * Time this organization was updated
   */
  @ApiName("updated_at")
  DateTime updatedAt;

  Map<String, dynamic> json;

  Organization(this.github);

  static Organization fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new Organization(github)
        ..login = input['login']
        ..id = input['id']
        ..url = input['html_url']
        ..avatarUrl = input['avatar_url']
        ..name = input['name']
        ..company = input['company']
        ..createdAt = parseDateTime(input['created_at'])
        ..updatedAt = parseDateTime(input['updated_at'])
        ..publicGistsCount = input['public_gists']
        ..publicReposCount = input['public_repos']
        ..followersCount = input['followers']
        ..followingCount = input['following']
        ..email = input['email']
        ..blog = input['blog']
        ..location = input['location']
        ..json = input;
  }

  /**
   * Gets the Organization's Teams
   */
  Stream<Team> teams() => github.teams(login);

  /**
   * Creates a Repository on this Organization
   */
  Future<TeamRepository> createRepository(CreateRepositoryRequest request) {
    return github.postJSON("/orgs/${login}/repos", body: request.toJSON(), convert: TeamRepository.fromJSON);
  }

  /**
   * Gets the Organization's Issues
   */
  Future<List<Issue>> issues() => github.getJSON("/orgs/${login}/issues").then((json) {
    return copyOf(json.map((it) => Issue.fromJSON(github, it)));
  });
}

/**
 * A GitHub Team
 */
class Team {
  final GitHub github;

  /**
   * Team Name
   */
  String name;
  
  /**
   * Team ID
   */
  int id;
  
  /**
   * Team Permission
   */
  String permission;

  /**
   * Number of Members
   */
  @ApiName("members_count")
  int membersCount;

  /**
   * Number of Repositories
   */
  @ApiName("repos_count")
  int reposCount;

  /**
   * Organization
   */
  Organization organization;

  Team(this.github);

  Map<String, dynamic> json;

  static Team fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new Team(github)
        ..name = input['name']
        ..id = input['id']
        ..membersCount = input['members_count']
        ..reposCount = input['repos_count']
        ..organization = Organization.fromJSON(github, input['organization'])
        ..json = input;
  }

  /**
   * Gets the Members of this Team
   */
  Stream<TeamMember> members() => github.teamMembers(id);
  
  Future<bool> addMember(String user) {
    return github.request("PUT", "/teams/${id}/members/${user}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  Future<bool> removeMember(String user) {
    return github.request("DELETE", "/teams/${id}/members/${user}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  Future<TeamMembershipState> checkMembershipState(String user) {
    var completer = new Completer();
    
    github.getJSON("/teams/${id}/memberships/${user}", statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 404) {
        completer.complete(new TeamMembershipState(null));
      } else {
        github._handleStatusCode(response, response.statusCode);
      }
    }, convert: (github, json) => new TeamMembershipState(json['state'])).then(completer.complete);
    
    return completer.future;
  }
  
  Stream<Repository> repositories() {
    return new PaginationHelper(github).objects("GET", "/teams/${id}/repos", Repository.fromJSON);
  }
  
  Future<bool> managesRepository(RepositorySlug slug) {
    return github.request("GET", "/teams/${id}/repos/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  Future<bool> addRepository(RepositorySlug slug) {
    return github.request("PUT", "/teams/${id}/repos/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  Future<bool> removeRepository(RepositorySlug slug) {
    return github.request("DELETE", "/teams/${id}/repos/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }
}

class TeamMembershipState {
  final String name;
  
  TeamMembershipState(this.name);
  
  bool get isPending => name == "pending";
  bool get isActive => name == "active";
  bool get isInactive => name == null;
}

class TeamMember {
  final GitHub github;

  /**
   * Member Username
   */
  String login;
  
  /**
   * Member ID
   */
  int id;

  /**
   * Url to Member Avatar
   */
  @ApiName("avatar_url")
  String avatarUrl;

  /**
   * Member Type
   */
  String type;

  /**
   * If the member is a site administrator
   */
  @ApiName("site_admin")
  bool siteAdmin;

  /**
   * Profile of the Member
   */
  @ApiName("html_url")
  String url;

  Map<String, dynamic> json;

  TeamMember(this.github);

  static TeamMember fromJSON(GitHub github, input) {
    if (input == null) return null;
    var member = new TeamMember(github);
    member.login = input['login'];
    member.id = input['id'];
    member.avatarUrl = input['avatar_url'];
    member.type = input['type'];
    member.siteAdmin = input['site_admin'];
    member.url = input['html_url'];
    return member;
  }

  /**
   * Fetches this Member as a User
   */
  Future<User> asUser() => github.user(login);
}

/**
 * A Team Repository
 */
class TeamRepository extends Repository {
  /**
   * Repository Permissions
   */
  TeamRepositoryPermissions permissions;

  TeamRepository(GitHub github) : super(github);

  static TeamRepository fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new TeamRepository(github)
        ..name = input['name']
        ..id = input['id']
        ..fullName = input['full_name']
        ..isFork = input['fork']
        ..url = input['html_url']
        ..description = input['description']
        ..cloneUrls = new CloneUrls()
        ..cloneUrls.git = input['git_url']
        ..cloneUrls.ssh = input['ssh_url']
        ..cloneUrls.https = input['clone_url']
        ..cloneUrls.svn = input['svn_url']
        ..homepage = input['homepage']
        ..size = input['size']
        ..stargazersCount = input['stargazers_count']
        ..watchersCount = input['watchers_count']
        ..language = input['language']
        ..hasIssues = input['has_issues']
        ..hasDownloads = input['has_downloads']
        ..hasWiki = input['has_wiki']
        ..defaultBranch = input['default_branch']
        ..openIssuesCount = input['open_issues_count']
        ..networkCount = input['network_count']
        ..subscribersCount = input['subscribers_count']
        ..forksCount = input['forks_count']
        ..createdAt = parseDateTime(input['created_at'])
        ..pushedAt = parseDateTime(input['pushed_at'])
        ..json = input
        ..owner = RepositoryOwner.fromJSON(input['owner'])
        ..private = input['private']
        ..permissions = TeamRepositoryPermissions.fromJSON(github, input['permissions']);
  }
}

/**
 * Team Repository Permissions
 */
class TeamRepositoryPermissions {
  final GitHub github;

  /**
   * Administrative Access
   */
  bool admin;
  
  /**
   * Push Access
   */
  bool push;
  
  /**
   * Pull Access
   */
  bool pull;

  TeamRepositoryPermissions(this.github);

  static TeamRepositoryPermissions fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new TeamRepositoryPermissions(github)
        ..admin = input['admin']
        ..push = input['push']
        ..pull = input['pull'];
  }
}

class OrganizationMembership {
  final GitHub github;
  String state;
  Organization organization;
  
  OrganizationMembership(this.github);

  static OrganizationMembership fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new OrganizationMembership(github)
        ..organization = Organization.fromJSON(github, input['organization'])
        ..state = input['state'];
  }
}
