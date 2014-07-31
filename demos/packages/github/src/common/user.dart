part of github.common;

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