/**
 * GitHub for the Browser
 *
 * This contains a few utilities that are browser specific.
 * See [GitHubBrowserHelper] for more information.
 */
library github.browser;

import 'dart:html' hide Client;

import 'package:http/http.dart';

import "common.dart";

export "common.dart";

part "src/browser/helper.dart";

void initGitHub() {
  GitHub.defaultClient = () => new Client();
}

/**
 * Creates a GitHub Client
 */
GitHub createGitHubClient(
    {Authentication auth, String endpoint: "https://api.github.com"}) {
  initGitHub();
  return new GitHub(auth: auth, endpoint: endpoint);
}
