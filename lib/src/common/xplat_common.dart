import 'package:github/src/common.dart';

/// Looks for GitHub Authentication information from the current environment.
///
/// If in a browser context, it will look through query string parameters first
/// and then sessionStorage.
///
/// If in a server, command line or Flutter context it will use the system environment variables.
///
/// In both contexts it delegates to [findAuthenticationInMap] to find the
/// github token or username and password.
Authentication findAuthenticationFromEnvironment() =>
    Authentication.anonymous();

/// Checks the passed in map for keys in [COMMON_GITHUB_TOKEN_ENV_KEYS].
/// The first one that exists is used as the github token to call [Authentication.withToken] with.
/// If the above fails, the GITHUB_USERNAME and GITHUB_PASSWORD keys will be checked.
/// If those keys both exist, then [Authentication.basic] will be used.
Authentication findAuthenticationInMap(Map map) {
  for (final key in COMMON_GITHUB_TOKEN_ENV_KEYS) {
    if (map.containsKey(key)) {
      return Authentication.withToken(map[key]);
    }
    if (map['GITHUB_USERNAME'] is String && map['GITHUB_PASSWORD'] is String) {
      return Authentication.basic(
          map['GITHUB_USERNAME'], map['GITHUB_PASSWORD']);
    }
  }
  return null;
}
