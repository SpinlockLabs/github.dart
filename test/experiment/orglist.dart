import 'dart:async';
import "package:github/server.dart";

Future main() async {
  var github = createGitHubClient();
  var repos =
      await github.repositories.listUserRepositories("dart-lang").toList();
  github.dispose();
  print(repos);
}
