//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for ProjectsApi
void main() {
  final instance = ProjectsApi();

  group('tests for ProjectsApi', () {
    // Add project collaborator
    //
    // Adds a collaborator to an organization project and sets their permission level. You must be an organization owner or a project `admin` to add a collaborator.
    //
    //Future projectsAddCollaborator(int projectId, String username, { InlineObject58 inlineObject58 }) async
    test('test projectsAddCollaborator', () async {
      // TODO
    });

    // Create a project card
    //
    // **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key.  Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)\" endpoint.
    //
    //Future<ProjectCard> projectsCreateCard(int columnId, { UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE }) async
    test('test projectsCreateCard', () async {
      // TODO
    });

    // Create a project column
    //
    //Future<ProjectColumn> projectsCreateColumn(int projectId, { InlineObject59 inlineObject59 }) async
    test('test projectsCreateColumn', () async {
      // TODO
    });

    // Create a user project
    //
    //Future<Project> projectsCreateForAuthenticatedUser({ InlineObject180 inlineObject180 }) async
    test('test projectsCreateForAuthenticatedUser', () async {
      // TODO
    });

    // Create an organization project
    //
    // Creates an organization project board. Returns a `404 Not Found` status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.
    //
    //Future<Project> projectsCreateForOrg(String org, { InlineObject39 inlineObject39 }) async
    test('test projectsCreateForOrg', () async {
      // TODO
    });

    // Create a repository project
    //
    // Creates a repository project board. Returns a `404 Not Found` status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.
    //
    //Future<Project> projectsCreateForRepo(String owner, String repo, { InlineObject130 inlineObject130 }) async
    test('test projectsCreateForRepo', () async {
      // TODO
    });

    // Delete a project
    //
    // Deletes a project board. Returns a `404 Not Found` status if projects are disabled.
    //
    //Future projectsDelete(int projectId) async
    test('test projectsDelete', () async {
      // TODO
    });

    // Delete a project card
    //
    //Future projectsDeleteCard(int cardId) async
    test('test projectsDeleteCard', () async {
      // TODO
    });

    // Delete a project column
    //
    //Future projectsDeleteColumn(int columnId) async
    test('test projectsDeleteColumn', () async {
      // TODO
    });

    // Get a project
    //
    // Gets a project by its `id`. Returns a `404 Not Found` status if projects are disabled. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.
    //
    //Future<Project> projectsGet(int projectId) async
    test('test projectsGet', () async {
      // TODO
    });

    // Get a project card
    //
    //Future<ProjectCard> projectsGetCard(int cardId) async
    test('test projectsGetCard', () async {
      // TODO
    });

    // Get a project column
    //
    //Future<ProjectColumn> projectsGetColumn(int columnId) async
    test('test projectsGetColumn', () async {
      // TODO
    });

    // Get project permission for a user
    //
    // Returns the collaborator's permission level for an organization project. Possible values for the `permission` key: `admin`, `write`, `read`, `none`. You must be an organization owner or a project `admin` to review a user's permission level.
    //
    //Future<RepositoryCollaboratorPermission> projectsGetPermissionForUser(int projectId, String username) async
    test('test projectsGetPermissionForUser', () async {
      // TODO
    });

    // List project cards
    //
    //Future<List<ProjectCard>> projectsListCards(int columnId, { String archivedState, int perPage, int page }) async
    test('test projectsListCards', () async {
      // TODO
    });

    // List project collaborators
    //
    // Lists the collaborators for an organization project. For a project, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners. You must be an organization owner or a project `admin` to list collaborators.
    //
    //Future<List<SimpleUser>> projectsListCollaborators(int projectId, { String affiliation, int perPage, int page }) async
    test('test projectsListCollaborators', () async {
      // TODO
    });

    // List project columns
    //
    //Future<List<ProjectColumn>> projectsListColumns(int projectId, { int perPage, int page }) async
    test('test projectsListColumns', () async {
      // TODO
    });

    // List organization projects
    //
    // Lists the projects in an organization. Returns a `404 Not Found` status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.
    //
    //Future<List<Project>> projectsListForOrg(String org, { String state, int perPage, int page }) async
    test('test projectsListForOrg', () async {
      // TODO
    });

    // List repository projects
    //
    // Lists the projects in a repository. Returns a `404 Not Found` status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.
    //
    //Future<List<Project>> projectsListForRepo(String owner, String repo, { String state, int perPage, int page }) async
    test('test projectsListForRepo', () async {
      // TODO
    });

    // List user projects
    //
    //Future<List<Project>> projectsListForUser(String username, { String state, int perPage, int page }) async
    test('test projectsListForUser', () async {
      // TODO
    });

    // Move a project card
    //
    //Future<Object> projectsMoveCard(int cardId, { InlineObject54 inlineObject54 }) async
    test('test projectsMoveCard', () async {
      // TODO
    });

    // Move a project column
    //
    //Future<Object> projectsMoveColumn(int columnId, { InlineObject56 inlineObject56 }) async
    test('test projectsMoveColumn', () async {
      // TODO
    });

    // Remove user as a collaborator
    //
    // Removes a collaborator from an organization project. You must be an organization owner or a project `admin` to remove a collaborator.
    //
    //Future projectsRemoveCollaborator(int projectId, String username) async
    test('test projectsRemoveCollaborator', () async {
      // TODO
    });

    // Update a project
    //
    // Updates a project board's information. Returns a `404 Not Found` status if projects are disabled. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.
    //
    //Future<Project> projectsUpdate(int projectId, { InlineObject57 inlineObject57 }) async
    test('test projectsUpdate', () async {
      // TODO
    });

    // Update an existing project card
    //
    //Future<ProjectCard> projectsUpdateCard(int cardId, { InlineObject53 inlineObject53 }) async
    test('test projectsUpdateCard', () async {
      // TODO
    });

    // Update an existing project column
    //
    //Future<ProjectColumn> projectsUpdateColumn(int columnId, { InlineObject55 inlineObject55 }) async
    test('test projectsUpdateColumn', () async {
      // TODO
    });

  });
}
