import "package:github/server.dart";

void main() {
  initGitHub();
  
  var github = new GitHub();
  
  github.explore.trendingRepositories(language: "Dart", since: "month")
    .listen((repo) => print("${repo.title}: ${repo.description}"));
}