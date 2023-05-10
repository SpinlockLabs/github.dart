import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

/// Model class for a user.
@JsonSerializable()
class User {
  User({
    this.id,
    this.login,
    this.avatarUrl,
    this.htmlUrl,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hirable,
    this.bio,
    this.publicReposCount,
    this.publicGistsCount,
    this.followersCount,
    this.followingCount,
    this.createdAt,
    this.updatedAt,

    // Properties from the Timeline API
    this.eventsUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.gravatarId,
    this.nodeId,
    this.organizationsUrl,
    this.receivedEventsUrl,
    this.reposUrl,
    this.starredAt,
    this.starredUrl,
    this.subscriptionsUrl,
    this.type,
    this.url,
  });

  @JsonKey(includeToJson: false, includeFromJson: false)
  Map? json; // TODO remove

  /// User's Username
  String? login;

  /// User ID
  int? id;

  /// Avatar URL
  String? avatarUrl;

  /// Url to this user's profile.
  String? htmlUrl;

  /// If the user is a site administrator
  bool? siteAdmin;

  /// User's Name
  String? name;

  /// Name of User's Company
  String? company;

  /// Link to User's Blog
  String? blog;

  /// User's Location
  String? location;

  /// User's Email
  String? email;

  /// If this user is hirable
  bool? hirable;

  /// The User's Biography
  String? bio;

  /// Number of public repositories that this user has
  @JsonKey(name: 'public_repos')
  int? publicReposCount;

  /// Number of public gists that this user has
  @JsonKey(name: 'public_gists')
  int? publicGistsCount;

  /// Number of followers that this user has
  @JsonKey(name: 'followers')
  int? followersCount;

  /// Number of Users that this user follows
  @JsonKey(name: 'following')
  int? followingCount;

  /// The time this [User] was created.
  DateTime? createdAt;

  /// Last time this [User] was updated.
  DateTime? updatedAt;

  /// The username of the twitter account (without leading @)
  String? twitterUsername;

  // The following properties were added to support the Timeline API.

  /// Example: `https://api.github.com/users/octocat/events{/privacy}`
  String? eventsUrl;

  /// Example: `https://api.github.com/users/octocat/followers`
  String? followersUrl;

  /// Example: `https://api.github.com/users/octocat/following{/other_user}`
  String? followingUrl;

  /// Example: `https://api.github.com/users/octocat/gists{/gist_id}`
  String? gistsUrl;

  /// Example: `41d064eb2195891e12d0413f63227ea7`
  String? gravatarId;

  /// Example: `MDQ6VXNlcjE=`
  String? nodeId;

  /// Example: `https://api.github.com/users/octocat/orgs`
  String? organizationsUrl;

  /// Example: `https://api.github.com/users/octocat/received_events`
  String? receivedEventsUrl;

  /// Example: `https://api.github.com/users/octocat/repos`
  String? reposUrl;

  DateTime? starredAt;

  /// Example: `https://api.github.com/users/octocat/starred{/owner}{/repo}`
  String? starredUrl;

  /// Example: `https://api.github.com/users/octocat/subscriptions`
  String? subscriptionsUrl;

  /// Example: `User`
  String? type;

  /// Example: `https://api.github.com/users/octocat`
  String? url;

  factory User.fromJson(Map<String, dynamic> input) => _$UserFromJson(input);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

/// The response from listing collaborators on a repo.
// https://developer.github.com/v3/repos/collaborators/#response
@JsonSerializable()
class Collaborator {
  Collaborator(
    this.login,
    this.id,
    this.htmlUrl,
    this.type,
    this.siteAdmin,
    this.permissions,
  );

  String? login;
  int? id;
  String? htmlUrl;
  String? type;
  bool? siteAdmin;
  Map<String, bool>? permissions;

  factory Collaborator.fromJson(Map<String, dynamic> json) =>
      _$CollaboratorFromJson(json);
  Map<String, dynamic> toJson() => _$CollaboratorToJson(this);
}

/// The response from listing contributors on a repo.
///
/// https://developer.github.com/v3/repos/#response-if-repository-contains-content
@JsonSerializable()
class Contributor {
  Contributor({
    this.id,
    this.login,
    this.avatarUrl,
    this.htmlUrl,
    this.type,
    this.siteAdmin,
    this.contributions,
  });

  /// User's Username
  String? login;

  /// User ID
  int? id;

  /// Avatar URL
  String? avatarUrl;

  /// Url to this user's profile.
  String? htmlUrl;

  String? type;

  /// If the user is a site administrator
  bool? siteAdmin;

  /// Contributions count
  int? contributions;

  factory Contributor.fromJson(Map<String, dynamic> input) =>
      _$ContributorFromJson(input);
  Map<String, dynamic> toJson() => _$ContributorToJson(this);
}

/// The Currently Authenticated User
@JsonSerializable()
class CurrentUser extends User {
  CurrentUser();

  /// Number of Private Repositories
  @JsonKey(name: 'total_private_repos')
  int? privateReposCount;

  /// Number of Owned Private Repositories that the user owns
  @JsonKey(name: 'owned_private_repos')
  int? ownedPrivateReposCount;

  /// The User's Disk Usage
  @JsonKey(name: 'disk_usage')
  int? diskUsage;

  /// The User's GitHub Plan
  UserPlan? plan;

  factory CurrentUser.fromJson(Map<String, dynamic> input) =>
      _$CurrentUserFromJson(input);
  @override
  Map<String, dynamic> toJson() => _$CurrentUserToJson(this);
}

/// A Users GitHub Plan
@JsonSerializable()
class UserPlan {
  UserPlan();

  // Plan Name
  String? name;

  // Plan Space
  int? space;

  // Number of Private Repositories
  @JsonKey(name: 'private_repos')
  int? privateReposCount;

  // Number of Collaborators
  @JsonKey(name: 'collaborators')
  int? collaboratorsCount;

  factory UserPlan.fromJson(Map<String, dynamic> input) =>
      _$UserPlanFromJson(input);
  Map<String, dynamic> toJson() => _$UserPlanToJson(this);
}

/// Model class for a user's email address.
@JsonSerializable()
class UserEmail {
  UserEmail({
    this.email,
    this.verified,
    this.primary,
  });
  String? email;
  bool? verified;
  bool? primary;

  factory UserEmail.fromJson(Map<String, dynamic> input) =>
      _$UserEmailFromJson(input);
  Map<String, dynamic> toJson() => _$UserEmailToJson(this);
}
