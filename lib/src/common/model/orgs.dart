import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orgs.g.dart';

/// Model class for a GitHub organization.
@JsonSerializable(createToJson: false)
class Organization {
  Organization();

  /// Organization Login
  String login;

  /// Organization ID
  int id;

  /// Url to Organization Profile
  @JsonKey(name: 'html_url')
  String htmlUrl;

  /// Url to the Organization Avatar
  @JsonKey(name: 'avatar_url')
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
  @JsonKey(name: 'public_repos')
  int publicReposCount;

  /// Number of Public Gists
  @JsonKey(name: 'public_gists')
  int publicGistsCount;

  /// Number of Followers
  @JsonKey(name: 'followers')
  int followersCount;

  /// Number of People this Organization is Following
  @JsonKey(name: 'following')
  int followingCount;

  /// Time this organization was created
  @JsonKey(name: 'created_at')
  DateTime createdAt;

  /// Time this organization was updated
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;

  factory Organization.fromJson(Map<String, dynamic> input) {
    return _$OrganizationFromJson(input);
  }
}

/// Model class for organization membership.
class OrganizationMembership {
  String state;
  Organization organization;

  static OrganizationMembership fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return OrganizationMembership()
      ..organization =
          Organization.fromJson(input['organization'] as Map<String, dynamic>)
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
  @JsonKey(name: 'members_count')
  int membersCount;

  /// Number of Repositories
  @JsonKey(name: 'repos_count')
  int reposCount;

  /// Organization
  Organization organization;

  static Team fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Team()
      ..name = input['name']
      ..id = input['id']
      ..membersCount = input['members_count']
      ..reposCount = input['repos_count']
      ..organization =
          Organization.fromJson(input['organization'] as Map<String, dynamic>);
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
class TeamMember {
  /// Member Username
  String login;

  /// Member ID
  int id;

  /// Url to Member Avatar
  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  /// Member Type
  String type;

  /// If the member is a site administrator
  @JsonKey(name: 'site_admin')
  bool siteAdmin;

  /// Profile of the Member
  @JsonKey(name: 'html_url')
  String htmlUrl;

  static TeamMember fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    final member = TeamMember();
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
@JsonSerializable(createToJson: false)
class TeamRepositoryPermissions {
  /// Administrative Access
  final bool admin;

  /// Push Access
  final bool push;

  /// Pull Access
  final bool pull;

  TeamRepositoryPermissions(this.admin, this.push, this.pull);

  factory TeamRepositoryPermissions.fromJson(Map<String, dynamic> json) =>
      _$TeamRepositoryPermissionsFromJson(json);
}
