//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  final instance = UsersApi();

  group('tests for UsersApi', () {
    // Add an email address for the authenticated user
    //
    // This endpoint is accessible with the `user` scope.
    //
    //Future<List<Email>> usersAddEmailForAuthenticated({ UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE }) async
    test('test usersAddEmailForAuthenticated', () async {
      // TODO
    });

    // Block a user
    //
    //Future usersBlock(String username) async
    test('test usersBlock', () async {
      // TODO
    });

    // Check if a user is blocked by the authenticated user
    //
    //Future usersCheckBlocked(String username) async
    test('test usersCheckBlocked', () async {
      // TODO
    });

    // Check if a user follows another user
    //
    //Future usersCheckFollowingForUser(String username, String targetUser) async
    test('test usersCheckFollowingForUser', () async {
      // TODO
    });

    // Check if a person is followed by the authenticated user
    //
    //Future usersCheckPersonIsFollowedByAuthenticated(String username) async
    test('test usersCheckPersonIsFollowedByAuthenticated', () async {
      // TODO
    });

    // Create a GPG key for the authenticated user
    //
    // Adds a GPG key to the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth, or OAuth with at least `write:gpg_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<GpgKey> usersCreateGpgKeyForAuthenticated({ InlineObject176 inlineObject176 }) async
    test('test usersCreateGpgKeyForAuthenticated', () async {
      // TODO
    });

    // Create a public SSH key for the authenticated user
    //
    // Adds a public SSH key to the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth, or OAuth with at least `write:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<Key> usersCreatePublicSshKeyForAuthenticated({ InlineObject177 inlineObject177 }) async
    test('test usersCreatePublicSshKeyForAuthenticated', () async {
      // TODO
    });

    // Delete an email address for the authenticated user
    //
    // This endpoint is accessible with the `user` scope.
    //
    //Future usersDeleteEmailForAuthenticated({ UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE }) async
    test('test usersDeleteEmailForAuthenticated', () async {
      // TODO
    });

    // Delete a GPG key for the authenticated user
    //
    // Removes a GPG key from the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `admin:gpg_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future usersDeleteGpgKeyForAuthenticated(int gpgKeyId) async
    test('test usersDeleteGpgKeyForAuthenticated', () async {
      // TODO
    });

    // Delete a public SSH key for the authenticated user
    //
    // Removes a public SSH key from the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `admin:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future usersDeletePublicSshKeyForAuthenticated(int keyId) async
    test('test usersDeletePublicSshKeyForAuthenticated', () async {
      // TODO
    });

    // Follow a user
    //
    // Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"  Following a user requires the user to be logged in and authenticated with basic auth or OAuth with the `user:follow` scope.
    //
    //Future usersFollow(String username) async
    test('test usersFollow', () async {
      // TODO
    });

    // Get the authenticated user
    //
    // If the authenticated user is authenticated through basic authentication or OAuth with the `user` scope, then the response lists public and private profile information.  If the authenticated user is authenticated through OAuth without the `user` scope, then the response lists only public profile information.
    //
    //Future<OneOfprivateUserpublicUser> usersGetAuthenticated() async
    test('test usersGetAuthenticated', () async {
      // TODO
    });

    // Get a user
    //
    // Provides publicly available information about someone with a GitHub account.  GitHub Apps with the `Plan` user permission can use this endpoint to retrieve information about a user's GitHub plan. The GitHub App must be authenticated as a user. See \"[Identifying and authorizing users for GitHub Apps](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/)\" for details about authentication. For an example response, see 'Response with GitHub plan information' below\"  The `email` key in the following response is the publicly visible email address from your GitHub [profile page](https://github.com/settings/profile). When setting up your profile, you can select a primary email address to be “public” which provides an email entry for this endpoint. If you do not set a public email address for `email`, then it will have a value of `null`. You only see publicly visible email addresses when authenticated with GitHub. For more information, see [Authentication](https://docs.github.com/rest/overview/resources-in-the-rest-api#authentication).  The Emails API enables you to list all of your email addresses, and toggle a primary email to be visible publicly. For more information, see \"[Emails API](https://docs.github.com/rest/reference/users#emails)\".
    //
    //Future<OneOfprivateUserpublicUser> usersGetByUsername(String username) async
    test('test usersGetByUsername', () async {
      // TODO
    });

    // Get contextual information for a user
    //
    // Provides hovercard information when authenticated through basic auth or OAuth with the `repo` scope. You can find out more about someone in relation to their pull requests, issues, repositories, and organizations.  The `subject_type` and `subject_id` parameters provide context for the person's hovercard, which returns more information than without the parameters. For example, if you wanted to find out more about `octocat` who owns the `Spoon-Knife` repository via cURL, it would look like this:  ```shell  curl -u username:token   https://api.github.com/users/octocat/hovercard?subject_type=repository&subject_id=1300192 ```
    //
    //Future<Hovercard> usersGetContextForUser(String username, { String subjectType, String subjectId }) async
    test('test usersGetContextForUser', () async {
      // TODO
    });

    // Get a GPG key for the authenticated user
    //
    // View extended details for a single GPG key. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:gpg_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<GpgKey> usersGetGpgKeyForAuthenticated(int gpgKeyId) async
    test('test usersGetGpgKeyForAuthenticated', () async {
      // TODO
    });

    // Get a public SSH key for the authenticated user
    //
    // View extended details for a single public SSH key. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<Key> usersGetPublicSshKeyForAuthenticated(int keyId) async
    test('test usersGetPublicSshKeyForAuthenticated', () async {
      // TODO
    });

    // List users
    //
    // Lists all users, in the order that they signed up on GitHub. This list includes personal user accounts and organization accounts.  Note: Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://docs.github.com/rest/overview/resources-in-the-rest-api#link-header) to get the URL for the next page of users.
    //
    //Future<List<SimpleUser>> usersList({ int since, int perPage }) async
    test('test usersList', () async {
      // TODO
    });

    // List users blocked by the authenticated user
    //
    // List the users you've blocked on your personal account.
    //
    //Future<List<SimpleUser>> usersListBlockedByAuthenticated() async
    test('test usersListBlockedByAuthenticated', () async {
      // TODO
    });

    // List email addresses for the authenticated user
    //
    // Lists all of your email addresses, and specifies which one is visible to the public. This endpoint is accessible with the `user:email` scope.
    //
    //Future<List<Email>> usersListEmailsForAuthenticated({ int perPage, int page }) async
    test('test usersListEmailsForAuthenticated', () async {
      // TODO
    });

    // List the people the authenticated user follows
    //
    // Lists the people who the authenticated user follows.
    //
    //Future<List<SimpleUser>> usersListFollowedByAuthenticated({ int perPage, int page }) async
    test('test usersListFollowedByAuthenticated', () async {
      // TODO
    });

    // List followers of the authenticated user
    //
    // Lists the people following the authenticated user.
    //
    //Future<List<SimpleUser>> usersListFollowersForAuthenticatedUser({ int perPage, int page }) async
    test('test usersListFollowersForAuthenticatedUser', () async {
      // TODO
    });

    // List followers of a user
    //
    // Lists the people following the specified user.
    //
    //Future<List<SimpleUser>> usersListFollowersForUser(String username, { int perPage, int page }) async
    test('test usersListFollowersForUser', () async {
      // TODO
    });

    // List the people a user follows
    //
    // Lists the people who the specified user follows.
    //
    //Future<List<SimpleUser>> usersListFollowingForUser(String username, { int perPage, int page }) async
    test('test usersListFollowingForUser', () async {
      // TODO
    });

    // List GPG keys for the authenticated user
    //
    // Lists the current user's GPG keys. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:gpg_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<List<GpgKey>> usersListGpgKeysForAuthenticated({ int perPage, int page }) async
    test('test usersListGpgKeysForAuthenticated', () async {
      // TODO
    });

    // List GPG keys for a user
    //
    // Lists the GPG keys for a user. This information is accessible by anyone.
    //
    //Future<List<GpgKey>> usersListGpgKeysForUser(String username, { int perPage, int page }) async
    test('test usersListGpgKeysForUser', () async {
      // TODO
    });

    // List public email addresses for the authenticated user
    //
    // Lists your publicly visible email address, which you can set with the [Set primary email visibility for the authenticated user](https://docs.github.com/rest/reference/users#set-primary-email-visibility-for-the-authenticated-user) endpoint. This endpoint is accessible with the `user:email` scope.
    //
    //Future<List<Email>> usersListPublicEmailsForAuthenticated({ int perPage, int page }) async
    test('test usersListPublicEmailsForAuthenticated', () async {
      // TODO
    });

    // List public keys for a user
    //
    // Lists the _verified_ public SSH keys for a user. This is accessible by anyone.
    //
    //Future<List<KeySimple>> usersListPublicKeysForUser(String username, { int perPage, int page }) async
    test('test usersListPublicKeysForUser', () async {
      // TODO
    });

    // List public SSH keys for the authenticated user
    //
    // Lists the public SSH keys for the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<List<Key>> usersListPublicSshKeysForAuthenticated({ int perPage, int page }) async
    test('test usersListPublicSshKeysForAuthenticated', () async {
      // TODO
    });

    // Set primary email visibility for the authenticated user
    //
    // Sets the visibility for your primary email addresses.
    //
    //Future<List<Email>> usersSetPrimaryEmailVisibilityForAuthenticated({ InlineObject175 inlineObject175 }) async
    test('test usersSetPrimaryEmailVisibilityForAuthenticated', () async {
      // TODO
    });

    // Unblock a user
    //
    //Future usersUnblock(String username) async
    test('test usersUnblock', () async {
      // TODO
    });

    // Unfollow a user
    //
    // Unfollowing a user requires the user to be logged in and authenticated with basic auth or OAuth with the `user:follow` scope.
    //
    //Future usersUnfollow(String username) async
    test('test usersUnfollow', () async {
      // TODO
    });

    // Update the authenticated user
    //
    // **Note:** If your email is set to private and you send an `email` parameter as part of this request to update your profile, your privacy settings are still enforced: the email address will not be displayed on your public profile or via the API.
    //
    //Future<PrivateUser> usersUpdateAuthenticated({ InlineObject174 inlineObject174 }) async
    test('test usersUpdateAuthenticated', () async {
      // TODO
    });

  });
}
