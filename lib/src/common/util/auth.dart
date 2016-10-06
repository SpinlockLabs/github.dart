part of github.common;

/// Authentication information.
class Authentication {
  /// OAuth2 Token
  final String token;

  /// GitHub Username
  final String username;

  /// GitHub Password
  final String password;

  /// Creates an [Authentication] instance that uses the specified OAuth2 [token].
  Authentication.withToken(this.token)
      : username = null,
        password = null;

  /// Creates an [Authentication] instance that has no authentication.
  Authentication.anonymous()
      : token = null,
        username = null,
        password = null;

  /// Creates an [Authentication] instance that uses a username and password.
  Authentication.basic(this.username, this.password) : token = null;

  /// Anonymous Authentication Flag
  bool get isAnonymous => !isBasic && !isToken;

  /// Basic Authentication Flag
  bool get isBasic => username != null;

  /// Token Authentication Flag
  bool get isToken => token != null;
}
