part of github.client;

class OAuth2Flow {
  final String clientId;
  final List<String> scopes;
  final String redirectUri;
  final String state;
  final String clientSecret;
  final String baseUrl;
  
  OAuth2Flow(this.clientId, this.clientSecret, {String redirectUri, this.scopes: const [], this.state, this.baseUrl: "https://github.com/login/oauth"})
      : this.redirectUri = redirectUri == null ? null : _checkRedirectUri(redirectUri);
  
  static String _checkRedirectUri(String uri) {
    return uri.contains("?") ? uri.substring(0, uri.indexOf("?")) : uri;
  }
  
  String createAuthorizeUrl() {
    return baseUrl + "/authorize" + buildQueryString({
      "client_id": clientId,
      "scopes": scopes.join(","),
      "redirect_uri": redirectUri,
      "state": state
    });
  }
  
  Future<ExchangeResponse> exchange(String code, [String origin]) {
    var headers = {
      "Accept": "application/json"
    };
    
    if (origin != null) {
      headers['Origin'] = origin;
    }
    
    return GitHub.defaultClient().post("${baseUrl}/access_token" + buildQueryString({
      "client_id": clientId,
      "client_secret": clientSecret,
      "code": code,
      "redirect_uri": redirectUri
    }), headers: headers).then((response) {
      var json = JSON.decode(response.body);
      return new ExchangeResponse(json['access_token'], json['token_type'], json['scope'].split(","));
    });
  }
}

class ExchangeResponse {
  final String token;
  final List<String> scopes;
  final String tokenType;
  
  ExchangeResponse(this.token, this.tokenType, this.scopes);
}