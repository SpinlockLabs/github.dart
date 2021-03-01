//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for InteractionsApi
void main() {
  final instance = InteractionsApi();

  group('tests for InteractionsApi', () {
    // Get interaction restrictions for your public repositories
    //
    // Shows which type of GitHub user can interact with your public repositories and when the restriction expires. If there are no restrictions, you will see an empty response.
    //
    //Future<InteractionLimitResponse> interactionsGetRestrictionsForAuthenticatedUser() async
    test('test interactionsGetRestrictionsForAuthenticatedUser', () async {
      // TODO
    });

    // Get interaction restrictions for an organization
    //
    // Shows which type of GitHub user can interact with this organization and when the restriction expires. If there is no restrictions, you will see an empty response.
    //
    //Future<InteractionLimitResponse> interactionsGetRestrictionsForOrg(String org) async
    test('test interactionsGetRestrictionsForOrg', () async {
      // TODO
    });

    // Get interaction restrictions for a repository
    //
    // Shows which type of GitHub user can interact with this repository and when the restriction expires. If there are no restrictions, you will see an empty response.
    //
    //Future<InteractionLimitResponse> interactionsGetRestrictionsForRepo(String owner, String repo) async
    test('test interactionsGetRestrictionsForRepo', () async {
      // TODO
    });

    // Remove interaction restrictions from your public repositories
    //
    // Removes any interaction restrictions from your public repositories.
    //
    //Future interactionsRemoveRestrictionsForAuthenticatedUser() async
    test('test interactionsRemoveRestrictionsForAuthenticatedUser', () async {
      // TODO
    });

    // Remove interaction restrictions for an organization
    //
    // Removes all interaction restrictions from public repositories in the given organization. You must be an organization owner to remove restrictions.
    //
    //Future interactionsRemoveRestrictionsForOrg(String org) async
    test('test interactionsRemoveRestrictionsForOrg', () async {
      // TODO
    });

    // Remove interaction restrictions for a repository
    //
    // Removes all interaction restrictions from the given repository. You must have owner or admin access to remove restrictions. If the interaction limit is set for the user or organization that owns this repository, you will receive a `409 Conflict` response and will not be able to use this endpoint to change the interaction limit for a single repository.
    //
    //Future interactionsRemoveRestrictionsForRepo(String owner, String repo) async
    test('test interactionsRemoveRestrictionsForRepo', () async {
      // TODO
    });

    // Set interaction restrictions for your public repositories
    //
    // Temporarily restricts which type of GitHub user can interact with your public repositories. Setting the interaction limit at the user level will overwrite any interaction limits that are set for individual repositories owned by the user.
    //
    //Future<InteractionLimitResponse> interactionsSetRestrictionsForAuthenticatedUser({ InteractionLimit interactionLimit }) async
    test('test interactionsSetRestrictionsForAuthenticatedUser', () async {
      // TODO
    });

    // Set interaction restrictions for an organization
    //
    // Temporarily restricts interactions to a certain type of GitHub user in any public repository in the given organization. You must be an organization owner to set these restrictions. Setting the interaction limit at the organization level will overwrite any interaction limits that are set for individual repositories owned by the organization.
    //
    //Future<InteractionLimitResponse> interactionsSetRestrictionsForOrg(String org, { InteractionLimit interactionLimit }) async
    test('test interactionsSetRestrictionsForOrg', () async {
      // TODO
    });

    // Set interaction restrictions for a repository
    //
    // Temporarily restricts interactions to a certain type of GitHub user within the given repository. You must have owner or admin access to set these restrictions. If an interaction limit is set for the user or organization that owns this repository, you will receive a `409 Conflict` response and will not be able to use this endpoint to change the interaction limit for a single repository.
    //
    //Future<InteractionLimitResponse> interactionsSetRestrictionsForRepo(String owner, String repo, { InteractionLimit interactionLimit }) async
    test('test interactionsSetRestrictionsForRepo', () async {
      // TODO
    });

  });
}
