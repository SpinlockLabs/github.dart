import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:http/http.dart' as http;

/// OAuth2 Flow Helper
///
/// **Example**:
///
///      var flow = new OAuth2Flow('ClientID', 'ClientSecret');
///      var authUrl = flow.createAuthorizationURL();
///      // Display to the User and handle the redirect URI, and also get the code.
///      flow.exchange(code).then((response) {
///        var github = new GitHub(auth: new Authentication.withToken(response.token));
///        // Use the GitHub Client
///      });
///
/// Due to Cross Origin Policy, it is not possible to do this completely client side.
class OAuth2Flow {
  /// OAuth2 Client ID
  final String clientId;

  /// Requested Scopes
  final List<String> scopes;

  /// Redirect URI
  final String redirectUri;

  /// State
  final String state;

  /// Client Secret
  final String clientSecret;

  /// OAuth2 Base URL
  final String baseUrl;

  GitHub github;

  OAuth2Flow(this.clientId, this.clientSecret,
      {String redirectUri,
      this.scopes = const [],
      this.state,
      this.github,
      this.baseUrl = 'https://github.com/login/oauth'})
      : redirectUri =
            redirectUri == null ? null : _checkRedirectUri(redirectUri);

  static String _checkRedirectUri(String uri) {
    return uri.contains('?') ? uri.substring(0, uri.indexOf('?')) : uri;
  }

  /// Generates an Authorization URL
  ///
  /// This should be displayed to the user.
  String createAuthorizeUrl() {
    return baseUrl +
        '/authorize' +
        buildQueryString({
          'client_id': clientId,
          'scope': scopes.join(','),
          'redirect_uri': redirectUri,
          'state': state
        });
  }

  /// Exchanges the given [code] for a token.
  Future<ExchangeResponse> exchange(String code, [String origin]) {
    final headers = <String, String>{
      'Accept': 'application/json',
      'content-type': 'application/json'
    };

    if (origin != null) {
      headers['Origin'] = origin;
    }

    final body = GitHubJson.encode(<String, dynamic>{
      'client_id': clientId,
      'client_secret': clientSecret,
      'code': code,
      'redirect_uri': redirectUri
    });

    return (github == null ? http.Client() : github.client)
        .post('$baseUrl/access_token', body: body, headers: headers)
        .then((response) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['error'] != null) {
        throw Exception(json['error']);
      }
      return ExchangeResponse(json['access_token'], json['token_type'],
          (json['scope'] as String).split(','));
    });
  }
}

/// Represents a response for exchanging a code for a token.
class ExchangeResponse {
  final String token;
  final List<String> scopes;
  final String tokenType;

  ExchangeResponse(this.token, this.tokenType, this.scopes);
}
