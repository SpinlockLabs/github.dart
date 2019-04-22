/// GitHub for the Browser
///
/// This contains a few utilities that are browser specific.

library github.browser;

import 'package:http/browser_client.dart';

import "src/common.dart";

export "src/browser/helper.dart";
export "src/common.dart";

/// Creates a GitHub Client
GitHub createGitHubClient(
    {Authentication auth, String endpoint = "https://api.github.com"}) {
  // NOTE: This library is not needed if `pkg:http` is updated to support
  // pkg:http ^0.12.0. Make sure to update the dependency if/when you remove
  // browser.dart
  return GitHub(auth: auth, client: BrowserClient(), endpoint: endpoint);
}
