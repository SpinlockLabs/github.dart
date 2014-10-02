part of github.common;

/// Authentication information.
class Authentication {
  
  /// OAuth2 Token
  final String token;
  
  /// GitHub Username
  final String username;
  
  /// GitHub Password
  final String password;

  /// Anonymous Authentication Flag
  final bool isAnonymous;
  
  /// Basic Authentication Flag
  final bool isBasic;
  
  /// Token Authentication Flag
  final bool isToken;

  /// Creates an [Authentication] instance that uses the specified OAuth2 [token].
  Authentication.withToken(this.token)
      : isAnonymous = false,
        isBasic = false,
        isToken = true,
        username = null,
        password = null;

  /// Creates an [Authentication] instance that has no authentication.
  Authentication.anonymous()
      : token = null,
        isAnonymous = true,
        isBasic = false,
        isToken = false,
        username = null,
        password = null;

  /// Creates an [Authentication] instance that uses a username and password.
  Authentication.basic(this.username, this.password)
      : token = null,
        isAnonymous = false,
        isBasic = true,
        isToken = false;
}
