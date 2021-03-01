//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for ScimApi
void main() {
  final instance = ScimApi();

  group('tests for ScimApi', () {
    // Delete a SCIM user from an organization
    //
    //Future scimDeleteUserFromOrg(String org, String scimUserId) async
    test('test scimDeleteUserFromOrg', () async {
      // TODO
    });

    // Get SCIM provisioning information for a user
    //
    //Future<ScimUser> scimGetProvisioningInformationForUser(String org, String scimUserId) async
    test('test scimGetProvisioningInformationForUser', () async {
      // TODO
    });

    // List SCIM provisioned identities
    //
    // Retrieves a paginated list of all provisioned organization members, including pending invitations. If you provide the `filter` parameter, the resources for all matching provisions members are returned.  When a user with a SAML-provisioned external identity leaves (or is removed from) an organization, the account's metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an organization, the account's metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee's email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a `null` user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub organization.  1. The user attempts to access the GitHub organization and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the `null` external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub organization, and the external identity `null` entry remains in place.
    //
    //Future<ScimUserList> scimListProvisionedIdentities(String org, { int startIndex, int count, String filter }) async
    test('test scimListProvisionedIdentities', () async {
      // TODO
    });

    // Provision and invite a SCIM user
    //
    // Provision organization membership for a user, and send an activation email to the email address.
    //
    //Future<ScimUser> scimProvisionAndInviteUser(String org, { InlineObject160 inlineObject160 }) async
    test('test scimProvisionAndInviteUser', () async {
      // TODO
    });

    // Update a provisioned organization membership
    //
    // Replaces an existing provisioned user's information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don't provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](https://docs.github.com/rest/reference/scim#update-an-attribute-for-a-scim-user) endpoint instead.  You must at least provide the required values for the user: `userName`, `name`, and `emails`.  **Warning:** Setting `active: false` removes the user from the organization, deletes the external identity, and deletes the associated `{scim_user_id}`.
    //
    //Future<ScimUser> scimSetInformationForProvisionedUser(String org, String scimUserId, { InlineObject161 inlineObject161 }) async
    test('test scimSetInformationForProvisionedUser', () async {
      // TODO
    });

    // Update an attribute for a SCIM user
    //
    // Allows you to change a provisioned user's individual attributes. To change a user's values, you must provide a specific `Operations` JSON format that contains at least one of the `add`, `remove`, or `replace` operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM `path` selectors that include filters are not supported. For example, a `path` selector defined as `\"path\": \"emails[type eq \\\"work\\\"]\"` will not work.  **Warning:** If you set `active:false` using the `replace` operation (as shown in the JSON example below), it removes the user from the organization, deletes the external identity, and deletes the associated `:scim_user_id`.  ``` {   \"Operations\":[{     \"op\":\"replace\",     \"value\":{       \"active\":false     }   }] } ```
    //
    //Future<ScimUser> scimUpdateAttributeForUser(String org, String scimUserId, { InlineObject162 inlineObject162 }) async
    test('test scimUpdateAttributeForUser', () async {
      // TODO
    });

  });
}
