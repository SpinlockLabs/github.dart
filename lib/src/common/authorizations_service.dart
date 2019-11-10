import 'dart:async';
import 'package:github/src/common.dart';
import 'package:github/src/common/util/pagination.dart';

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
    return PaginationHelper(github)
        .objects('GET', '/authorizations', (i) => Authorization.fromJson(i));
  }

  /// Fetches an authorization specified by [id].
  ///
  /// API docs: https://developer.github.com/v3/oauth_authorizations/#get-a-single-authorization
  Future<Authorization> getAuthorization(int id) =>
      github.getJSON('/authorizations/$id',
          statusCode: 200, convert: (i) => Authorization.fromJson(i));

  // TODO: Implement remaining API methods of authorizations:
  // See https://developer.github.com/v3/oauth_authorizations/
}
