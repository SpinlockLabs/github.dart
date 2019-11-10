import 'dart:async';
import 'package:github/github.dart';

Future main() async {
  final github = GitHub();
  final repos =
      await github.repositories.listUserRepositories('dart-lang').toList();
  github.dispose();
  print(repos);
}
