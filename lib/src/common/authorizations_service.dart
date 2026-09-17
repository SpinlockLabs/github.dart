import 'dart:async';

import 'package:github/src/common.dart';

/// The [AuthorizationsService] handles communication with legacy OAuth authorizations.
///
/// **Deprecated**: The OAuth Authorizations API was sunset by GitHub.
/// Use modern OAuth web application flows or GitHub Apps instead.
///
/// API docs: https://docs.github.com/en/rest/overview/resources-in-the-rest-api#oauth-authorizations-api
@Deprecated(
    'The OAuth Authorizations API has been sunset by GitHub. Use modern OAuth or GitHub Apps.')
class AuthorizationsService extends Service {
  AuthorizationsService(super.github);

  /// Lists all authorizations.
  @Deprecated('The OAuth Authorizations API has been sunset by GitHub.')
  Stream<Authorization> listAuthorizations() {
    return PaginationHelper(github)
        .objects('GET', '/authorizations', Authorization.fromJson);
  }

  /// Fetches an authorization specified by [id].
  @Deprecated('The OAuth Authorizations API has been sunset by GitHub.')
  Future<Authorization> getAuthorization(int id) =>
      github.getJSON('/authorizations/$id',
          statusCode: 200, convert: Authorization.fromJson);
}
