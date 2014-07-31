part of github.common;

class Authentication {
  final String token;
  
  Authentication.withToken(this.token);
  
  Authentication.anonymous() : this.token = null;
}