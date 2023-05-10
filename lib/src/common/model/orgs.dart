import 'package:json_annotation/json_annotation.dart';

part 'orgs.g.dart';

/// Model class for a GitHub organization.
@JsonSerializable()
class Organization {
  Organization({
    this.login,
    this.id,
    this.htmlUrl,
    this.avatarUrl,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.publicReposCount,
    this.publicGistsCount,
    this.followersCount,
    this.followingCount,
    this.createdAt,
    this.updatedAt,
  });

  /// Organization Login
  String? login;

  /// Organization ID
  int? id;

  /// Url to Organization Profile
  @JsonKey(name: 'html_url')
  String? htmlUrl;

  /// Url to the Organization Avatar
  @JsonKey(name: 'avatar_url')
  String? avatarUrl;

  /// Organization Name
  String? name;

  /// Organization Company
  String? company;

  /// Organization Blog
  String? blog;

  /// Organization Location
  String? location;

  /// Organization Email
  String? email;

  /// Number of Public Repositories
  @JsonKey(name: 'public_repos')
  int? publicReposCount;

  /// Number of Public Gists
  @JsonKey(name: 'public_gists')
  int? publicGistsCount;

  /// Number of Followers
  @JsonKey(name: 'followers')
  int? followersCount;

  /// Number of People this Organization is Following
  @JsonKey(name: 'following')
  int? followingCount;

  /// Time this organization was created
  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  /// Time this organization was updated
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  factory Organization.fromJson(Map<String, dynamic> input) =>
      _$OrganizationFromJson(input);
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}

/// Model class for organization membership.
@JsonSerializable()
class OrganizationMembership {
  OrganizationMembership({
    this.state,
    this.organization,
  });

  String? state;
  Organization? organization;

  factory OrganizationMembership.fromJson(Map<String, dynamic> input) {
    return _$OrganizationMembershipFromJson(input);
  }
  Map<String, dynamic> toJson() => _$OrganizationMembershipToJson(this);
}

/// Model class for a GitHub team.
///
/// Different end-points populate different sets of properties.
///
/// Groups of organization members that gives permissions on specified repositories.
@JsonSerializable()
class Team {
  Team({
    this.description,
    this.htmlUrl,
    this.id,
    this.ldapDn,
    this.membersCount,
    this.membersUrl,
    this.name,
    this.nodeId,
    this.organization,
    this.parent,
    this.permission,
    this.permissions,
    this.privacy,
    this.reposCount,
    this.repositoriesUrl,
    this.slug,
    this.url,
  });

  /// Description of the team
  ///
  /// Example: `A great team.`
  String? description;

  /// Format: uri
  ///
  /// Example: `https://github.com/orgs/rails/teams/core`
  String? htmlUrl;

  /// Unique identifier of the team
  ///
  /// Example: `1`
  int? id;

  /// Distinguished Name (DN) that team maps to within LDAP environment
  ///
  /// Example: `uid=example,ou=users,dc=github,dc=com`
  String? ldapDn;

  /// Number of Members
  @JsonKey(name: 'members_count')
  int? membersCount;

  /// Example: `https://api.github.com/organizations/1/team/1/members{/member}`
  String? membersUrl;

  /// Name of the team
  ///
  /// Example: `Justice League`
  String? name;

  /// Example: `MDQ6VGVhbTE=`
  String? nodeId;

  /// Organization
  Organization? organization;

  /// Team Simple
  ///
  /// Groups of organization members that gives permissions on specified repositories.
  Team? parent;

  /// Permission that the team will have for its repositories
  ///
  /// Example: `admin`
  String? permission;

  Permissions? permissions;

  /// The level of privacy this team should have
  ///
  /// Example: `closed`
  String? privacy;

  /// Number of Repositories
  @JsonKey(name: 'repos_count')
  int? reposCount;

  /// Format: uri
  ///
  /// Example: `https://api.github.com/organizations/1/team/1/repos`
  String? repositoriesUrl;

  /// Example: `justice-league`
  String? slug;

  /// URL for the team
  ///
  /// Format: uri
  ///
  /// Example: `https://api.github.com/organizations/1/team/1`
  String? url;

  Map<String, dynamic> toJson() => _$TeamToJson(this);

  factory Team.fromJson(Map<String, dynamic> input) => _$TeamFromJson(input);
}

@JsonSerializable()
class Permissions {
  Permissions({
    this.admin,
    this.maintain,
    this.pull,
    this.push,
    this.triage,
  });

  bool? admin;
  bool? maintain;
  bool? pull;
  bool? push;
  bool? triage;

  Map<String, dynamic> toJson() => _$PermissionsToJson(this);

  factory Permissions.fromJson(Map<String, dynamic> input) =>
      _$PermissionsFromJson(input);
}

/// Model class for the team membership state.
class TeamMembershipState {
  TeamMembershipState(this.name);

  String? name;

  bool get isPending => name == 'pending';
  bool get isActive => name == 'active';
  bool get isInactive => name == null;
}

/// Model class for a team member.
@JsonSerializable()
class TeamMember {
  TeamMember(
      {this.login,
      this.id,
      this.avatarUrl,
      this.type,
      this.siteAdmin,
      this.htmlUrl});

  /// Member Username
  String? login;

  /// Member ID
  int? id;

  /// Url to Member Avatar
  @JsonKey(name: 'avatar_url')
  String? avatarUrl;

  /// Member Type
  String? type;

  /// If the member is a site administrator
  @JsonKey(name: 'site_admin')
  bool? siteAdmin;

  /// Profile of the Member
  @JsonKey(name: 'html_url')
  String? htmlUrl;

  factory TeamMember.fromJson(Map<String, dynamic> input) {
    return _$TeamMemberFromJson(input);
  }
  Map<String, dynamic> toJson() => _$TeamMemberToJson(this);
}
