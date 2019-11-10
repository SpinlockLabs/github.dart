import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

/// Model class for a user.
@JsonSerializable(fieldRename: FieldRename.snake)
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
  });

  @JsonKey(ignore: true)
  Map json; // TODO remove

  /// User's Username
  String login;

  /// User ID
  int id;

  /// Avatar URL
  String avatarUrl;

  /// Url to this user's profile.
  String htmlUrl;

  /// If the user is a site administrator
  bool siteAdmin;

  /// User's Name
  String name;

  /// Name of User's Company
  String company;

  /// Link to User's Blog
  String blog;

  /// User's Location
  String location;

  /// User's Email
  String email;

  /// If this user is hirable
  bool hirable;

  /// The User's Biography
  String bio;

  /// Number of public repositories that this user has
  @JsonKey(name: 'public_repos')
  int publicReposCount;

  /// Number of public gists that this user has
  @JsonKey(name: 'public_gists')
  int publicGistsCount;

  /// Number of followers that this user has
  @JsonKey(name: 'followers')
  int followersCount;

  /// Number of Users that this user follows
  @JsonKey(name: 'following')
  int followingCount;

  /// The time this [User] was created.
  DateTime createdAt;

  /// Last time this [User] was updated.
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> input) => _$UserFromJson(input);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

/// The response from listing collaborators on a repo.
// https://developer.github.com/v3/repos/collaborators/#response
@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class Collaborator {
  final String login;
  final int id;
  final String htmlUrl;
  final String type;
  final bool siteAdmin;
  final Map<String, bool> permissions;

  Collaborator(
    this.login,
    this.id,
    this.htmlUrl,
    this.type,
    this.siteAdmin,
    this.permissions,
  );

  factory Collaborator.fromJson(Map<String, dynamic> json) =>
      _$CollaboratorFromJson(json);
}

/// The Currently Authenticated User
@JsonSerializable(fieldRename: FieldRename.snake)
class CurrentUser extends User {
  CurrentUser();

  /// Number of Private Repositories
  @JsonKey(name: 'total_private_repos')
  int privateReposCount;

  /// Number of Owned Private Repositories that the user owns
  @JsonKey(name: 'owned_private_repos')
  int ownedPrivateReposCount;

  /// The User's Disk Usage
  @JsonKey(name: 'disk_usage')
  int diskUsage;

  /// The User's GitHub Plan
  UserPlan plan;

  factory CurrentUser.fromJson(Map<String, dynamic> input) =>
      _$CurrentUserFromJson(input);
  @override
  Map<String, dynamic> toJson() => _$CurrentUserToJson(this);
}

/// A Users GitHub Plan
@JsonSerializable(fieldRename: FieldRename.snake)
class UserPlan {
  UserPlan();

  // Plan Name
  String name;

  // Plan Space
  int space;

  // Number of Private Repositories
  @JsonKey(name: 'private_repos')
  int privateReposCount;

  // Number of Collaborators
  @JsonKey(name: 'collaborators')
  int collaboratorsCount;

  factory UserPlan.fromJson(Map<String, dynamic> input) =>
      _$UserPlanFromJson(input);
  Map<String, dynamic> toJson() => _$UserPlanToJson(this);
}

/// Model class for a user's email address.
@JsonSerializable(fieldRename: FieldRename.snake)
class UserEmail {
  UserEmail({
    this.email,
    this.verified,
    this.primary,
  });
  String email;
  bool verified;
  bool primary;

  factory UserEmail.fromJson(Map<String, dynamic> input) =>
      _$UserEmailFromJson(input);
  Map<String, dynamic> toJson() => _$UserEmailToJson(this);
}
