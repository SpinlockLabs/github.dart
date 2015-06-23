import "package:github/server.dart";

main() async {
  var github = createGitHubClient();
  var repos =
      await github.repositories.listUserRepositories("dart-lang").toList();
  github.dispose();
  print(repos);
}
