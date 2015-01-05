part of github.common;

/// Model class for a user.
class User {

  /// User's Username
  String login;

  /// User ID
  int id;

  /// Avatar URL
  @ApiName("avatar_url")
  String avatarUrl;

  /// Url to this user's profile.
  @ApiName("html_url")
  String htmlUrl;

  /// If the user is a site administrator
  @ApiName("site_admin")
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
  @ApiName("public_repos")
  int publicReposCount;

  /// Number of public gists that this user has
  @ApiName("public_gists")
  int publicGistsCount;

  /// Number of followers that this user has
  @ApiName("followers")
  int followersCount;

  /// Number of Users that this user follows
  @ApiName("following")
  int followingCount;

  /// The time this [User] was created.
  @ApiName("created_at")
  DateTime createdAt;

  /// Last time this [User] was updated.
  @ApiName("updated_at")
  DateTime updatedAt;

  static User fromJSON(input) {
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
      ..updatedAt = parseDateTime(input['updated_at']);
  }
}

/// The Currently Authenticated User
class CurrentUser extends User {

  /// Number of Private Repositories
  @ApiName("total_private_repos")
  int privateReposCount;

  /// Number of Owned Private Repositories that the user owns
  @ApiName("owned_private_repos")
  int ownedPrivateReposCount;

  /// The User's Disk Usage
  @ApiName("disk_usage")
  int diskUsage;

  /// The User's GitHub Plan
  UserPlan plan;

  static CurrentUser fromJSON(input) {
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
      ..plan = UserPlan.fromJSON(input['plan']);
  }
}

/**
 * A Users GitHub Plan
 */
class UserPlan {

  /**
   * Plan Name
   */
  String name;

  /**
   * Plan Space
   */
  int space;

  /**
   * Number of Private Repositories
   */
  @ApiName("private_repos")
  int privateReposCount;

  /**
   * Number of Collaborators
   */
  @ApiName("collaborators")
  int collaboratorsCount;

  static UserPlan fromJSON(input) {
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

  static UserEmail fromJSON(input) {
    if (input == null) return null;

    return new UserEmail()
      ..email = input['email']
      ..primary = input['primary']
      ..verified = input['verified'];
  }
}
