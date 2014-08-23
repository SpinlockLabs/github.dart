part of github.client;

/**
 * The User Model
 */
class User {
  final GitHub github;

  /**
   * User's Username
   */
  String login;

  /**
   * User ID
   */
  int id;

  /**
   * Avatar URL
   */
  @ApiName("avatar_url")
  String avatarUrl;

  /**
   * Url to this user's profile.
   */
  @ApiName("html_url")
  String url;

  /**
   * If the user is a site administrator
   */
  @ApiName("site_admin")
  bool siteAdmin;

  /**
   * User's Name
   */
  String name;

  /**
   * Name of User's Company
   */
  String company;

  /**
   * Link to User's Blog
   */
  String blog;

  /**
   * User's Location
   */
  String location;

  /**
   * User's Email
   */
  String email;

  /**
   * If this user is hirable
   */
  bool hirable;

  /**
   * The User's Biography
   */
  String bio;

  /**
   * Number of public repositories that this user has
   */
  @ApiName("public_repos")
  int publicReposCount;

  /**
   * Number of public gists that this user has
   */
  @ApiName("public_gists")
  int publicGistsCount;

  /**
   * Number of followers that this user has
   */
  @ApiName("followers")
  int followersCount;

  /**
   * Number of Users that this user follows
   */
  @ApiName("following")
  int followingCount;

  /**
   * The time this [User] was created.
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * Last time this [User] was updated.
   */
  @ApiName("updated_at")
  DateTime updatedAt;

  Map<String, dynamic> json;

  User(this.github);

  static User fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new User(github)
        ..login = input['login']
        ..id = input['id']
        ..avatarUrl = input['avatar_url']
        ..url = input['html_url']
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

  /**
   * Fetches the [User]'s repositories.
   * 
   * [limit] is the maximum number of repositories to fetch.
   */
  Future<List<Repository>> repositories({int limit: 100}) => github.userRepositories(login, limit: limit);
}

/**
 * A Users GitHub Plan
 */
class UserPlan {
  final GitHub github;

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

  UserPlan(this.github);

  static UserPlan fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new UserPlan(github)
        ..name = input['name']
        ..space = input['space']
        ..privateReposCount = input['private_repos']
        ..collaboratorsCount = input['collaborators'];
  }
}

/**
 * The Currently Authenticated User
 */
class CurrentUser extends User {
  /**
   * Number of Private Repositories
   */
  @ApiName("total_private_repos")
  int privateReposCount;

  /**
   * Number of Owned Private Repositories that the user owns
   */
  @ApiName("owned_private_repos")
  int ownedPrivateReposCount;

  /**
   * The User's Disk Usage
   */
  @ApiName("disk_usage")
  int diskUsage;

  /**
   * The User's GitHub Plan
   */
  UserPlan plan;

  CurrentUser(GitHub github) : super(github);

  static CurrentUser fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new CurrentUser(github)
        ..login = input['login']
        ..id = input['id']
        ..avatarUrl = input['avatar_url']
        ..url = input['html_url']
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
        ..json = input
        ..privateReposCount = input['total_private_repos']
        ..ownedPrivateReposCount = input['owned_private_repos']
        ..plan = UserPlan.fromJSON(github, input['plan']);
  }

  /**
   * Creates a repository based on the [request].
   */
  Future<Repository> createRepository(CreateRepositoryRequest request) {
    return github.postJSON("/users/repos", body: request.toJSON(), convert: Repository.fromJSON);
  }

  /**
   * Gets the User's Issues
   */
  Future<List<Issue>> issues() => github.getJSON("/issues").then((json) {
    return json.map((it) => Issue.fromJSON(github, it));
  });
}
