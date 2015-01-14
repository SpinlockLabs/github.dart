part of github.common;

/// The [AuthorizationsService] handles communication with authorizations related methods
/// of the GitHub API.
///
/// Note: You can only access this API via Basic Authentication using your
/// username and password, not tokens.
///
/// API docs: https://developer.github.com/v3/oauth_authorizations/
class AuthorizationsService extends Service {
  AuthorizationsService(GitHub github) : super(github);

  /// Lists all authorizations.
  ///
  /// API docs: https://developer.github.com/v3/oauth_authorizations/#list-your-authorizations
  Stream<Authorization> listAuthorizations() {
    return new PaginationHelper(_github).objects(
        "GET", "/authorizations", Authorization.fromJSON);
  }

  /// Fetches an authorization specified by [name].
  ///
  /// API docs: https://developer.github.com/v3/oauth_authorizations/#get-a-single-authorization
  Future<Authorization> getAuthorization(int id) {
    return _github.getJSON("/authorizations/${id}",
        statusCode: 200, convert: Authorization.fromJSON);
  }

  // TODO: Implement remaining API methods of authorizations:
  // See https://developer.github.com/v3/oauth_authorizations/
}
