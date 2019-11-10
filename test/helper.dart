import 'dart:io';
import 'package:github/github.dart';

GitHub github = _makeGitHubClient();

GitHub _makeGitHubClient() {
  GitHub g;

  if (Platform.environment.containsKey('GITHUB_TOKEN')) {
    g = GitHub(
        auth: Authentication.withToken(Platform.environment['GITHUB_TOKEN']));
  } else {
    g = GitHub();
  }

  return g;
}
