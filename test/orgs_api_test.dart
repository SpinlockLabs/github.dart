//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for OrgsApi
void main() {
  final instance = OrgsApi();

  group('tests for OrgsApi', () {
    // Block a user from an organization
    //
    //Future orgsBlockUser(String org, String username) async
    test('test orgsBlockUser', () async {
      // TODO
    });

    // Cancel an organization invitation
    //
    // Cancel an organization invitation. In order to cancel an organization invitation, the authenticated user must be an organization owner.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications).
    //
    //Future orgsCancelInvitation(String org, int invitationId) async
    test('test orgsCancelInvitation', () async {
      // TODO
    });

    // Check if a user is blocked by an organization
    //
    //Future orgsCheckBlockedUser(String org, String username) async
    test('test orgsCheckBlockedUser', () async {
      // TODO
    });

    // Check organization membership for a user
    //
    // Check if a user is, publicly or privately, a member of the organization.
    //
    //Future orgsCheckMembershipForUser(String org, String username) async
    test('test orgsCheckMembershipForUser', () async {
      // TODO
    });

    // Check public organization membership for a user
    //
    //Future orgsCheckPublicMembershipForUser(String org, String username) async
    test('test orgsCheckPublicMembershipForUser', () async {
      // TODO
    });

    // Convert an organization member to outside collaborator
    //
    // When an organization member is converted to an outside collaborator, they'll only have access to the repositories that their current team membership allows. The user will no longer be a member of the organization. For more information, see \"[Converting an organization member to an outside collaborator](https://help.github.com/articles/converting-an-organization-member-to-an-outside-collaborator/)\".
    //
    //Future orgsConvertMemberToOutsideCollaborator(String org, String username) async
    test('test orgsConvertMemberToOutsideCollaborator', () async {
      // TODO
    });

    // Create an organization invitation
    //
    // Invite people to an organization by using their GitHub user ID or their email address. In order to create invitations in an organization, the authenticated user must be an organization owner.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    //
    //Future<OrganizationInvitation> orgsCreateInvitation(String org, { InlineObject36 inlineObject36 }) async
    test('test orgsCreateInvitation', () async {
      // TODO
    });

    // Create an organization webhook
    //
    // Here's how you can create a hook that posts payloads in JSON format:
    //
    //Future<OrgHook> orgsCreateWebhook(String org, { InlineObject33 inlineObject33 }) async
    test('test orgsCreateWebhook', () async {
      // TODO
    });

    // Delete an organization webhook
    //
    //Future orgsDeleteWebhook(String org, int hookId) async
    test('test orgsDeleteWebhook', () async {
      // TODO
    });

    // Get an organization
    //
    // To see many of the organization response values, you need to be an authenticated organization owner with the `admin:org` scope. When the value of `two_factor_requirement_enabled` is `true`, the organization requires all members, billing managers, and outside collaborators to enable [two-factor authentication](https://help.github.com/articles/securing-your-account-with-two-factor-authentication-2fa/).  GitHub Apps with the `Organization plan` permission can use this endpoint to retrieve information about an organization's GitHub plan. See \"[Authenticating with GitHub Apps](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/)\" for details. For an example response, see 'Response with GitHub plan information' below.\"
    //
    //Future<OrganizationFull> orgsGet(String org) async
    test('test orgsGet', () async {
      // TODO
    });

    // Get the audit log for an organization
    //
    // **Note:** The audit log REST API is currently in beta and is subject to change.  Gets the audit log for an organization. For more information, see \"[Reviewing the audit log for your organization](https://docs.github.com/github/setting-up-and-managing-organizations-and-teams/reviewing-the-audit-log-for-your-organization).\"  To use this endpoint, you must be an organization owner, and you must use an access token with the `admin:org` scope. GitHub Apps must have the `organization_administration` read permission to use this endpoint.
    //
    //Future<List<AuditLogEvent>> orgsGetAuditLog(String org, { String phrase, String include, String after, String before, String order, int perPage }) async
    test('test orgsGetAuditLog', () async {
      // TODO
    });

    // Get an organization membership for the authenticated user
    //
    //Future<OrgMembership> orgsGetMembershipForAuthenticatedUser(String org) async
    test('test orgsGetMembershipForAuthenticatedUser', () async {
      // TODO
    });

    // Get organization membership for a user
    //
    // In order to get a user's membership with an organization, the authenticated user must be an organization member.
    //
    //Future<OrgMembership> orgsGetMembershipForUser(String org, String username) async
    test('test orgsGetMembershipForUser', () async {
      // TODO
    });

    // Get an organization webhook
    //
    // Returns a webhook configured in an organization. To get only the webhook `config` properties, see \"[Get a webhook configuration for an organization](/rest/reference/orgs#get-a-webhook-configuration-for-an-organization).\"
    //
    //Future<OrgHook> orgsGetWebhook(String org, int hookId) async
    test('test orgsGetWebhook', () async {
      // TODO
    });

    // Get a webhook configuration for an organization
    //
    // Returns the webhook configuration for an organization. To get more information about the webhook, including the `active` state and `events`, use \"[Get an organization webhook ](/rest/reference/orgs#get-an-organization-webhook).\"  Access tokens must have the `admin:org_hook` scope, and GitHub Apps must have the `organization_hooks:read` permission.
    //
    //Future<WebhookConfig> orgsGetWebhookConfigForOrg(String org, int hookId) async
    test('test orgsGetWebhookConfigForOrg', () async {
      // TODO
    });

    // List organizations
    //
    // Lists all organizations, in the order that they were created on GitHub.  **Note:** Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://docs.github.com/rest/overview/resources-in-the-rest-api#link-header) to get the URL for the next page of organizations.
    //
    //Future<List<OrganizationSimple>> orgsList({ int since, int perPage }) async
    test('test orgsList', () async {
      // TODO
    });

    // List app installations for an organization
    //
    // Lists all GitHub Apps in an organization. The installation count includes all GitHub Apps installed on repositories in the organization. You must be an organization owner with `admin:read` scope to use this endpoint.
    //
    //Future<InlineResponse20011> orgsListAppInstallations(String org, { int perPage, int page }) async
    test('test orgsListAppInstallations', () async {
      // TODO
    });

    // List users blocked by an organization
    //
    // List the users blocked by an organization.
    //
    //Future<List<SimpleUser>> orgsListBlockedUsers(String org) async
    test('test orgsListBlockedUsers', () async {
      // TODO
    });

    // List failed organization invitations
    //
    // The return hash contains `failed_at` and `failed_reason` fields which represent the time at which the invitation failed and the reason for the failure.
    //
    //Future<List<OrganizationInvitation>> orgsListFailedInvitations(String org, { int perPage, int page }) async
    test('test orgsListFailedInvitations', () async {
      // TODO
    });

    // List organizations for the authenticated user
    //
    // List organizations for the authenticated user.  **OAuth scope requirements**  This only lists organizations that your authorization allows you to operate on in some way (e.g., you can list teams with `read:org` scope, you can publicize your organization membership with `user` scope, etc.). Therefore, this API requires at least `user` or `read:org` scope. OAuth requests with insufficient scope receive a `403 Forbidden` response.
    //
    //Future<List<OrganizationSimple>> orgsListForAuthenticatedUser({ int perPage, int page }) async
    test('test orgsListForAuthenticatedUser', () async {
      // TODO
    });

    // List organizations for a user
    //
    // List [public organization memberships](https://help.github.com/articles/publicizing-or-concealing-organization-membership) for the specified user.  This method only lists _public_ memberships, regardless of authentication. If you need to fetch all of the organization memberships (public and private) for the authenticated user, use the [List organizations for the authenticated user](https://docs.github.com/rest/reference/orgs#list-organizations-for-the-authenticated-user) API instead.
    //
    //Future<List<OrganizationSimple>> orgsListForUser(String username, { int perPage, int page }) async
    test('test orgsListForUser', () async {
      // TODO
    });

    // List organization invitation teams
    //
    // List all teams associated with an invitation. In order to see invitations in an organization, the authenticated user must be an organization owner.
    //
    //Future<List<Team>> orgsListInvitationTeams(String org, int invitationId, { int perPage, int page }) async
    test('test orgsListInvitationTeams', () async {
      // TODO
    });

    // List organization members
    //
    // List all users who are members of an organization. If the authenticated user is also a member of this organization then both concealed and public members will be returned.
    //
    //Future<List<SimpleUser>> orgsListMembers(String org, { String filter, String role, int perPage, int page }) async
    test('test orgsListMembers', () async {
      // TODO
    });

    // List organization memberships for the authenticated user
    //
    //Future<List<OrgMembership>> orgsListMembershipsForAuthenticatedUser({ String state, int perPage, int page }) async
    test('test orgsListMembershipsForAuthenticatedUser', () async {
      // TODO
    });

    // List outside collaborators for an organization
    //
    // List all users who are outside collaborators of an organization.
    //
    //Future<List<SimpleUser>> orgsListOutsideCollaborators(String org, { String filter, int perPage, int page }) async
    test('test orgsListOutsideCollaborators', () async {
      // TODO
    });

    // List pending organization invitations
    //
    // The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.
    //
    //Future<List<OrganizationInvitation>> orgsListPendingInvitations(String org, { int perPage, int page }) async
    test('test orgsListPendingInvitations', () async {
      // TODO
    });

    // List public organization members
    //
    // Members of an organization can choose to have their membership publicized or not.
    //
    //Future<List<SimpleUser>> orgsListPublicMembers(String org, { int perPage, int page }) async
    test('test orgsListPublicMembers', () async {
      // TODO
    });

    // List SAML SSO authorizations for an organization
    //
    // Listing and deleting credential authorizations is available to organizations with GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products).  An authenticated organization owner with the `read:org` scope can list all credential authorizations for an organization that uses SAML single sign-on (SSO). The credentials are either personal access tokens or SSH keys that organization members have authorized for the organization. For more information, see [About authentication with SAML single sign-on](https://help.github.com/en/articles/about-authentication-with-saml-single-sign-on).
    //
    //Future<List<CredentialAuthorization>> orgsListSamlSsoAuthorizations(String org) async
    test('test orgsListSamlSsoAuthorizations', () async {
      // TODO
    });

    // List organization webhooks
    //
    //Future<List<OrgHook>> orgsListWebhooks(String org, { int perPage, int page }) async
    test('test orgsListWebhooks', () async {
      // TODO
    });

    // Ping an organization webhook
    //
    // This will trigger a [ping event](https://docs.github.com/webhooks/#ping-event) to be sent to the hook.
    //
    //Future orgsPingWebhook(String org, int hookId) async
    test('test orgsPingWebhook', () async {
      // TODO
    });

    // Remove an organization member
    //
    // Removing a user from this list will remove them from all teams and they will no longer have any access to the organization's repositories.
    //
    //Future orgsRemoveMember(String org, String username) async
    test('test orgsRemoveMember', () async {
      // TODO
    });

    // Remove organization membership for a user
    //
    // In order to remove a user's membership with an organization, the authenticated user must be an organization owner.  If the specified user is an active member of the organization, this will remove them from the organization. If the specified user has been invited to the organization, this will cancel their invitation. The specified user will receive an email notification in both cases.
    //
    //Future orgsRemoveMembershipForUser(String org, String username) async
    test('test orgsRemoveMembershipForUser', () async {
      // TODO
    });

    // Remove outside collaborator from an organization
    //
    // Removing a user from this list will remove them from all the organization's repositories.
    //
    //Future orgsRemoveOutsideCollaborator(String org, String username) async
    test('test orgsRemoveOutsideCollaborator', () async {
      // TODO
    });

    // Remove public organization membership for the authenticated user
    //
    //Future orgsRemovePublicMembershipForAuthenticatedUser(String org, String username) async
    test('test orgsRemovePublicMembershipForAuthenticatedUser', () async {
      // TODO
    });

    // Remove a SAML SSO authorization for an organization
    //
    // Listing and deleting credential authorizations is available to organizations with GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products).  An authenticated organization owner with the `admin:org` scope can remove a credential authorization for an organization that uses SAML SSO. Once you remove someone's credential authorization, they will need to create a new personal access token or SSH key and authorize it for the organization they want to access.
    //
    //Future orgsRemoveSamlSsoAuthorization(String org, int credentialId) async
    test('test orgsRemoveSamlSsoAuthorization', () async {
      // TODO
    });

    // Set organization membership for a user
    //
    // Only authenticated organization owners can add a member to the organization or update the member's role.  *   If the authenticated user is _adding_ a member to the organization, the invited user will receive an email inviting them to the organization. The user's [membership status](https://docs.github.com/rest/reference/orgs#get-organization-membership-for-a-user) will be `pending` until they accept the invitation.      *   Authenticated users can _update_ a user's membership by passing the `role` parameter. If the authenticated user changes a member's role to `admin`, the affected user will receive an email notifying them that they've been made an organization owner. If the authenticated user changes an owner's role to `member`, no email will be sent.  **Rate limits**  To prevent abuse, the authenticated user is limited to 50 organization invitations per 24 hour period. If the organization is more than one month old or on a paid plan, the limit is 500 invitations per 24 hour period.
    //
    //Future<OrgMembership> orgsSetMembershipForUser(String org, String username, { InlineObject37 inlineObject37 }) async
    test('test orgsSetMembershipForUser', () async {
      // TODO
    });

    // Set public organization membership for the authenticated user
    //
    // The user can publicize their own membership. (A user cannot publicize the membership for another user.)  Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    //
    //Future orgsSetPublicMembershipForAuthenticatedUser(String org, String username) async
    test('test orgsSetPublicMembershipForAuthenticatedUser', () async {
      // TODO
    });

    // Unblock a user from an organization
    //
    //Future orgsUnblockUser(String org, String username) async
    test('test orgsUnblockUser', () async {
      // TODO
    });

    // Update an organization
    //
    // **Parameter Deprecation Notice:** GitHub will replace and discontinue `members_allowed_repository_creation_type` in favor of more granular permissions. The new input parameters are `members_can_create_public_repositories`, `members_can_create_private_repositories` for all organizations and `members_can_create_internal_repositories` for organizations associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. For more information, see the [blog post](https://developer.github.com/changes/2019-12-03-internal-visibility-changes).  Enables an authenticated organization owner with the `admin:org` scope to update the organization's profile and member privileges.
    //
    //Future<OrganizationFull> orgsUpdate(String org, { InlineObject24 inlineObject24 }) async
    test('test orgsUpdate', () async {
      // TODO
    });

    // Update an organization membership for the authenticated user
    //
    //Future<OrgMembership> orgsUpdateMembershipForAuthenticatedUser(String org, { InlineObject178 inlineObject178 }) async
    test('test orgsUpdateMembershipForAuthenticatedUser', () async {
      // TODO
    });

    // Update an organization webhook
    //
    // Updates a webhook configured in an organization. When you update a webhook, the `secret` will be overwritten. If you previously had a `secret` set, you must provide the same `secret` or set a new `secret` or the secret will be removed. If you are only updating individual webhook `config` properties, use \"[Update a webhook configuration for an organization](/rest/reference/orgs#update-a-webhook-configuration-for-an-organization).\"
    //
    //Future<OrgHook> orgsUpdateWebhook(String org, int hookId, { InlineObject34 inlineObject34 }) async
    test('test orgsUpdateWebhook', () async {
      // TODO
    });

    // Update a webhook configuration for an organization
    //
    // Updates the webhook configuration for an organization. To update more information about the webhook, including the `active` state and `events`, use \"[Update an organization webhook ](/rest/reference/orgs#update-an-organization-webhook).\"  Access tokens must have the `admin:org_hook` scope, and GitHub Apps must have the `organization_hooks:write` permission.
    //
    //Future<WebhookConfig> orgsUpdateWebhookConfigForOrg(String org, int hookId, { InlineObject35 inlineObject35 }) async
    test('test orgsUpdateWebhookConfigForOrg', () async {
      // TODO
    });

  });
}
