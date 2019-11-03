import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:github/src/common/util/pagination.dart';
import 'package:github/src/util.dart';
import 'package:http/http.dart' as http;

/// The [UsersService] handles communication with user related methods of the
/// GitHub API.
///
/// API docs: https://developer.github.com/v3/users/
class UsersService extends Service {
  UsersService(GitHub github) : super(github);

  /// Fetches the user specified by [name].
  ///
  /// API docs: https://developer.github.com/v3/users/#get-a-single-user
  Future<User> getUser(String name) =>
      github.getJSON('/users/$name', convert: (i) => User.fromJson(i));

  /// Updates the Current User.
  ///
  /// API docs: https://developer.github.com/v3/users/#update-the-authenticated-user
  Future<CurrentUser> editCurrentUser(
      {String name,
      String email,
      String blog,
      String company,
      String location,
      bool hireable,
      String bio}) {
    final map = createNonNullMap(<String, dynamic>{
      'name': name,
      'email': email,
      'blog': blog,
      'company': company,
      'location': location,
      'hireable': hireable,
      'bio': bio
    });

    return github.postJSON(
      '/user',
      body: jsonEncode(map),
      statusCode: 200,
      convert: (i) => CurrentUser.fromJson(i),
    );
  }

  /// Fetches a list of users specified by [names].
  Stream<User> getUsers(List<String> names, {int pages}) async* {
    for (final name in names) {
      final user = await getUser(name);
      yield user;
    }
  }

  /// Fetches the currently authenticated user.
  ///
  /// Throws [AccessForbidden] if we are not authenticated.
  ///
  /// API docs: https://developer.github.com/v3/users/#get-the-authenticated-user
  Future<CurrentUser> getCurrentUser() => github.getJSON('/user',
      statusCode: StatusCodes.OK,
      fail: (http.Response response) {
        if (response.statusCode == StatusCodes.FORBIDDEN) {
          throw AccessForbidden(github);
        }
      },
      convert: (i) => CurrentUser.fromJson(i));

  /// Checks if a user exists.
  Future<bool> isUser(String name) => github
      .request('GET', '/users/$name')
      .then((resp) => resp.statusCode == StatusCodes.OK);

  // TODO: Implement editUser: https://developer.github.com/v3/users/#update-the-authenticated-user

  /// Lists all users.
  ///
  /// API docs: https://developer.github.com/v3/users/#get-all-users
  Stream<User> listUsers({int pages, int since}) =>
      PaginationHelper(github).objects('GET', '/users', (i) => User.fromJson(i),
          pages: pages, params: {'since': since});

  /// Lists all email addresses for the currently authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/users/emails/#list-email-addresses-for-a-user
  Stream<UserEmail> listEmails() => PaginationHelper(github)
      .objects('GET', '/user/emails', (i) => UserEmail.fromJson(i));

  /// Add Emails
  ///
  /// API docs: https://developer.github.com/v3/users/emails/#add-email-addresses
  Stream<UserEmail> addEmails(List<String> emails) => PaginationHelper(github)
      .objects('POST', '/user/emails', (i) => UserEmail.fromJson(i),
          statusCode: 201, body: jsonEncode(emails));

  /// Delete Emails
  ///
  /// API docs: https://developer.github.com/v3/users/emails/#delete-email-addresses
  Future<bool> deleteEmails(List<String> emails) => github
      .request('DELETE', '/user/emails',
          body: jsonEncode(emails), statusCode: 204)
      .then((x) => x.statusCode == 204);

  /// List user followers.
  ///
  /// API docs: https://developer.github.com/v3/users/followers/#list-followers-of-a-user
  Stream<User> listUserFollowers(String user) => PaginationHelper(github)
      .objects('GET', '/users/$user/followers', (i) => User.fromJson(i),
          statusCode: 200);

  /// Check if the current user is following the specified user.
  Future<bool> isFollowingUser(String user) =>
      github.request('GET', '/user/following/$user').then((response) {
        return response.statusCode == 204;
      });

  /// Check if the specified user is following target.
  Future<bool> isUserFollowing(String user, String target) =>
      github.request('GET', '/users/$user/following/$target').then((x) {
        return x.statusCode == 204;
      });

  /// Follows a user.
  Future<bool> followUser(String user) {
    return github
        .request('POST', '/user/following/$user', statusCode: 204)
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Unfollows a user.
  Future<bool> unfollowUser(String user) {
    return github
        .request('DELETE', '/user/following/$user', statusCode: 204)
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// List current user followers.
  ///
  /// API docs: https://developer.github.com/v3/users/followers/#list-followers-of-a-user
  Stream<User> listCurrentUserFollowers() => PaginationHelper(github).objects(
      'GET', '/user/followers', (i) => User.fromJson(i),
      statusCode: 200);

  /// Lists the verified public keys for a [userLogin]. If no [userLogin] is specified,
  /// the public keys for the authenticated user are fetched.
  ///
  /// API docs: https://developer.github.com/v3/users/keys/#list-public-keys-for-a-user
  /// and https://developer.github.com/v3/users/keys/#list-your-public-keys
  Stream<PublicKey> listPublicKeys([String userLogin]) {
    final path = userLogin == null ? '/user/keys' : '/users/$userLogin/keys';
    return PaginationHelper(github)
        .objects('GET', path, (i) => PublicKey.fromJson(i));
  }

  // TODO: Implement getPublicKey: https://developer.github.com/v3/users/keys/#get-a-single-public-key

  /// Adds a public key for the authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/users/keys/#create-a-public-key
  Future<PublicKey> createPublicKey(CreatePublicKey key) {
    return github.postJSON('/user/keys', body: jsonEncode(key))
        as Future<PublicKey>;
  }

  // TODO: Implement updatePublicKey: https://developer.github.com/v3/users/keys/#update-a-public-key
  // TODO: Implement deletePublicKey: https://developer.github.com/v3/users/keys/#delete-a-public-key
}
