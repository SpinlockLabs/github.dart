part of github.common;

class Organization {
  GitHub github;
  String login;
  int id;
  
  @ApiName("html_url")
  String url;
  
  @ApiName("avatar_url")
  String avatarUrl;
  
  String name;
  String company;
  String blog;
  String location;
  String email;
  
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
  
  Organization(this.github);
  
  static Organization fromJSON(GitHub github, input) {
    var org = new Organization(github);
    org.login = input['login'];
    org.id = input['id'];
    org.url = input['html_url'];
    org.avatarUrl = input['avatar_url'];
    org.name = input['name'];
    org.company = input['company'];
    org.createdAt = parse_date(input['created_at']);
    org.updatedAt = parse_date(input['updated_at']);
    org.publicGistsCount = input['public_gists'];
    org.publicReposCount = input['public_repos'];
    org.followersCount = input['followers'];
    org.followingCount = input['following'];
    org.email = input['email'];
    org.blog = input['blog'];
    org.location = input['location'];
    org.json = input;
    return org;
  }
}