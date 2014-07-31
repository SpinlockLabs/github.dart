part of github.common;

class User {
  GitHub github;
  String login;
  int id;
  String avatar_url;
  String url;
  String type;
  bool site_admin;
  String name;
  String company;
  String blog;
  String location;
  String email;
  bool hirable;
  String bio;
  int public_repos;
  int public_gists;
  int followers;
  int following;
  DateTime created_at;
  DateTime updated_at;
  
  User(this.github);
  
  static User fromJSON(GitHub github, input) {
    var user = new User(github);
    user.login = input['login'];
    user.id = input['id'];
    user.avatar_url = input['avatar_url'];
    user.url = input['html_url'];
    user.bio = input['bio'];
    user.name = input['name'];
    user.site_admin = input['site_admin'];
    user.company = input['company'];
    user.blog = input['blog'];
    user.location = input['location'];
    user.email = input['email'];
    user.hirable = input['hirable'];
    user.public_gists = input['public_gists'];
    user.public_repos = input['public_repos'];
    user.followers = input['followers'];
    user.following = input['following'];
    user.created_at = DateTime.parse(input['created_at']);
    user.updated_at = DateTime.parse(input['updated_at']);
    return user;
  }
  
  Future<List<Repository>> get repos => github.userRepositories(login);
}