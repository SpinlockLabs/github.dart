import "package:github/server.dart";

void main() {
  initGitHub();

  var github = new GitHub();

  github.explore
      .listTrendingRepositories(language: "Dart", since: "month")
      .listen((repo) => print("${repo.title}: ${repo.description}"));
}
