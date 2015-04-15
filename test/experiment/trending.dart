import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.explore
      .listTrendingRepositories(language: "Dart", since: "month")
      .listen((repo) => print("${repo.title}: ${repo.description}"));
}
