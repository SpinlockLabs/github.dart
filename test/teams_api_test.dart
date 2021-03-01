//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for TeamsApi
void main() {
  final instance = TeamsApi();

  group('tests for TeamsApi', () {
    // Add team member (Legacy)
    //
    // The \"Add team member\" endpoint (described below) is deprecated.  We recommend using the [Add or update team membership for a user](https://docs.github.com/rest/reference/teams#add-or-update-team-membership-for-a-user) endpoint instead. It allows you to invite new organization members to your teams.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To add someone to a team, the authenticated user must be an organization owner or a team maintainer in the team they're changing. The person being added to the team must be a member of the team's organization.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    //
    //Future teamsAddMemberLegacy(int teamId, String username) async
    test('test teamsAddMemberLegacy', () async {
      // TODO
    });

    // Add or update team membership for a user
    //
    // Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Adds an organization member to a team. An authenticated organization owner or team maintainer can add organization members to a team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  An organization owner can add someone who is not part of the team's organization to a team. When an organization owner adds someone to a team who is not an organization member, this endpoint will send an invitation to the person via email. This newly-created membership will be in the \"pending\" state until the person accepts the invitation, at which point the membership will transition to the \"active\" state and the user will be added as a member of the team.  If the user is already a member of the team, this endpoint will update the role of the team member's role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PUT /organizations/{org_id}/team/{team_id}/memberships/{username}`.
    //
    //Future<TeamMembership> teamsAddOrUpdateMembershipForUserInOrg(String org, String teamSlug, String username, { InlineObject49 inlineObject49 }) async
    test('test teamsAddOrUpdateMembershipForUserInOrg', () async {
      // TODO
    });

    // Add or update team membership for a user (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team membership for a user](https://docs.github.com/rest/reference/teams#add-or-update-team-membership-for-a-user) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  If the user is already a member of the team's organization, this endpoint will add the user to the team. To add a membership between an organization member and a team, the authenticated user must be an organization owner or a team maintainer.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  If the user is unaffiliated with the team's organization, this endpoint will send an invitation to the user via email. This newly-created membership will be in the \"pending\" state until the user accepts the invitation, at which point the membership will transition to the \"active\" state and the user will be added as a member of the team. To add a membership between an unaffiliated user and a team, the authenticated user must be an organization owner.  If the user is already a member of the team, this endpoint will update the role of the team member's role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.
    //
    //Future<TeamMembership> teamsAddOrUpdateMembershipForUserLegacy(int teamId, String username, { InlineObject170 inlineObject170 }) async
    test('test teamsAddOrUpdateMembershipForUserLegacy', () async {
      // TODO
    });

    // Add or update team project permissions
    //
    // Adds an organization project to a team. To add a project to a team or update the team's permission on a project, the authenticated user must have `admin` permissions for the project. The project and team must be part of the same organization.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PUT /organizations/{org_id}/team/{team_id}/projects/{project_id}`.
    //
    //Future teamsAddOrUpdateProjectPermissionsInOrg(String org, String teamSlug, int projectId, { InlineObject50 inlineObject50 }) async
    test('test teamsAddOrUpdateProjectPermissionsInOrg', () async {
      // TODO
    });

    // Add or update team project permissions (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team project permissions](https://docs.github.com/rest/reference/teams#add-or-update-team-project-permissions) endpoint.  Adds an organization project to a team. To add a project to a team or update the team's permission on a project, the authenticated user must have `admin` permissions for the project. The project and team must be part of the same organization.
    //
    //Future teamsAddOrUpdateProjectPermissionsLegacy(int teamId, int projectId, { InlineObject171 inlineObject171 }) async
    test('test teamsAddOrUpdateProjectPermissionsLegacy', () async {
      // TODO
    });

    // Add or update team repository permissions
    //
    // To add a repository to a team or update the team's permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a `422 Unprocessable Entity` status if you attempt to add a repository to a team that is not owned by the organization. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PUT /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}`.  For more information about the permission levels, see \"[Repository permission levels for an organization](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization)\".
    //
    //Future teamsAddOrUpdateRepoPermissionsInOrg(String org, String teamSlug, String owner, String repo, { InlineObject51 inlineObject51 }) async
    test('test teamsAddOrUpdateRepoPermissionsInOrg', () async {
      // TODO
    });

    // Add or update team repository permissions (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new \"[Add or update team repository permissions](https://docs.github.com/rest/reference/teams#add-or-update-team-repository-permissions)\" endpoint.  To add a repository to a team or update the team's permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a `422 Unprocessable Entity` status if you attempt to add a repository to a team that is not owned by the organization.  Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    //
    //Future teamsAddOrUpdateRepoPermissionsLegacy(int teamId, String owner, String repo, { InlineObject172 inlineObject172 }) async
    test('test teamsAddOrUpdateRepoPermissionsLegacy', () async {
      // TODO
    });

    // Check team permissions for a project
    //
    // Checks whether a team has `read`, `write`, or `admin` permissions for an organization project. The response includes projects inherited from a parent team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/projects/{project_id}`.
    //
    //Future<TeamProject> teamsCheckPermissionsForProjectInOrg(String org, String teamSlug, int projectId) async
    test('test teamsCheckPermissionsForProjectInOrg', () async {
      // TODO
    });

    // Check team permissions for a project (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a project](https://docs.github.com/rest/reference/teams#check-team-permissions-for-a-project) endpoint.  Checks whether a team has `read`, `write`, or `admin` permissions for an organization project. The response includes projects inherited from a parent team.
    //
    //Future<TeamProject> teamsCheckPermissionsForProjectLegacy(int teamId, int projectId) async
    test('test teamsCheckPermissionsForProjectLegacy', () async {
      // TODO
    });

    // Check team permissions for a repository
    //
    // Checks whether a team has `admin`, `push`, `maintain`, `triage`, or `pull` permission for a repository. Repositories inherited through a parent team will also be checked.  You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://docs.github.com/rest/overview/media-types/) via the `application/vnd.github.v3.repository+json` accept header.  If a team doesn't have permission for the repository, you will receive a `404 Not Found` response status.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}`.
    //
    //Future<TeamRepository> teamsCheckPermissionsForRepoInOrg(String org, String teamSlug, String owner, String repo) async
    test('test teamsCheckPermissionsForRepoInOrg', () async {
      // TODO
    });

    // Check team permissions for a repository (Legacy)
    //
    // **Note**: Repositories inherited through a parent team will also be checked.  **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a repository](https://docs.github.com/rest/reference/teams#check-team-permissions-for-a-repository) endpoint.  You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://docs.github.com/rest/overview/media-types/) via the `Accept` header:
    //
    //Future<TeamRepository> teamsCheckPermissionsForRepoLegacy(int teamId, String owner, String repo) async
    test('test teamsCheckPermissionsForRepoLegacy', () async {
      // TODO
    });

    // Create a team
    //
    // To create a team, the authenticated user must be a member or owner of `{org}`. By default, organization members can create teams. Organization owners can limit team creation to organization owners. For more information, see \"[Setting team creation permissions](https://help.github.com/en/articles/setting-team-creation-permissions-in-your-organization).\"  When you create a new team, you automatically become a team maintainer without explicitly adding yourself to the optional array of `maintainers`. For more information, see \"[About teams](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/about-teams)\".
    //
    //Future<TeamFull> teamsCreate(String org, { InlineObject41 inlineObject41 }) async
    test('test teamsCreate', () async {
      // TODO
    });

    // Create a discussion comment
    //
    // Creates a new comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments`.
    //
    //Future<TeamDiscussionComment> teamsCreateDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, { InlineObject45 inlineObject45 }) async
    test('test teamsCreateDiscussionCommentInOrg', () async {
      // TODO
    });

    // Create a discussion comment (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Create a discussion comment](https://docs.github.com/rest/reference/teams#create-a-discussion-comment) endpoint.  Creates a new comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    //
    //Future<TeamDiscussionComment> teamsCreateDiscussionCommentLegacy(int teamId, int discussionNumber, { InlineObject166 inlineObject166 }) async
    test('test teamsCreateDiscussionCommentLegacy', () async {
      // TODO
    });

    // Create a discussion
    //
    // Creates a new discussion post on a team's page. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/{org_id}/team/{team_id}/discussions`.
    //
    //Future<TeamDiscussion> teamsCreateDiscussionInOrg(String org, String teamSlug, { InlineObject43 inlineObject43 }) async
    test('test teamsCreateDiscussionInOrg', () async {
      // TODO
    });

    // Create a discussion (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create a discussion`](https://docs.github.com/rest/reference/teams#create-a-discussion) endpoint.  Creates a new discussion post on a team's page. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    //
    //Future<TeamDiscussion> teamsCreateDiscussionLegacy(int teamId, { InlineObject164 inlineObject164 }) async
    test('test teamsCreateDiscussionLegacy', () async {
      // TODO
    });

    // Create or update IdP group connections
    //
    // Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Creates, updates, or removes a connection between a team and an IdP group. When adding groups to a team, you must include all new and existing groups to avoid replacing existing groups with the new ones. Specifying an empty `groups` array will remove all connections for a team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/team-sync/group-mappings`.
    //
    //Future<GroupMapping> teamsCreateOrUpdateIdpGroupConnectionsInOrg(String org, String teamSlug, { InlineObject52 inlineObject52 }) async
    test('test teamsCreateOrUpdateIdpGroupConnectionsInOrg', () async {
      // TODO
    });

    // Create or update IdP group connections (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create or update IdP group connections`](https://docs.github.com/rest/reference/teams#create-or-update-idp-group-connections) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Creates, updates, or removes a connection between a team and an IdP group. When adding groups to a team, you must include all new and existing groups to avoid replacing existing groups with the new ones. Specifying an empty `groups` array will remove all connections for a team.
    //
    //Future<GroupMapping> teamsCreateOrUpdateIdpGroupConnectionsLegacy(int teamId, { InlineObject173 inlineObject173 }) async
    test('test teamsCreateOrUpdateIdpGroupConnectionsLegacy', () async {
      // TODO
    });

    // Delete a discussion comment
    //
    // Deletes a comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}`.
    //
    //Future teamsDeleteDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber) async
    test('test teamsDeleteDiscussionCommentInOrg', () async {
      // TODO
    });

    // Delete a discussion comment (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a discussion comment](https://docs.github.com/rest/reference/teams#delete-a-discussion-comment) endpoint.  Deletes a comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future teamsDeleteDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber) async
    test('test teamsDeleteDiscussionCommentLegacy', () async {
      // TODO
    });

    // Delete a discussion
    //
    // Delete a discussion from a team's page. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.
    //
    //Future teamsDeleteDiscussionInOrg(String org, String teamSlug, int discussionNumber) async
    test('test teamsDeleteDiscussionInOrg', () async {
      // TODO
    });

    // Delete a discussion (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Delete a discussion`](https://docs.github.com/rest/reference/teams#delete-a-discussion) endpoint.  Delete a discussion from a team's page. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future teamsDeleteDiscussionLegacy(int teamId, int discussionNumber) async
    test('test teamsDeleteDiscussionLegacy', () async {
      // TODO
    });

    // Delete a team
    //
    // To delete a team, the authenticated user must be an organization owner or team maintainer.  If you are an organization owner, deleting a parent team will delete all of its child teams as well.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}`.
    //
    //Future teamsDeleteInOrg(String org, String teamSlug) async
    test('test teamsDeleteInOrg', () async {
      // TODO
    });

    // Delete a team (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a team](https://docs.github.com/rest/reference/teams#delete-a-team) endpoint.  To delete a team, the authenticated user must be an organization owner or team maintainer.  If you are an organization owner, deleting a parent team will delete all of its child teams as well.
    //
    //Future teamsDeleteLegacy(int teamId) async
    test('test teamsDeleteLegacy', () async {
      // TODO
    });

    // Get a team by name
    //
    // Gets a team using the team's `slug`. GitHub generates the `slug` from the team `name`.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}`.
    //
    //Future<TeamFull> teamsGetByName(String org, String teamSlug) async
    test('test teamsGetByName', () async {
      // TODO
    });

    // Get a discussion comment
    //
    // Get a specific comment on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}`.
    //
    //Future<TeamDiscussionComment> teamsGetDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber) async
    test('test teamsGetDiscussionCommentInOrg', () async {
      // TODO
    });

    // Get a discussion comment (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion comment](https://docs.github.com/rest/reference/teams#get-a-discussion-comment) endpoint.  Get a specific comment on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<TeamDiscussionComment> teamsGetDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber) async
    test('test teamsGetDiscussionCommentLegacy', () async {
      // TODO
    });

    // Get a discussion
    //
    // Get a specific discussion on a team's page. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.
    //
    //Future<TeamDiscussion> teamsGetDiscussionInOrg(String org, String teamSlug, int discussionNumber) async
    test('test teamsGetDiscussionInOrg', () async {
      // TODO
    });

    // Get a discussion (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion](https://docs.github.com/rest/reference/teams#get-a-discussion) endpoint.  Get a specific discussion on a team's page. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<TeamDiscussion> teamsGetDiscussionLegacy(int teamId, int discussionNumber) async
    test('test teamsGetDiscussionLegacy', () async {
      // TODO
    });

    // Get a team (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the [Get a team by name](https://docs.github.com/rest/reference/teams#get-a-team-by-name) endpoint.
    //
    //Future<TeamFull> teamsGetLegacy(int teamId) async
    test('test teamsGetLegacy', () async {
      // TODO
    });

    // Get team member (Legacy)
    //
    // The \"Get team member\" endpoint (described below) is deprecated.  We recommend using the [Get team membership for a user](https://docs.github.com/rest/reference/teams#get-team-membership-for-a-user) endpoint instead. It allows you to get both active and pending memberships.  To list members in a team, the team must be visible to the authenticated user.
    //
    //Future teamsGetMemberLegacy(int teamId, String username) async
    test('test teamsGetMemberLegacy', () async {
      // TODO
    });

    // Get team membership for a user
    //
    // Team members will include the members of child teams.  To get a user's membership with a team, the team must be visible to the authenticated user.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/memberships/{username}`.  **Note:** The `role` for organization owners returns as `maintainer`. For more information about `maintainer` roles, see [Create a team](https://docs.github.com/rest/reference/teams#create-a-team).
    //
    //Future<TeamMembership> teamsGetMembershipForUserInOrg(String org, String teamSlug, String username) async
    test('test teamsGetMembershipForUserInOrg', () async {
      // TODO
    });

    // Get team membership for a user (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get team membership for a user](https://docs.github.com/rest/reference/teams#get-team-membership-for-a-user) endpoint.  Team members will include the members of child teams.  To get a user's membership with a team, the team must be visible to the authenticated user.  **Note:** The `role` for organization owners returns as `maintainer`. For more information about `maintainer` roles, see [Create a team](https://docs.github.com/rest/reference/teams#create-a-team).
    //
    //Future<TeamMembership> teamsGetMembershipForUserLegacy(int teamId, String username) async
    test('test teamsGetMembershipForUserLegacy', () async {
      // TODO
    });

    // List teams
    //
    // Lists all teams in an organization that are visible to the authenticated user.
    //
    //Future<List<Team>> teamsList(String org, { int perPage, int page }) async
    test('test teamsList', () async {
      // TODO
    });

    // List child teams
    //
    // Lists the child teams of the team specified by `{team_slug}`.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/teams`.
    //
    //Future<List<Team>> teamsListChildInOrg(String org, String teamSlug, { int perPage, int page }) async
    test('test teamsListChildInOrg', () async {
      // TODO
    });

    // List child teams (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List child teams`](https://docs.github.com/rest/reference/teams#list-child-teams) endpoint.
    //
    //Future<List<Team>> teamsListChildLegacy(int teamId, { int perPage, int page }) async
    test('test teamsListChildLegacy', () async {
      // TODO
    });

    // List discussion comments
    //
    // List all comments on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments`.
    //
    //Future<List<TeamDiscussionComment>> teamsListDiscussionCommentsInOrg(String org, String teamSlug, int discussionNumber, { String direction, int perPage, int page }) async
    test('test teamsListDiscussionCommentsInOrg', () async {
      // TODO
    });

    // List discussion comments (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List discussion comments](https://docs.github.com/rest/reference/teams#list-discussion-comments) endpoint.  List all comments on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<List<TeamDiscussionComment>> teamsListDiscussionCommentsLegacy(int teamId, int discussionNumber, { String direction, int perPage, int page }) async
    test('test teamsListDiscussionCommentsLegacy', () async {
      // TODO
    });

    // List discussions
    //
    // List all discussions on a team's page. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions`.
    //
    //Future<List<TeamDiscussion>> teamsListDiscussionsInOrg(String org, String teamSlug, { String direction, int perPage, int page }) async
    test('test teamsListDiscussionsInOrg', () async {
      // TODO
    });

    // List discussions (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List discussions`](https://docs.github.com/rest/reference/teams#list-discussions) endpoint.  List all discussions on a team's page. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<List<TeamDiscussion>> teamsListDiscussionsLegacy(int teamId, { String direction, int perPage, int page }) async
    test('test teamsListDiscussionsLegacy', () async {
      // TODO
    });

    // List teams for the authenticated user
    //
    // List all of the teams across all of the organizations to which the authenticated user belongs. This method requires `user`, `repo`, or `read:org` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/) when authenticating via [OAuth](https://docs.github.com/apps/building-oauth-apps/).
    //
    //Future<List<TeamFull>> teamsListForAuthenticatedUser({ int perPage, int page }) async
    test('test teamsListForAuthenticatedUser', () async {
      // TODO
    });

    // List IdP groups for a team (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List IdP groups for a team`](https://docs.github.com/rest/reference/teams#list-idp-groups-for-a-team) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups connected to a team on GitHub.
    //
    //Future<GroupMapping> teamsListIdpGroupsForLegacy(int teamId) async
    test('test teamsListIdpGroupsForLegacy', () async {
      // TODO
    });

    // List IdP groups for an organization
    //
    // Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups available in an organization. You can limit your page results using the `per_page` parameter. GitHub generates a url-encoded `page` token using a cursor value for where the next page begins. For more information on cursor pagination, see \"[Offset and Cursor Pagination explained](https://dev.to/jackmarchant/offset-and-cursor-pagination-explained-b89).\"  The `per_page` parameter provides pagination for a list of IdP groups the authenticated user can access in an organization. For example, if the user `octocat` wants to see two groups per page in `octo-org` via cURL, it would look like this:
    //
    //Future<GroupMapping> teamsListIdpGroupsForOrg(String org, { int perPage, int page }) async
    test('test teamsListIdpGroupsForOrg', () async {
      // TODO
    });

    // List IdP groups for a team
    //
    // Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups connected to a team on GitHub.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/team-sync/group-mappings`.
    //
    //Future<GroupMapping> teamsListIdpGroupsInOrg(String org, String teamSlug) async
    test('test teamsListIdpGroupsInOrg', () async {
      // TODO
    });

    // List team members
    //
    // Team members will include the members of child teams.  To list members in a team, the team must be visible to the authenticated user.
    //
    //Future<List<SimpleUser>> teamsListMembersInOrg(String org, String teamSlug, { String role, int perPage, int page }) async
    test('test teamsListMembersInOrg', () async {
      // TODO
    });

    // List team members (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List team members`](https://docs.github.com/rest/reference/teams#list-team-members) endpoint.  Team members will include the members of child teams.
    //
    //Future<List<SimpleUser>> teamsListMembersLegacy(int teamId, { String role, int perPage, int page }) async
    test('test teamsListMembersLegacy', () async {
      // TODO
    });

    // List pending team invitations
    //
    // The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/invitations`.
    //
    //Future<List<OrganizationInvitation>> teamsListPendingInvitationsInOrg(String org, String teamSlug, { int perPage, int page }) async
    test('test teamsListPendingInvitationsInOrg', () async {
      // TODO
    });

    // List pending team invitations (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List pending team invitations`](https://docs.github.com/rest/reference/teams#list-pending-team-invitations) endpoint.  The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.
    //
    //Future<List<OrganizationInvitation>> teamsListPendingInvitationsLegacy(int teamId, { int perPage, int page }) async
    test('test teamsListPendingInvitationsLegacy', () async {
      // TODO
    });

    // List team projects
    //
    // Lists the organization projects for a team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/projects`.
    //
    //Future<List<TeamProject>> teamsListProjectsInOrg(String org, String teamSlug, { int perPage, int page }) async
    test('test teamsListProjectsInOrg', () async {
      // TODO
    });

    // List team projects (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List team projects`](https://docs.github.com/rest/reference/teams#list-team-projects) endpoint.  Lists the organization projects for a team.
    //
    //Future<List<TeamProject>> teamsListProjectsLegacy(int teamId, { int perPage, int page }) async
    test('test teamsListProjectsLegacy', () async {
      // TODO
    });

    // List team repositories
    //
    // Lists a team's repositories visible to the authenticated user.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/repos`.
    //
    //Future<List<MinimalRepository>> teamsListReposInOrg(String org, String teamSlug, { int perPage, int page }) async
    test('test teamsListReposInOrg', () async {
      // TODO
    });

    // List team repositories (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List team repositories](https://docs.github.com/rest/reference/teams#list-team-repositories) endpoint.
    //
    //Future<List<MinimalRepository>> teamsListReposLegacy(int teamId, { int perPage, int page }) async
    test('test teamsListReposLegacy', () async {
      // TODO
    });

    // Remove team member (Legacy)
    //
    // The \"Remove team member\" endpoint (described below) is deprecated.  We recommend using the [Remove team membership for a user](https://docs.github.com/rest/reference/teams#remove-team-membership-for-a-user) endpoint instead. It allows you to remove both active and pending memberships.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a team member, the authenticated user must have 'admin' permissions to the team or be an owner of the org that the team is associated with. Removing a team member does not delete the user, it just removes them from the team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"
    //
    //Future teamsRemoveMemberLegacy(int teamId, String username) async
    test('test teamsRemoveMemberLegacy', () async {
      // TODO
    });

    // Remove team membership for a user
    //
    // Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a membership between a user and a team, the authenticated user must have 'admin' permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/memberships/{username}`.
    //
    //Future teamsRemoveMembershipForUserInOrg(String org, String teamSlug, String username) async
    test('test teamsRemoveMembershipForUserInOrg', () async {
      // TODO
    });

    // Remove team membership for a user (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove team membership for a user](https://docs.github.com/rest/reference/teams#remove-team-membership-for-a-user) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a membership between a user and a team, the authenticated user must have 'admin' permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"
    //
    //Future teamsRemoveMembershipForUserLegacy(int teamId, String username) async
    test('test teamsRemoveMembershipForUserLegacy', () async {
      // TODO
    });

    // Remove a project from a team
    //
    // Removes an organization project from a team. An organization owner or a team maintainer can remove any project from the team. To remove a project from a team as an organization member, the authenticated user must have `read` access to both the team and project, or `admin` access to the team or project. This endpoint removes the project from the team, but does not delete the project.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/projects/{project_id}`.
    //
    //Future teamsRemoveProjectInOrg(String org, String teamSlug, int projectId) async
    test('test teamsRemoveProjectInOrg', () async {
      // TODO
    });

    // Remove a project from a team (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a project from a team](https://docs.github.com/rest/reference/teams#remove-a-project-from-a-team) endpoint.  Removes an organization project from a team. An organization owner or a team maintainer can remove any project from the team. To remove a project from a team as an organization member, the authenticated user must have `read` access to both the team and project, or `admin` access to the team or project. **Note:** This endpoint removes the project from the team, but does not delete it.
    //
    //Future teamsRemoveProjectLegacy(int teamId, int projectId) async
    test('test teamsRemoveProjectLegacy', () async {
      // TODO
    });

    // Remove a repository from a team
    //
    // If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. This does not delete the repository, it just removes it from the team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}`.
    //
    //Future teamsRemoveRepoInOrg(String org, String teamSlug, String owner, String repo) async
    test('test teamsRemoveRepoInOrg', () async {
      // TODO
    });

    // Remove a repository from a team (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a repository from a team](https://docs.github.com/rest/reference/teams#remove-a-repository-from-a-team) endpoint.  If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. NOTE: This does not delete the repository, it just removes it from the team.
    //
    //Future teamsRemoveRepoLegacy(int teamId, String owner, String repo) async
    test('test teamsRemoveRepoLegacy', () async {
      // TODO
    });

    // Update a discussion comment
    //
    // Edits the body text of a discussion comment. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}`.
    //
    //Future<TeamDiscussionComment> teamsUpdateDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber, { InlineObject46 inlineObject46 }) async
    test('test teamsUpdateDiscussionCommentInOrg', () async {
      // TODO
    });

    // Update a discussion comment (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion comment](https://docs.github.com/rest/reference/teams#update-a-discussion-comment) endpoint.  Edits the body text of a discussion comment. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<TeamDiscussionComment> teamsUpdateDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber, { InlineObject167 inlineObject167 }) async
    test('test teamsUpdateDiscussionCommentLegacy', () async {
      // TODO
    });

    // Update a discussion
    //
    // Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.
    //
    //Future<TeamDiscussion> teamsUpdateDiscussionInOrg(String org, String teamSlug, int discussionNumber, { InlineObject44 inlineObject44 }) async
    test('test teamsUpdateDiscussionInOrg', () async {
      // TODO
    });

    // Update a discussion (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion](https://docs.github.com/rest/reference/teams#update-a-discussion) endpoint.  Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<TeamDiscussion> teamsUpdateDiscussionLegacy(int teamId, int discussionNumber, { InlineObject165 inlineObject165 }) async
    test('test teamsUpdateDiscussionLegacy', () async {
      // TODO
    });

    // Update a team
    //
    // To edit a team, the authenticated user must either be an organization owner or a team maintainer.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}`.
    //
    //Future<TeamFull> teamsUpdateInOrg(String org, String teamSlug, { InlineObject42 inlineObject42 }) async
    test('test teamsUpdateInOrg', () async {
      // TODO
    });

    // Update a team (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a team](https://docs.github.com/rest/reference/teams#update-a-team) endpoint.  To edit a team, the authenticated user must either be an organization owner or a team maintainer.  **Note:** With nested teams, the `privacy` for parent teams cannot be `secret`.
    //
    //Future<TeamFull> teamsUpdateLegacy(int teamId, { InlineObject163 inlineObject163 }) async
    test('test teamsUpdateLegacy', () async {
      // TODO
    });

  });
}
