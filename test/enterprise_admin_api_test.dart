//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for EnterpriseAdminApi
void main() {
  final instance = EnterpriseAdminApi();

  group('tests for EnterpriseAdminApi', () {
    // Add organization access to a self-hosted runner group in an enterprise
    //
    // Adds an organization to the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see \"[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, int orgId) async
    test('test enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise', () async {
      // TODO
    });

    // Add a self-hosted runner to a group for an enterprise
    //
    // Adds a self-hosted runner to a runner group configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise(String enterprise, int runnerGroupId, int runnerId) async
    test('test enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise', () async {
      // TODO
    });

    // Create a registration token for an enterprise
    //
    // Returns a token that you can pass to the `config` script. The token expires after one hour.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.  #### Example using registration token  Configure your self-hosted runner, replacing `TOKEN` with the registration token provided by this endpoint.  ``` ./config.sh --url https://github.com/enterprises/octo-enterprise --token TOKEN ```
    //
    //Future<AuthenticationToken> enterpriseAdminCreateRegistrationTokenForEnterprise(String enterprise) async
    test('test enterpriseAdminCreateRegistrationTokenForEnterprise', () async {
      // TODO
    });

    // Create a remove token for an enterprise
    //
    // Returns a token that you can pass to the `config` script to remove a self-hosted runner from an enterprise. The token expires after one hour.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.  #### Example using remove token  To remove your self-hosted runner from an enterprise, replace `TOKEN` with the remove token provided by this endpoint.  ``` ./config.sh remove --token TOKEN ```
    //
    //Future<AuthenticationToken> enterpriseAdminCreateRemoveTokenForEnterprise(String enterprise) async
    test('test enterpriseAdminCreateRemoveTokenForEnterprise', () async {
      // TODO
    });

    // Create a self-hosted runner group for an enterprise
    //
    // Creates a new self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<RunnerGroupsEnterprise> enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise(String enterprise, { InlineObject14 inlineObject14 }) async
    test('test enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise', () async {
      // TODO
    });

    // Delete a SCIM group from an enterprise
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    //
    //Future enterpriseAdminDeleteScimGroupFromEnterprise(String enterprise, String scimGroupId) async
    test('test enterpriseAdminDeleteScimGroupFromEnterprise', () async {
      // TODO
    });

    // Delete a self-hosted runner from an enterprise
    //
    // Forces the removal of a self-hosted runner from an enterprise. You can use this endpoint to completely remove the runner when the machine you were using no longer exists.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminDeleteSelfHostedRunnerFromEnterprise(String enterprise, int runnerId) async
    test('test enterpriseAdminDeleteSelfHostedRunnerFromEnterprise', () async {
      // TODO
    });

    // Delete a self-hosted runner group from an enterprise
    //
    // Deletes a self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise(String enterprise, int runnerGroupId) async
    test('test enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise', () async {
      // TODO
    });

    // Delete a SCIM user from an enterprise
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    //
    //Future enterpriseAdminDeleteUserFromEnterprise(String enterprise, String scimUserId) async
    test('test enterpriseAdminDeleteUserFromEnterprise', () async {
      // TODO
    });

    // Disable a selected organization for GitHub Actions in an enterprise
    //
    // Removes an organization from the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise(String enterprise, int orgId) async
    test('test enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise', () async {
      // TODO
    });

    // Enable a selected organization for GitHub Actions in an enterprise
    //
    // Adds an organization to the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise(String enterprise, int orgId) async
    test('test enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise', () async {
      // TODO
    });

    // Get allowed actions for an enterprise
    //
    // Gets the selected actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for `allowed_actions` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<SelectedActions> enterpriseAdminGetAllowedActionsEnterprise(String enterprise) async
    test('test enterpriseAdminGetAllowedActionsEnterprise', () async {
      // TODO
    });

    // Get GitHub Actions permissions for an enterprise
    //
    // Gets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<ActionsEnterprisePermissions> enterpriseAdminGetGithubActionsPermissionsEnterprise(String enterprise) async
    test('test enterpriseAdminGetGithubActionsPermissionsEnterprise', () async {
      // TODO
    });

    // Get SCIM provisioning information for an enterprise group
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    //
    //Future<ScimEnterpriseGroup> enterpriseAdminGetProvisioningInformationForEnterpriseGroup(String enterprise, String scimGroupId) async
    test('test enterpriseAdminGetProvisioningInformationForEnterpriseGroup', () async {
      // TODO
    });

    // Get SCIM provisioning information for an enterprise user
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    //
    //Future<ScimEnterpriseUser> enterpriseAdminGetProvisioningInformationForEnterpriseUser(String enterprise, String scimUserId) async
    test('test enterpriseAdminGetProvisioningInformationForEnterpriseUser', () async {
      // TODO
    });

    // Get a self-hosted runner for an enterprise
    //
    // Gets a specific self-hosted runner configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<Runner> enterpriseAdminGetSelfHostedRunnerForEnterprise(String enterprise, int runnerId) async
    test('test enterpriseAdminGetSelfHostedRunnerForEnterprise', () async {
      // TODO
    });

    // Get a self-hosted runner group for an enterprise
    //
    // Gets a specific self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<RunnerGroupsEnterprise> enterpriseAdminGetSelfHostedRunnerGroupForEnterprise(String enterprise, int runnerGroupId) async
    test('test enterpriseAdminGetSelfHostedRunnerGroupForEnterprise', () async {
      // TODO
    });

    // List organization access to a self-hosted runner group in an enterprise
    //
    // Lists the organizations with access to a self-hosted runner group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<InlineResponse2001> enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, { int perPage, int page }) async
    test('test enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise', () async {
      // TODO
    });

    // List provisioned SCIM groups for an enterprise
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    //
    //Future<ScimGroupListEnterprise> enterpriseAdminListProvisionedGroupsEnterprise(String enterprise, { int startIndex, int count }) async
    test('test enterpriseAdminListProvisionedGroupsEnterprise', () async {
      // TODO
    });

    // List SCIM provisioned identities for an enterprise
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Retrieves a paginated list of all provisioned enterprise members, including pending invitations.  When a user with a SAML-provisioned external identity leaves (or is removed from) an enterprise, the account's metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an enterprise, the account's metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee's email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a `null` user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub enterprise.  1. The user attempts to access the GitHub enterprise and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the `null` external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub enterprise, and the external identity `null` entry remains in place.
    //
    //Future<ScimUserListEnterprise> enterpriseAdminListProvisionedIdentitiesEnterprise(String enterprise, { int startIndex, int count }) async
    test('test enterpriseAdminListProvisionedIdentitiesEnterprise', () async {
      // TODO
    });

    // List runner applications for an enterprise
    //
    // Lists binaries for the runner application that you can download and run.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<List<RunnerApplication>> enterpriseAdminListRunnerApplicationsForEnterprise(String enterprise) async
    test('test enterpriseAdminListRunnerApplicationsForEnterprise', () async {
      // TODO
    });

    // List selected organizations enabled for GitHub Actions in an enterprise
    //
    // Lists the organizations that are selected to have GitHub Actions enabled in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<InlineResponse2001> enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise(String enterprise, { int perPage, int page }) async
    test('test enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise', () async {
      // TODO
    });

    // List self-hosted runner groups for an enterprise
    //
    // Lists all self-hosted runner groups for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<InlineResponse2002> enterpriseAdminListSelfHostedRunnerGroupsForEnterprise(String enterprise, { int perPage, int page }) async
    test('test enterpriseAdminListSelfHostedRunnerGroupsForEnterprise', () async {
      // TODO
    });

    // List self-hosted runners for an enterprise
    //
    // Lists all self-hosted runners configured for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<InlineResponse2004> enterpriseAdminListSelfHostedRunnersForEnterprise(String enterprise, { int perPage, int page }) async
    test('test enterpriseAdminListSelfHostedRunnersForEnterprise', () async {
      // TODO
    });

    // List self-hosted runners in a group for an enterprise
    //
    // Lists the self-hosted runners that are in a specific enterprise group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<InlineResponse2003> enterpriseAdminListSelfHostedRunnersInGroupForEnterprise(String enterprise, int runnerGroupId, { int perPage, int page }) async
    test('test enterpriseAdminListSelfHostedRunnersInGroupForEnterprise', () async {
      // TODO
    });

    // Provision a SCIM enterprise group and invite users
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision an enterprise group, and invite users to the group. This sends invitation emails to the email address of the invited users to join the GitHub organization that the SCIM group corresponds to.
    //
    //Future<ScimEnterpriseGroup> enterpriseAdminProvisionAndInviteEnterpriseGroup(String enterprise, { InlineObject154 inlineObject154 }) async
    test('test enterpriseAdminProvisionAndInviteEnterpriseGroup', () async {
      // TODO
    });

    // Provision and invite a SCIM enterprise user
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision enterprise membership for a user, and send organization invitation emails to the email address.  You can optionally include the groups a user will be invited to join. If you do not provide a list of `groups`, the user is provisioned for the enterprise, but no organization invitation emails will be sent.
    //
    //Future<ScimEnterpriseUser> enterpriseAdminProvisionAndInviteEnterpriseUser(String enterprise, { InlineObject157 inlineObject157 }) async
    test('test enterpriseAdminProvisionAndInviteEnterpriseUser', () async {
      // TODO
    });

    // Remove organization access to a self-hosted runner group in an enterprise
    //
    // Removes an organization from the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see \"[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, int orgId) async
    test('test enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise', () async {
      // TODO
    });

    // Remove a self-hosted runner from a group for an enterprise
    //
    // Removes a self-hosted runner from a group configured in an enterprise. The runner is then returned to the default group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise(String enterprise, int runnerGroupId, int runnerId) async
    test('test enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise', () async {
      // TODO
    });

    // Set allowed actions for an enterprise
    //
    // Sets the actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for `allowed_actions` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminSetAllowedActionsEnterprise(String enterprise, { SelectedActions selectedActions }) async
    test('test enterpriseAdminSetAllowedActionsEnterprise', () async {
      // TODO
    });

    // Set GitHub Actions permissions for an enterprise
    //
    // Sets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminSetGithubActionsPermissionsEnterprise(String enterprise, { InlineObject12 inlineObject12 }) async
    test('test enterpriseAdminSetGithubActionsPermissionsEnterprise', () async {
      // TODO
    });

    // Set SCIM information for a provisioned enterprise group
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned group’s information. You must provide all the information required for the group as if you were provisioning it for the first time. Any existing group information that you don't provide will be removed, including group membership. If you want to only update a specific attribute, use the [Update an attribute for a SCIM enterprise group](#update-an-attribute-for-a-scim-enterprise-group) endpoint instead.
    //
    //Future<ScimEnterpriseGroup> enterpriseAdminSetInformationForProvisionedEnterpriseGroup(String enterprise, String scimGroupId, { InlineObject155 inlineObject155 }) async
    test('test enterpriseAdminSetInformationForProvisionedEnterpriseGroup', () async {
      // TODO
    });

    // Set SCIM information for a provisioned enterprise user
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned user's information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don't provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](#update-an-attribute-for-an-enterprise-scim-user) endpoint instead.  You must at least provide the required values for the user: `userName`, `name`, and `emails`.  **Warning:** Setting `active: false` removes the user from the enterprise, deletes the external identity, and deletes the associated `{scim_user_id}`.
    //
    //Future<ScimEnterpriseUser> enterpriseAdminSetInformationForProvisionedEnterpriseUser(String enterprise, String scimUserId, { InlineObject158 inlineObject158 }) async
    test('test enterpriseAdminSetInformationForProvisionedEnterpriseUser', () async {
      // TODO
    });

    // Set organization access for a self-hosted runner group in an enterprise
    //
    // Replaces the list of organizations that have access to a self-hosted runner configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, { InlineObject16 inlineObject16 }) async
    test('test enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise', () async {
      // TODO
    });

    // Set selected organizations enabled for GitHub Actions in an enterprise
    //
    // Replaces the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise(String enterprise, { InlineObject13 inlineObject13 }) async
    test('test enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise', () async {
      // TODO
    });

    // Set self-hosted runners in a group for an enterprise
    //
    // Replaces the list of self-hosted runners that are part of an enterprise runner group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise(String enterprise, int runnerGroupId, { InlineObject17 inlineObject17 }) async
    test('test enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise', () async {
      // TODO
    });

    // Update an attribute for a SCIM enterprise group
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned group’s individual attributes. To change a group’s values, you must provide a specific Operations JSON format that contains at least one of the add, remove, or replace operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).
    //
    //Future<ScimEnterpriseGroup> enterpriseAdminUpdateAttributeForEnterpriseGroup(String enterprise, String scimGroupId, { InlineObject156 inlineObject156 }) async
    test('test enterpriseAdminUpdateAttributeForEnterpriseGroup', () async {
      // TODO
    });

    // Update an attribute for a SCIM enterprise user
    //
    // **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned user's individual attributes. To change a user's values, you must provide a specific `Operations` JSON format that contains at least one of the `add`, `remove`, or `replace` operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM `path` selectors that include filters are not supported. For example, a `path` selector defined as `\"path\": \"emails[type eq \\\"work\\\"]\"` will not work.  **Warning:** If you set `active:false` using the `replace` operation (as shown in the JSON example below), it removes the user from the enterprise, deletes the external identity, and deletes the associated `:scim_user_id`.  ``` {   \"Operations\":[{     \"op\":\"replace\",     \"value\":{       \"active\":false     }   }] } ```
    //
    //Future<ScimEnterpriseUser> enterpriseAdminUpdateAttributeForEnterpriseUser(String enterprise, String scimUserId, { InlineObject159 inlineObject159 }) async
    test('test enterpriseAdminUpdateAttributeForEnterpriseUser', () async {
      // TODO
    });

    // Update a self-hosted runner group for an enterprise
    //
    // Updates the `name` and `visibility` of a self-hosted runner group in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    //
    //Future<RunnerGroupsEnterprise> enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise(String enterprise, int runnerGroupId, { InlineObject15 inlineObject15 }) async
    test('test enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise', () async {
      // TODO
    });

  });
}
