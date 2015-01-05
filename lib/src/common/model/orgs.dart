part of github.common;

/// Model class for a GitHub organization.
class Organization {
  /// Organization Login
  String login;

  /// Organization ID
  int id;

  /// Url to Organization Profile
  @ApiName("html_url")
  String htmlUrl;

  /// Url to the Organization Avatar
  @ApiName("avatar_url")
  String avatarUrl;

  /// Organization Name
  String name;

  /// Organization Company
  String company;

  /// Organization Blog
  String blog;

  /// Organization Location
  String location;

  /// Organization Email
  String email;

  /// Number of Public Repositories
  @ApiName("public_repos")
  int publicReposCount;

  /// Number of Public Gists
  @ApiName("public_gists")
  int publicGistsCount;

  /// Number of Followers
  @ApiName("followers")
  int followersCount;

  /// Number of People this Organization is Following
  @ApiName("following")
  int followingCount;

  /// Time this organization was created
  @ApiName("created_at")
  DateTime createdAt;

  /// Time this organization was updated
  @ApiName("updated_at")
  DateTime updatedAt;

  static Organization fromJSON(input) {
    if (input == null) return null;

    return new Organization()
      ..login = input['login']
      ..id = input['id']
      ..htmlUrl = input['html_url']
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
      ..location = input['location'];
  }
}

/// Model class for organization membership.
class OrganizationMembership {
  String state;
  Organization organization;

  static OrganizationMembership fromJSON(input) {
    if (input == null) return null;

    return new OrganizationMembership()
      ..organization = Organization.fromJSON(input['organization'])
      ..state = input['state'];
  }
}

/// Model class for a GitHub team.
class Team {

  /// Team Name
  String name;

  /// Team ID
  int id;

  /// Team Permission
  String permission;

  /// Number of Members
  @ApiName("members_count")
  int membersCount;

  /// Number of Repositories
  @ApiName("repos_count")
  int reposCount;

  /// Organization
  Organization organization;

  static Team fromJSON(input) {
    if (input == null) return null;

    return new Team()
      ..name = input['name']
      ..id = input['id']
      ..membersCount = input['members_count']
      ..reposCount = input['repos_count']
      ..organization = Organization.fromJSON(input['organization']);
  }
}

/// Model class for the team membership state.
class TeamMembershipState {
  final String name;

  TeamMembershipState(this.name);

  bool get isPending => name == "pending";
  bool get isActive => name == "active";
  bool get isInactive => name == null;
}

/// Model class for a team member.
class TeamMember {

  /// Member Username
  String login;

  /// Member ID
  int id;

  /// Url to Member Avatar
  @ApiName("avatar_url")
  String avatarUrl;

  /// Member Type
  String type;

  /// If the member is a site administrator
  @ApiName("site_admin")
  bool siteAdmin;

  /// Profile of the Member
  @ApiName("html_url")
  String htmlUrl;

  static TeamMember fromJSON(input) {
    if (input == null) return null;

    var member = new TeamMember();
    member.login = input['login'];
    member.id = input['id'];
    member.avatarUrl = input['avatar_url'];
    member.type = input['type'];
    member.siteAdmin = input['site_admin'];
    member.htmlUrl = input['html_url'];
    return member;
  }
}

/// Model class for a team repository.
class TeamRepository extends Repository {

  /// Repository Permissions.
  TeamRepositoryPermissions permissions;

  static TeamRepository fromJSON(input) {
    if (input == null) return null;

    return new TeamRepository()
      ..name = input['name']
      ..id = input['id']
      ..fullName = input['full_name']
      ..isFork = input['fork']
      ..htmlUrl = input['html_url']
      ..description = input['description']
      ..cloneUrls = CloneUrls.fromJSON(input)
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
      ..owner = UserInformation.fromJSON(input['owner'])
      ..isPrivate = input['private']
      ..permissions = TeamRepositoryPermissions.fromJSON(input['permissions']);
  }
}

/// Model class for team repository permissions.
class TeamRepositoryPermissions {

  /// Administrative Access
  bool admin;

  /// Push Access
  bool push;

  /// Pull Access
  bool pull;

  static TeamRepositoryPermissions fromJSON(input) {
    if (input == null) return null;

    return new TeamRepositoryPermissions()
      ..admin = input['admin']
      ..push = input['push']
      ..pull = input['pull'];
  }
}
