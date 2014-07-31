part of github.client;

class Authentication {
  final String token;
  final String username;
  final String password;

  final bool isAnonymous;
  final bool isBasic;
  final bool isToken;

  Authentication.withToken(this.token)
      : isAnonymous = false,
        isBasic = false,
        isToken = true,
        username = null,
        password = null;

  Authentication.anonymous()
      : token = null,
        isAnonymous = true,
        isBasic = false,
        isToken = false,
        username = null,
        password = null;

  Authentication.basic(this.username, this.password)
      : token = null,
        isAnonymous = false,
        isBasic = true,
        isToken = false;
}
