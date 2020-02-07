import 'dart:html';
import 'package:github/src/common.dart';
import 'package:github/src/common/xplat_common.dart'
    show findAuthenticationInMap;

/// Looks for GitHub Authentication information from the browser
///
/// Checks for query strings first, then local storage using keys in [COMMON_GITHUB_TOKEN_ENV_KEYS].
/// If the above fails, the GITHUB_USERNAME and GITHUB_PASSWORD keys will be checked.
Authentication findAuthenticationFromEnvironment() {
  // search the query string parameters first
  var auth = findAuthenticationInMap(_parseQuery(window.location.href));
  auth ??= findAuthenticationInMap(window.sessionStorage);
  return auth ?? Authentication.anonymous();
}

/// Parse the query string to a parameter `Map`
Map<String, String> _parseQuery(String path) {
  final params = <String, String>{};
  if (!path.contains('?')) {
    return params;
  }
  final queryStr = path.substring(path.indexOf('?') + 1);
  queryStr.split('&').forEach((String keyValPair) {
    final keyVal = _parseKeyVal(keyValPair);
    final key = keyVal[0];
    if (key.isNotEmpty) {
      params[key] = Uri.decodeComponent(keyVal[1]);
    }
  });
  return params;
}

/// Parse a key value pair (`"key=value"`) and returns a list of `["key", "value"]`.
List<String> _parseKeyVal(String kvPair) {
  if (kvPair.isEmpty) {
    return const ['', ''];
  }
  final splitPoint = kvPair.indexOf('=');

  return (splitPoint == -1)
      ? [kvPair, '']
      : [kvPair.substring(0, splitPoint), kvPair.substring(splitPoint + 1)];
}
