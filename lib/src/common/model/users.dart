part of github.common;

/// Model class for a user.
class User {
  Map json;

  /// User's Username
  String login;

  /// User ID
  int id;

  /// Avatar URL
  @JsonKey(name: "avatar_url")
  String avatarUrl;

  /// Url to this user's profile.
  @JsonKey(name: "html_url")
  String htmlUrl;

  /// If the user is a site administrator
  @JsonKey(name: "site_admin")
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
  @JsonKey(name: "public_repos")
  int publicReposCount;

  /// Number of public gists that this user has
  @JsonKey(name: "public_gists")
  int publicGistsCount;

  /// Number of followers that this user has
  @JsonKey(name: "followers")
  int followersCount;

  /// Number of Users that this user follows
  @JsonKey(name: "following")
  int followingCount;

  /// The time this [User] was created.
  @JsonKey(name: "created_at")
  DateTime createdAt;

  /// Last time this [User] was updated.
  @JsonKey(name: "updated_at")
  DateTime updatedAt;

  static User fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    if (input['avatar_url'] == null) {
      print(input);
      return null;
    }

    return new User()
      ..login = input['login']
      ..id = input['id']
      ..avatarUrl = input['avatar_url']
      ..htmlUrl = input['html_url']
      ..bio = input['bio']
      ..name = input['name']
      ..siteAdmin = input['site_admin']
      ..company = input['company']
      ..blog = input['blog']
      ..location = input['location']
      ..email = input['email']
      ..hirable = input['hirable']
      ..publicGistsCount = input['public_gists']
      ..publicReposCount = input['public_repos']
      ..followersCount = input['followers']
      ..followingCount = input['following']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..json = input;
  }
}

/// The Currently Authenticated User
class CurrentUser extends User {
  /// Number of Private Repositories
  @JsonKey(name: "total_private_repos")
  int privateReposCount;

  /// Number of Owned Private Repositories that the user owns
  @JsonKey(name: "owned_private_repos")
  int ownedPrivateReposCount;

  /// The User's Disk Usage
  @JsonKey(name: "disk_usage")
  int diskUsage;

  /// The User's GitHub Plan
  UserPlan plan;

  static CurrentUser fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new CurrentUser()
      ..login = input['login']
      ..id = input['id']
      ..avatarUrl = input['avatar_url']
      ..htmlUrl = input['html_url']
      ..bio = input['bio']
      ..name = input['name']
      ..siteAdmin = input['site_admin']
      ..company = input['company']
      ..blog = input['blog']
      ..location = input['location']
      ..email = input['email']
      ..hirable = input['hirable']
      ..publicGistsCount = input['public_gists']
      ..publicReposCount = input['public_repos']
      ..followersCount = input['followers']
      ..followingCount = input['following']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..privateReposCount = input['total_private_repos']
      ..ownedPrivateReposCount = input['owned_private_repos']
      ..plan = UserPlan.fromJSON(input['plan'] as Map<String, dynamic>)
      ..json = input;
  }
}

/// A Users GitHub Plan
class UserPlan {
  // Plan Name
  String name;

  // Plan Space
  int space;

  // Number of Private Repositories
  @JsonKey(name: "private_repos")
  int privateReposCount;

  // Number of Collaborators
  @JsonKey(name: "collaborators")
  int collaboratorsCount;

  static UserPlan fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    return new UserPlan()
      ..name = input['name']
      ..space = input['space']
      ..privateReposCount = input['private_repos']
      ..collaboratorsCount = input['collaborators'];
  }
}

/// Model class for a user's email address.
class UserEmail {
  String email;
  bool verified;
  bool primary;

  static UserEmail fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new UserEmail()
      ..email = input['email']
      ..primary = input['primary']
      ..verified = input['verified'];
  }
}
