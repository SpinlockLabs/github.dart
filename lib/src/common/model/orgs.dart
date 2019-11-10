import 'package:github/src/common.dart';
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
  final String login;

  /// Organization ID
  final int id;

  /// Url to Organization Profile
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  /// Url to the Organization Avatar
  @JsonKey(name: 'avatar_url')
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
  @JsonKey(name: 'public_repos')
  final int publicReposCount;

  /// Number of Public Gists
  @JsonKey(name: 'public_gists')
  final int publicGistsCount;

  /// Number of Followers
  @JsonKey(name: 'followers')
  final int followersCount;

  /// Number of People this Organization is Following
  @JsonKey(name: 'following')
  final int followingCount;

  /// Time this organization was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Time this organization was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  factory Organization.fromJson(Map<String, dynamic> input) =>
      _$OrganizationFromJson(input);
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}

/// Model class for organization membership.
@JsonSerializable(createToJson: false)
class OrganizationMembership {
  OrganizationMembership({
    this.state,
    this.organization,
  });
  final String state;
  final Organization organization;

  factory OrganizationMembership.fromJson(Map<String, dynamic> input) {
    return _$OrganizationMembershipFromJson(input);
  }
}

/// Model class for a GitHub team.
@JsonSerializable(createToJson: false)
class Team {
  Team({
    this.name,
    this.id,
    this.permission,
    this.membersCount,
    this.reposCount,
    this.organization,
  });

  /// Team Name
  final String name;

  /// Team ID
  final int id;

  /// Team Permission
  final String permission;

  /// Number of Members
  @JsonKey(name: 'members_count')
  final int membersCount;

  /// Number of Repositories
  @JsonKey(name: 'repos_count')
  final int reposCount;

  /// Organization
  final Organization organization;

  factory Team.fromJson(Map<String, dynamic> input) {
    return _$TeamFromJson(input);
  }
}

/// Model class for the team membership state.
class TeamMembershipState {
  final String name;

  TeamMembershipState(this.name);

  bool get isPending => name == 'pending';
  bool get isActive => name == 'active';
  bool get isInactive => name == null;
}

/// Model class for a team member.
@JsonSerializable(createToJson: false)
class TeamMember {
  TeamMember(
      {this.login,
      this.id,
      this.avatarUrl,
      this.type,
      this.siteAdmin,
      this.htmlUrl});

  /// Member Username
  final String login;

  /// Member ID
  final int id;

  /// Url to Member Avatar
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  /// Member Type
  final String type;

  /// If the member is a site administrator
  @JsonKey(name: 'site_admin')
  final bool siteAdmin;

  /// Profile of the Member
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  factory TeamMember.fromJson(Map<String, dynamic> input) {
    return _$TeamMemberFromJson(input);
  }
}

/// Model class for a team repository.
@JsonSerializable(createToJson: false)
class TeamRepository extends Repository {
  TeamRepository({this.permissions});

  /// Repository Permissions.
  TeamRepositoryPermissions permissions;

  factory TeamRepository.fromJson(Map<String, dynamic> input) {
    return _$TeamRepositoryFromJson(input);
  }
}

/// Model class for team repository permissions.
@JsonSerializable(createToJson: false)
class TeamRepositoryPermissions {
  TeamRepositoryPermissions(this.admin, this.push, this.pull);

  /// Administrative Access
  final bool admin;

  /// Push Access
  final bool push;

  /// Pull Access
  final bool pull;

  factory TeamRepositoryPermissions.fromJson(Map<String, dynamic> json) =>
      _$TeamRepositoryPermissionsFromJson(json);
}
