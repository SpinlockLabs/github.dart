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
    var user = new User(github);
    user.login = input['login'];
    user.id = input['id'];
    user.avatar_url = input['avatar_url'];
    user.url = input['html_url'];
    user.bio = input['bio'];
    user.name = input['name'];
    user.siteAdmin = input['site_admin'];
    user.company = input['company'];
    user.blog = input['blog'];
    user.location = input['location'];
    user.email = input['email'];
    user.hirable = input['hirable'];
    user.publicGistsCount = input['public_gists'];
    user.publicReposCount = input['public_repos'];
    user.followersCount = input['followers'];
    user.followingCount = input['following'];
    user.createdAt = parse_date(input['created_at']);
    user.updatedAt = parse_date(input['updated_at']);
    user.json = input;
    return user;
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
    var plan = new UserPlan(github);
    plan.name = input['name'];
    plan.space = input['space'];
    plan.privateReposCount = input['private_repos'];
    plan.collaboratorsCount = input['collaborators'];
    return plan;
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
    var user = new CurrentUser(github);
    user.login = input['login'];
    user.id = input['id'];
    user.avatar_url = input['avatar_url'];
    user.url = input['html_url'];
    user.bio = input['bio'];
    user.name = input['name'];
    user.siteAdmin = input['site_admin'];
    user.company = input['company'];
    user.blog = input['blog'];
    user.location = input['location'];
    user.email = input['email'];
    user.hirable = input['hirable'];
    user.publicGistsCount = input['public_gists'];
    user.publicReposCount = input['public_repos'];
    user.followersCount = input['followers'];
    user.followingCount = input['following'];
    user.createdAt = parse_date(input['created_at']);
    user.updatedAt = parse_date(input['updated_at']);
    user.json = input;
    user.privateReposCount = input['total_private_repos'];
    user.ownedPrivateReposCount = input['owned_private_repos'];
    user.plan = UserPlan.fromJSON(github, input['plan']);
    return user;
  }
  
  Future<TeamRepository> createRepository(CreateRepositoryRequest request) {
    return github.postJSON("/users/repos", body: request.toJSON(), convert: Repository.fromJSON);
  }
  
  Future<List<Issue>> get issues => github.getJSON("/issues").then((json) {
    return json.map((it) => Issue.fromJSON(github, it));
  });
}