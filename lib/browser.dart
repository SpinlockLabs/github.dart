/// GitHub for the Browser
///
/// This contains a few utilities that are browser specific.

library github.browser;

import "src/common.dart";

export "src/browser/helper.dart";
export "src/common.dart";

/// Creates a GitHub Client
GitHub createGitHubClient(
    {Authentication auth, String endpoint: "https://api.github.com"}) {
  return new GitHub(auth: auth, endpoint: endpoint);
}
