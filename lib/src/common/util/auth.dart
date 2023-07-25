import 'dart:convert';

/// Authentication information.
class Authentication {
  /// OAuth2 Token
  final String? token;

  /// GitHub Username
  final String? username;

  /// GitHub Password
  final String? password;

  final String? bearerToken;

  // TODO: mark the pram as `String` to REQUIRE a non-null value.
  // NEXT major version
  /// Creates an [Authentication] instance that uses the specified OAuth2 [token].
  const Authentication.withToken(this.token)
      : username = null,
        password = null,
        bearerToken = null;

  /// Creates an [Authentication] instance that uses the specified
  /// [bearerToken].
  const Authentication.bearerToken(String this.bearerToken)
      : username = null,
        password = null,
        token = null;

  /// Creates an [Authentication] instance that has no authentication.
  const Authentication.anonymous()
      : token = null,
        username = null,
        password = null,
        bearerToken = null;

  // TODO: mark the `username` and `password` params as `String` to REQUIRE
  // non-null values. - NEXT major version
  /// Creates an [Authentication] instance that uses a username and password.
  const Authentication.basic(this.username, this.password)
      : token = null,
        bearerToken = null;

  /// Anonymous Authentication Flag
  bool get isAnonymous => !isBasic && !isToken && !isBearer;

  /// Basic Authentication Flag
  bool get isBasic => username != null;

  /// Token Authentication Flag
  bool get isToken => token != null;

  // This instance represents a authentication with a "Bearer" token.
  bool get isBearer => bearerToken != null;

  /// Returns a value for the `Authorization` HTTP request header or `null`
  /// if [isAnonymous] is `true`.
  String? authorizationHeaderValue() {
    if (isToken) {
      return 'token $token';
    }

    if (isBasic) {
      final userAndPass = base64Encode(utf8.encode('$username:$password'));
      return 'basic $userAndPass';
    }

    if (isBearer) {
      return 'Bearer $bearerToken';
    }

    return null;
  }
}
