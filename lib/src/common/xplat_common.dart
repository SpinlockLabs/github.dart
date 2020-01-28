import 'package:github/src/common.dart';

Authentication findAuthenticationFromEnvironment() =>
    Authentication.anonymous();

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
