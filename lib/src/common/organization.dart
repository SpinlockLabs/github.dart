part of github.common;

class Organization {
  GitHub github;
  String login;
  int id;
  String url;
  String avatarUrl;
  String name;
  String company;
  String blog;
  String location;
  String email;
  int publicReposCount;
  int publicGistsCount;
  int followersCount;
  int followingCount;
  DateTime createdAt;
  DateTime updatedAt;
  
  Organization(this.github);
  
  static Organization fromJSON(GitHub github, input) {
    var org = new Organization(github);
    org.login = input['login'];
    org.id = input['id'];
    org.url = input['html_url'];
    org.avatarUrl = input['avatar_url'];
    org.name = input['name'];
    org.company = input['company'];
    org.createdAt = _parse_date(input['created_at']);
    org.updatedAt = _parse_date(input['updated_at']);
    org.publicGistsCount = input['public_gists'];
    org.publicReposCount = input['public_repos'];
    org.followersCount = input['followers'];
    org.followingCount = input['following'];
    org.email = input['email'];
    org.blog = input['blog'];
    org.location = input['location'];
    return org;
  }
}