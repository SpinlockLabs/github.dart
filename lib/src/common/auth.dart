part of github.common;

class Authentication {
  String token;
  
  Authentication.withToken(this.token);
  
  Authentication.anonymous();
}