/// GitHub for the Server
library github.server;

import "dart:io";

import "src/common.dart";

export "src/common.dart";
export "src/server/hooks.dart";

/// Creates a GitHub Client.
/// If [auth] is not specified, then it will be automatically configured
/// from the environment as per [findAuthenticationFromEnvironment].
GitHub createGitHubClient({
  Authentication auth,
  String endpoint = "https://api.github.com",
}) {
  if (auth == null) {
    auth = findAuthenticationFromEnvironment();
  }

  return GitHub(auth: auth, endpoint: endpoint);
}

const List<String> COMMON_GITHUB_TOKEN_ENV_KEYS = [
  "GITHUB_ADMIN_TOKEN",
  "GITHUB_DART_TOKEN",
  "GITHUB_API_TOKEN",
  "GITHUB_TOKEN",
  "HOMEBREW_GITHUB_API_TOKEN",
  "MACHINE_GITHUB_API_TOKEN"
];

/// Looks for GitHub Authentication Information in the current process environment.
///
/// Checks all the environment variables in [COMMON_GITHUB_TOKEN_ENV_KEYS] for tokens.
/// If the above fails, the GITHUB_USERNAME and GITHUB_PASSWORD keys will be checked.
Authentication findAuthenticationFromEnvironment() {
  if (Platform.isMacOS) {
    var result = Process.runSync(
        "security", const ["find-internet-password", "-g", "-s", "github.com"]);

    if (result.exitCode == 0) {
      String out = result.stdout.toString();

      String username = out.split('"acct"<blob>="')[1];
      username = username.substring(0, username.indexOf("\n"));
      username = username.substring(0, username.length - 1);
      String password = result.stderr.toString().split("password:")[1].trim();
      password = password.substring(1, password.length - 1);
      return Authentication.basic(username.trim(), password.trim());
    }
  }

  Map<String, String> env = Platform.environment;

  for (String key in COMMON_GITHUB_TOKEN_ENV_KEYS) {
    if (env[key] is String) {
      return Authentication.withToken(env[key]);
    }
  }

  if (env["GITHUB_USERNAME"] is String && env["GITHUB_PASSWORD"] is String) {
    return Authentication.basic(env["GITHUB_USERNAME"], env["GITHUB_PASSWORD"]);
  }

  return Authentication.anonymous();
}
