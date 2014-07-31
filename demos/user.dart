import "package:github/client.dart";

void main() {
  var github = new GitHub(new ClientFetcher());
  
  github.user("Google").then((User user) {
    print("User: ${user.name}");
  });
  
  github.users([ "kaendfinger", "GitHub" ]).then((users) {
    users.forEach((user) {
      print("Name: ${user.name}, Location: ${user.location}, Login: ${user.login}, Site: ${user.blog}");
    });
  });
}