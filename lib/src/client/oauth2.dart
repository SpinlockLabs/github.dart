part of github.client;

/**
 * OAuth2 Flow Helper
 */
class OAuth2Flow {
  /**
   * OAuth2 Client ID
   */
  final String clientId;
  
  /**
   * Requested Scopes
   */
  final List<String> scopes;
  
  /**
   * Redirect URI
   */
  final String redirectUri;
  
  /**
   * State
   */
  final String state;
  
  /**
   * Client Secret
   */
  final String clientSecret;
  
  /**
   * OAuth2 Base URL
   */
  final String baseUrl;
  
  OAuth2Flow(this.clientId, this.clientSecret, {String redirectUri, this.scopes: const [], this.state, this.baseUrl: "https://github.com/login/oauth"})
      : this.redirectUri = redirectUri == null ? null : _checkRedirectUri(redirectUri);
  
  static String _checkRedirectUri(String uri) {
    return uri.contains("?") ? uri.substring(0, uri.indexOf("?")) : uri;
  }
  
  /**
   * Generates an Authorization URL
   * 
   * This should be displayed to the user.
   */
  String createAuthorizeUrl() {
    return baseUrl + "/authorize" + buildQueryString({
      "client_id": clientId,
      "scopes": scopes.join(","),
      "redirect_uri": redirectUri,
      "state": state
    });
  }
  
  /**
   * Exchanges the given [code] for a token.
   */
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
      if (json['error'] != null) {
        throw json;
      }
      return new ExchangeResponse(json['access_token'], json['token_type'], json['scope'].split(","));
    });
  }
}

/**
 * Represents a response for exchanging a code for a token.
 */
class ExchangeResponse {
  final String token;
  final List<String> scopes;
  final String tokenType;
  
  ExchangeResponse(this.token, this.tokenType, this.scopes);
}