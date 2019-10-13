part of github.common;

/// Model class for a GitHub organization.
@immutable
class Organization {
  /// Organization Login
  final String login;

  /// Organization ID
  final int id;

  /// Url to Organization Profile
  @JsonKey(name: "html_url")
  final String htmlUrl;

  /// Url to the Organization Avatar
  @JsonKey(name: "avatar_url")
  final String avatarUrl;

  /// Organization Name
  final String name;

  /// Organization Company
  final String company;

  /// Organization Blog
  final String blog;

  /// Organization Location
  final String location;

  /// Organization Email
  final String email;

  /// Number of Public Repositories
  @JsonKey(name: "public_repos")
  final int publicReposCount;

  /// Number of Public Gists
  @JsonKey(name: "public_gists")
  final int publicGistsCount;

  /// Number of Followers
  @JsonKey(name: "followers")
  final int followersCount;

  /// Number of People this Organization is Following
  @JsonKey(name: "following")
  final int followingCount;

  /// Time this organization was created
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  /// Time this organization was updated
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  const Organization._({
    @required this.avatarUrl,
    @required this.blog,
    @required this.company,
    @required this.createdAt,
    @required this.email,
    @required this.followersCount,
    @required this.followingCount,
    @required this.htmlUrl,
    @required this.id,
    @required this.location,
    @required this.login,
    @required this.name,
    @required this.publicGistsCount,
    @required this.publicReposCount,
    @required this.updatedAt,
  });

  factory Organization.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Organization._(
      login: input['login'],
      id: input['id'],
      htmlUrl: input['html_url'],
      avatarUrl: input['avatar_url'],
      name: input['name'],
      company: input['company'],
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      publicGistsCount: input['public_gists'],
      publicReposCount: input['public_repos'],
      followersCount: input['followers'],
      followingCount: input['following'],
      email: input['email'],
      blog: input['blog'],
      location: input['location'],
    );
  }
}

/// Model class for organization membership.
@immutable
class OrganizationMembership {
  final String state;
  final Organization organization;

  const OrganizationMembership._({
    @required this.state,
    @required this.organization,
  });

  factory OrganizationMembership.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return OrganizationMembership._(
      organization:
          Organization.fromJSON(input['organization'] as Map<String, dynamic>),
      state: input['state'],
    );
  }
}

/// Model class for a GitHub team.
@immutable
class Team {
  /// Team Name
  final String name;

  /// Team ID
  final int id;

  /// Team Permission
  final String permission;

  /// Number of Members
  @JsonKey(name: "members_count")
  final int membersCount;

  /// Number of Repositories
  @JsonKey(name: "repos_count")
  final int reposCount;

  /// Organization
  final Organization organization;

  const Team._({
    @required this.id,
    @required this.membersCount,
    @required this.name,
    @required this.organization,
    @required this.permission,
    @required this.reposCount,
  });

  factory Team.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Team._(
      name: input['name'],
      id: input['id'],
      membersCount: input['members_count'],
      reposCount: input['repos_count'],
      organization:
          Organization.fromJSON(input['organization'] as Map<String, dynamic>),
    );
  }
}

/// Model class for the team membership state.
@immutable
class TeamMembershipState {
  final String name;

  const TeamMembershipState(this.name);

  bool get isPending => name == "pending";
  bool get isActive => name == "active";
  bool get isInactive => name == null;
}

/// Model class for a team member.
@immutable
class TeamMember {
  /// Member Username
  final String login;

  /// Member ID
  final int id;

  /// Url to Member Avatar
  @JsonKey(name: "avatar_url")
  final String avatarUrl;

  /// Member Type
  final String type;

  /// If the member is a site administrator
  @JsonKey(name: "site_admin")
  final bool siteAdmin;

  /// Profile of the Member
  @JsonKey(name: "html_url")
  final String htmlUrl;

  const TeamMember._({
    @required this.avatarUrl,
    @required this.htmlUrl,
    @required this.id,
    @required this.login,
    @required this.siteAdmin,
    @required this.type,
  });

  factory TeamMember.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return TeamMember._(
      login: input['login'],
      id: input['id'],
      avatarUrl: input['avatar_url'],
      type: input['type'],
      siteAdmin: input['site_admin'],
      htmlUrl: input['html_url'],
    );
  }
}

/// Model class for a team repository.
@immutable
@JsonSerializable(createToJson: false)
class TeamRepository extends Repository {
  /// Repository Permissions.
  TeamRepositoryPermissions permissions;

  static TeamRepository fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    return _$TeamRepositoryFromJson(input);
  }
}

/// Model class for team repository permissions.
@immutable
@JsonSerializable(createToJson: false)
class TeamRepositoryPermissions {
  /// Administrative Access
  final bool admin;

  /// Push Access
  final bool push;

  /// Pull Access
  final bool pull;

  const TeamRepositoryPermissions(this.admin, this.push, this.pull);

  factory TeamRepositoryPermissions.fromJson(Map<String, dynamic> json) =>
      _$TeamRepositoryPermissionsFromJson(json);
}
