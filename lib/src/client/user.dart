part of github.client;

/**
 * The User Model
 */
class User {
  final GitHub github;

  String login;

  int id;

  String avatar_url;

  @ApiName("html_url")
  String url;

  @ApiName("site_admin")
  bool siteAdmin;

  String name;

  String company;

  String blog;

  String location;

  String email;

  bool hirable;

  String bio;

  @ApiName("public_repos")
  int publicReposCount;

  @ApiName("public_gists")
  int publicGistsCount;

  @ApiName("followers")
  int followersCount;

  @ApiName("following")
  int followingCount;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("updated_at")
  DateTime updatedAt;

  Map<String, dynamic> json;

  User(this.github);

  static User fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new User(github)
        ..login = input['login']
        ..id = input['id']
        ..avatar_url = input['avatar_url']
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
        ..createdAt = parse_date(input['created_at'])
        ..updatedAt = parse_date(input['updated_at'])
        ..json = input;
  }

  Future<List<Repository>> get repositories => github.userRepositories(login);
}

class UserPlan {
  final GitHub github;

  String name;
  int space;
  @ApiName("private_repos")
  int privateReposCount;

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

class CurrentUser extends User {
  @ApiName("total_private_repos")
  int privateReposCount;

  @ApiName("owned_private_repos")
  int ownedPrivateReposCount;

  @ApiName("disk_usage")
  int diskUsage;

  UserPlan plan;

  CurrentUser(GitHub github) : super(github);

  static CurrentUser fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new CurrentUser(github)
        ..login = input['login']
        ..id = input['id']
        ..avatar_url = input['avatar_url']
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
        ..createdAt = parse_date(input['created_at'])
        ..updatedAt = parse_date(input['updated_at'])
        ..json = input
        ..privateReposCount = input['total_private_repos']
        ..ownedPrivateReposCount = input['owned_private_repos']
        ..plan = UserPlan.fromJSON(github, input['plan']);
  }

  Future<TeamRepository> createRepository(CreateRepositoryRequest request) {
    return github.postJSON("/users/repos", body: request.toJSON(), convert: Repository.fromJSON);
  }

  Future<List<Issue>> get issues => github.getJSON("/issues").then((json) {
    return json.map((it) => Issue.fromJSON(github, it));
  });
}
