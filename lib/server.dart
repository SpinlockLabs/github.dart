/**
 * GitHub for the Server
 */
library github.server;

import "dart:async";
import "dart:io";
import "dart:convert";

import "common.dart";
export "common.dart";

import "http.dart" as http;

part "src/server/hooks.dart";

void initGitHub() {
  GitHub.defaultClient = () => new _IOClient();
}

/**
 * Creates a GitHub Client.
 *
 * If [auth] is not specified, then it will be automatically configured
 * from the environment as per [findAuthenticationFromEnvironment].
 */
GitHub createGitHubClient(
    {Authentication auth, String endpoint: "https://api.github.com"}) {
  if (auth == null) {
    auth = findAuthenticationFromEnvironment();
  }

  initGitHub();
  return new GitHub(auth: auth, endpoint: endpoint);
}

const List<String> COMMON_GITHUB_TOKEN_ENV_KEYS = const [
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
    try {
      var result = Process.runSync("security", const [
        "find-internet-password",
        "-g",
        "-s",
        "github.com"
      ]);

      if (result.exitCode != 0) {
        throw "Don't use keychain.";
      }
      String out = result.stdout.toString();

      String username = out.split('"acct"<blob>="')[1];
      username = username.substring(0, username.indexOf("\n"));
      username = username.substring(0, username.length - 1);
      String password = result.stderr.toString().split("password:")[1].trim();
      password = password.substring(1, password.length - 1);
      return new Authentication.basic(username.trim(), password.trim());
    } catch (e) {
    }
  }

  Map<String, String> env = Platform.environment;

  for (String key in COMMON_GITHUB_TOKEN_ENV_KEYS) {
    if (env[key] is String) {
      return new Authentication.withToken(env[key]);
    }
  }

  if (env["GITHUB_USERNAME"] is String && env["GITHUB_PASSWORD"] is String) {
    return new Authentication.basic(
      env["GITHUB_USERNAME"],
      env["GITHUB_PASSWORD"]
    );
  }

  return new Authentication.anonymous();
}

class _IOClient extends http.Client {
  final HttpClient client;

  _IOClient() : client = new HttpClient();

  @override
  Future<http.Response> request(http.Request request) {
    var completer = new Completer<http.Response>();
    client.openUrl(request.method, Uri.parse(request.url)).then((req) {
      request.headers.forEach(req.headers.set);
      // TODO (marcojakob): The DateTime.timeZoneName is currently not correctly
      // implemented: https://code.google.com/p/dart/issues/detail?id=17085
      // Once this issue is resolved, we can reenable setting this header.
      // req.headers.set("Time-Zone", timezoneName);

      if (request.body != null) {
        req.write(request.body);
      }
      return req.close();
    }).then((response) {
      response.transform(const Utf8Decoder()).join().then((value) {
        var map = {};

        response.headers.forEach((key, value) => map[key] = value.first);

        var resp = new http.Response(value, map, response.statusCode);
        completer.complete(resp);
      }).catchError(completer.completeError);
    }).catchError(completer.completeError);

    return completer.future;
  }

  @override
  void close() => client.close();
}
