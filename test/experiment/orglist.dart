import 'dart:async';
import "package:github/server.dart";

Future main() async {
  final github = createGitHubClient();
  final repos =
      await github.repositories.listUserRepositories("dart-lang").toList();
  github.dispose();
  print(repos);
}
