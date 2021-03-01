//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for AppsApi
void main() {
  final instance = AppsApi();

  group('tests for AppsApi', () {
    // Add a repository to an app installation
    //
    // Add a single repository to an installation. The authenticated user must have admin access to the repository.  You must use a personal access token (which you can create via the [command line](https://docs.github.com/github/authenticating-to-github/creating-a-personal-access-token) or [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication)) to access this endpoint.
    //
    //Future appsAddRepoToInstallation(int installationId, int repositoryId) async
    test('test appsAddRepoToInstallation', () async {
      // TODO
    });

    // Check an authorization
    //
    // **Deprecation Notice:** GitHub will discontinue OAuth endpoints that contain `access_token` in the path parameter. We have introduced new endpoints that allow you to securely manage tokens for OAuth Apps by moving `access_token` to the request body. For more information, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.
    //
    //Future<Authorization> appsCheckAuthorization(String clientId, String accessToken) async
    test('test appsCheckAuthorization', () async {
      // TODO
    });

    // Check a token
    //
    // OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) to use this endpoint, where the username is the OAuth application `client_id` and the password is its `client_secret`. Invalid tokens will return `404 NOT FOUND`.
    //
    //Future<Authorization> appsCheckToken(String clientId, { InlineObject3 inlineObject3 }) async
    test('test appsCheckToken', () async {
      // TODO
    });

    // Create a content attachment
    //
    // Creates an attachment under a content reference URL in the body or comment of an issue or pull request. Use the `id` of the content reference from the [`content_reference` event](https://docs.github.com/webhooks/event-payloads/#content_reference) to create an attachment.  The app must create a content attachment within six hours of the content reference URL being posted. See \"[Using content attachments](https://docs.github.com/apps/using-content-attachments/)\" for details about content attachments.  You must use an [installation access token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
    //
    //Future<ContentReferenceAttachment> appsCreateContentAttachment(int contentReferenceId, { InlineObject11 inlineObject11 }) async
    test('test appsCreateContentAttachment', () async {
      // TODO
    });

    // Create a GitHub App from a manifest
    //
    // Use this endpoint to complete the handshake necessary when implementing the [GitHub App Manifest flow](https://docs.github.com/apps/building-github-apps/creating-github-apps-from-a-manifest/). When you create a GitHub App with the manifest flow, you receive a temporary `code` used to retrieve the GitHub App's `id`, `pem` (private key), and `webhook_secret`.
    //
    //Future<Integration> appsCreateFromManifest(String code) async
    test('test appsCreateFromManifest', () async {
      // TODO
    });

    // Create an installation access token for an app
    //
    // Creates an installation access token that enables a GitHub App to make authenticated API requests for the app's installation on an organization or individual account. Installation tokens expire one hour from the time you create them. Using an expired token produces a status code of `401 - Unauthorized`, and requires creating a new installation token. By default the installation token has access to all repositories that the installation can access. To restrict the access to specific repositories, you can provide the `repository_ids` when creating the token. When you omit `repository_ids`, the response does not contain the `repositories` key.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<InstallationToken> appsCreateInstallationAccessToken(int installationId, { InlineObject1 inlineObject1 }) async
    test('test appsCreateInstallationAccessToken', () async {
      // TODO
    });

    // Delete an app authorization
    //
    // OAuth application owners can revoke a grant for their OAuth application and a specific user. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. You must also provide a valid OAuth `access_token` as an input parameter and the grant for the token's owner will be deleted. Deleting an OAuth application's grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user's account and will no longer be listed on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized).
    //
    //Future appsDeleteAuthorization(String clientId, { InlineObject2 inlineObject2 }) async
    test('test appsDeleteAuthorization', () async {
      // TODO
    });

    // Delete an installation for the authenticated app
    //
    // Uninstalls a GitHub App on a user, organization, or business account. If you prefer to temporarily suspend an app's access to your account's resources, then we recommend the \"[Suspend an app installation](https://docs.github.com/rest/reference/apps/#suspend-an-app-installation)\" endpoint.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future appsDeleteInstallation(int installationId) async
    test('test appsDeleteInstallation', () async {
      // TODO
    });

    // Delete an app token
    //
    // OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password.
    //
    //Future appsDeleteToken(String clientId, { InlineObject4 inlineObject4 }) async
    test('test appsDeleteToken', () async {
      // TODO
    });

    // Get the authenticated app
    //
    // Returns the GitHub App associated with the authentication credentials used. To see how many app installations are associated with this GitHub App, see the `installations_count` in the response. For more details about your app's installations, see the \"[List installations for the authenticated app](https://docs.github.com/rest/reference/apps#list-installations-for-the-authenticated-app)\" endpoint.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<Integration> appsGetAuthenticated() async
    test('test appsGetAuthenticated', () async {
      // TODO
    });

    // Get an app
    //
    // **Note**: The `:app_slug` is just the URL-friendly name of your GitHub App. You can find this on the settings page for your GitHub App (e.g., `https://github.com/settings/apps/:app_slug`).  If the GitHub App you specify is public, you can access this endpoint without authenticating. If the GitHub App you specify is private, you must authenticate with a [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or an [installation access token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
    //
    //Future<Integration> appsGetBySlug(String appSlug) async
    test('test appsGetBySlug', () async {
      // TODO
    });

    // Get an installation for the authenticated app
    //
    // Enables an authenticated GitHub App to find an installation's information using the installation id. The installation's account type (`target_type`) will be either an organization or a user account, depending which account the repository belongs to.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<Installation> appsGetInstallation(int installationId) async
    test('test appsGetInstallation', () async {
      // TODO
    });

    // Get an organization installation for the authenticated app
    //
    // Enables an authenticated GitHub App to find the organization's installation information.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<Installation> appsGetOrgInstallation(String org) async
    test('test appsGetOrgInstallation', () async {
      // TODO
    });

    // Get a repository installation for the authenticated app
    //
    // Enables an authenticated GitHub App to find the repository's installation information. The installation's account type will be either an organization or a user account, depending which account the repository belongs to.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<Installation> appsGetRepoInstallation(String owner, String repo) async
    test('test appsGetRepoInstallation', () async {
      // TODO
    });

    // Get a subscription plan for an account
    //
    // Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
    //
    //Future<MarketplacePurchase> appsGetSubscriptionPlanForAccount(int accountId) async
    test('test appsGetSubscriptionPlanForAccount', () async {
      // TODO
    });

    // Get a subscription plan for an account (stubbed)
    //
    // Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
    //
    //Future<MarketplacePurchase> appsGetSubscriptionPlanForAccountStubbed(int accountId) async
    test('test appsGetSubscriptionPlanForAccountStubbed', () async {
      // TODO
    });

    // Get a user installation for the authenticated app
    //
    // Enables an authenticated GitHub App to find the user’s installation information.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<Installation> appsGetUserInstallation(String username) async
    test('test appsGetUserInstallation', () async {
      // TODO
    });

    // Get a webhook configuration for an app
    //
    // Returns the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see \"[Creating a GitHub App](/developers/apps/creating-a-github-app).\"  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<WebhookConfig> appsGetWebhookConfigForApp() async
    test('test appsGetWebhookConfigForApp', () async {
      // TODO
    });

    // List accounts for a plan
    //
    // Returns user and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
    //
    //Future<List<MarketplacePurchase>> appsListAccountsForPlan(int planId, { String sort, String direction, int perPage, int page }) async
    test('test appsListAccountsForPlan', () async {
      // TODO
    });

    // List accounts for a plan (stubbed)
    //
    // Returns repository and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
    //
    //Future<List<MarketplacePurchase>> appsListAccountsForPlanStubbed(int planId, { String sort, String direction, int perPage, int page }) async
    test('test appsListAccountsForPlanStubbed', () async {
      // TODO
    });

    // List repositories accessible to the user access token
    //
    // List repositories that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access for an installation.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.  You must use a [user-to-server OAuth access token](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.  The access the user has to each repository is included in the hash under the `permissions` key.
    //
    //Future<InlineResponse20027> appsListInstallationReposForAuthenticatedUser(int installationId, { int perPage, int page }) async
    test('test appsListInstallationReposForAuthenticatedUser', () async {
      // TODO
    });

    // List installations for the authenticated app
    //
    // You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.  The permissions the installation has are included under the `permissions` key.
    //
    //Future<List<Installation>> appsListInstallations({ int perPage, int page, String since, String outdated }) async
    test('test appsListInstallations', () async {
      // TODO
    });

    // List app installations accessible to the user access token
    //
    // Lists installations of your GitHub App that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access.  You must use a [user-to-server OAuth access token](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.  You can find the permissions for the installation under the `permissions` key.
    //
    //Future<InlineResponse20011> appsListInstallationsForAuthenticatedUser({ int perPage, int page }) async
    test('test appsListInstallationsForAuthenticatedUser', () async {
      // TODO
    });

    // List plans
    //
    // Lists all plans that are part of your GitHub Marketplace listing.  GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
    //
    //Future<List<MarketplaceListingPlan>> appsListPlans({ int perPage, int page }) async
    test('test appsListPlans', () async {
      // TODO
    });

    // List plans (stubbed)
    //
    // Lists all plans that are part of your GitHub Marketplace listing.  GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) with their client ID and client secret to access this endpoint.
    //
    //Future<List<MarketplaceListingPlan>> appsListPlansStubbed({ int perPage, int page }) async
    test('test appsListPlansStubbed', () async {
      // TODO
    });

    // List repositories accessible to the app installation
    //
    // List repositories that an app installation can access.  You must use an [installation access token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
    //
    //Future<InlineResponse2005> appsListReposAccessibleToInstallation({ int perPage, int page }) async
    test('test appsListReposAccessibleToInstallation', () async {
      // TODO
    });

    // List subscriptions for the authenticated user
    //
    // Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/).
    //
    //Future<List<UserMarketplacePurchase>> appsListSubscriptionsForAuthenticatedUser({ int perPage, int page }) async
    test('test appsListSubscriptionsForAuthenticatedUser', () async {
      // TODO
    });

    // List subscriptions for the authenticated user (stubbed)
    //
    // Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/).
    //
    //Future<List<UserMarketplacePurchase>> appsListSubscriptionsForAuthenticatedUserStubbed({ int perPage, int page }) async
    test('test appsListSubscriptionsForAuthenticatedUserStubbed', () async {
      // TODO
    });

    // Remove a repository from an app installation
    //
    // Remove a single repository from an installation. The authenticated user must have admin access to the repository.  You must use a personal access token (which you can create via the [command line](https://docs.github.com/github/authenticating-to-github/creating-a-personal-access-token) or [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication)) to access this endpoint.
    //
    //Future appsRemoveRepoFromInstallation(int installationId, int repositoryId) async
    test('test appsRemoveRepoFromInstallation', () async {
      // TODO
    });

    // Reset an authorization
    //
    // **Deprecation Notice:** GitHub will discontinue OAuth endpoints that contain `access_token` in the path parameter. We have introduced new endpoints that allow you to securely manage tokens for OAuth Apps by moving `access_token` to the request body. For more information, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the \"token\" property in the response because changes take effect immediately. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.
    //
    //Future<Authorization> appsResetAuthorization(String clientId, String accessToken) async
    test('test appsResetAuthorization', () async {
      // TODO
    });

    // Reset a token
    //
    // OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the \"token\" property in the response because changes take effect immediately. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.
    //
    //Future<Authorization> appsResetToken(String clientId, { InlineObject5 inlineObject5 }) async
    test('test appsResetToken', () async {
      // TODO
    });

    // Revoke an authorization for an application
    //
    // **Deprecation Notice:** GitHub will discontinue OAuth endpoints that contain `access_token` in the path parameter. We have introduced new endpoints that allow you to securely manage tokens for OAuth Apps by moving `access_token` to the request body. For more information, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password.
    //
    //Future appsRevokeAuthorizationForApplication(String clientId, String accessToken) async
    test('test appsRevokeAuthorizationForApplication', () async {
      // TODO
    });

    // Revoke a grant for an application
    //
    // **Deprecation Notice:** GitHub will discontinue OAuth endpoints that contain `access_token` in the path parameter. We have introduced new endpoints that allow you to securely manage tokens for OAuth Apps by moving `access_token` to the request body. For more information, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth application owners can revoke a grant for their OAuth application and a specific user. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. You must also provide a valid token as `:access_token` and the grant for the token's owner will be deleted.  Deleting an OAuth application's grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user's account and will no longer be listed on [the Applications settings page under \"Authorized OAuth Apps\" on GitHub](https://github.com/settings/applications#authorized).
    //
    //Future appsRevokeGrantForApplication(String clientId, String accessToken) async
    test('test appsRevokeGrantForApplication', () async {
      // TODO
    });

    // Revoke an installation access token
    //
    // Revokes the installation token you're using to authenticate as an installation and access this endpoint.  Once an installation token is revoked, the token is invalidated and cannot be used. Other endpoints that require the revoked installation token must have a new installation token to work. You can create a new token using the \"[Create an installation access token for an app](https://docs.github.com/rest/reference/apps#create-an-installation-access-token-for-an-app)\" endpoint.  You must use an [installation access token](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
    //
    //Future appsRevokeInstallationAccessToken() async
    test('test appsRevokeInstallationAccessToken', () async {
      // TODO
    });

    // Create a scoped access token
    //
    // Exchanges a non-repository scoped user-to-server OAuth access token for a repository scoped user-to-server OAuth access token. You can specify which repositories the token can access and which permissions are granted to the token. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.
    //
    //Future<Authorization> appsScopeToken(String clientId, { InlineObject6 inlineObject6 }) async
    test('test appsScopeToken', () async {
      // TODO
    });

    // Suspend an app installation
    //
    // Suspends a GitHub App on a user, organization, or business account, which blocks the app from accessing the account's resources. When a GitHub App is suspended, the app's access to the GitHub API or webhook events is blocked for that account.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future appsSuspendInstallation(int installationId) async
    test('test appsSuspendInstallation', () async {
      // TODO
    });

    // Unsuspend an app installation
    //
    // Removes a GitHub App installation suspension.  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future appsUnsuspendInstallation(int installationId) async
    test('test appsUnsuspendInstallation', () async {
      // TODO
    });

    // Update a webhook configuration for an app
    //
    // Updates the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see \"[Creating a GitHub App](/developers/apps/creating-a-github-app).\"  You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
    //
    //Future<WebhookConfig> appsUpdateWebhookConfigForApp({ InlineObject inlineObject }) async
    test('test appsUpdateWebhookConfigForApp', () async {
      // TODO
    });

  });
}
