part of github.browser;

class OAuth2Flow {
  final String clientId;
  final List<String> scopes;
  final String redirectUri;
  final String state;
  final String clientSecret;
  final String baseUrl;
  
  OAuth2Flow(this.clientId, this.clientSecret, {this.redirectUri, this.scopes: const [], this.state, this.baseUrl: "https://github.com/login/oauth"});
  
  String createAuthorizeUrl() {
    return baseUrl + "/authorize" + buildQueryString({
      "client_id": clientId,
      "scopes": scopes.join(","),
      "redirect_uri": redirectUri,
      "state": state
    });
  }
  
  Future<ExchangeResponse> exchange(String code) {
    return GitHub.defaultClient().post("${baseUrl}/access_token", params: {
      "client_id": clientId,
      "client_secret": clientSecret,
      "code": code,
      "redirect_uri": redirectUri
    }).then((response) {
      var resp = Uri.decodeQueryComponent(response.body);
      return new ExchangeResponse(resp['access_token'], resp['token_type'], resp['scope'].split(","));
    });
  }
}

class ExchangeResponse {
  final String token;
  final List<String> scopes;
  final String tokenType;
  
  ExchangeResponse(this.token, this.tokenType, this.scopes);
}