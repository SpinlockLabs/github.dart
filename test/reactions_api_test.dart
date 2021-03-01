//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for ReactionsApi
void main() {
  final instance = ReactionsApi();

  group('tests for ReactionsApi', () {
    // Create reaction for a commit comment
    //
    // Create a reaction to a [commit comment](https://docs.github.com/rest/reference/repos#comments). A response with a `Status: 200 OK` means that you already added the reaction type to this commit comment.
    //
    //Future<Reaction> reactionsCreateForCommitComment(String owner, String repo, int commentId, { InlineObject87 inlineObject87 }) async
    test('test reactionsCreateForCommitComment', () async {
      // TODO
    });

    // Create reaction for an issue
    //
    // Create a reaction to an [issue](https://docs.github.com/rest/reference/issues/). A response with a `Status: 200 OK` means that you already added the reaction type to this issue.
    //
    //Future<Reaction> reactionsCreateForIssue(String owner, String repo, int issueNumber, { InlineObject120 inlineObject120 }) async
    test('test reactionsCreateForIssue', () async {
      // TODO
    });

    // Create reaction for an issue comment
    //
    // Create a reaction to an [issue comment](https://docs.github.com/rest/reference/issues#comments). A response with a `Status: 200 OK` means that you already added the reaction type to this issue comment.
    //
    //Future<Reaction> reactionsCreateForIssueComment(String owner, String repo, int commentId, { InlineObject112 inlineObject112 }) async
    test('test reactionsCreateForIssueComment', () async {
      // TODO
    });

    // Create reaction for a pull request review comment
    //
    // Create a reaction to a [pull request review comment](https://docs.github.com/rest/reference/pulls#comments). A response with a `Status: 200 OK` means that you already added the reaction type to this pull request review comment.
    //
    //Future<Reaction> reactionsCreateForPullRequestReviewComment(String owner, String repo, int commentId, { InlineObject133 inlineObject133 }) async
    test('test reactionsCreateForPullRequestReviewComment', () async {
      // TODO
    });

    // Create reaction for a team discussion comment
    //
    // Create a reaction to a [team discussion comment](https://docs.github.com/rest/reference/teams#discussion-comments). OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion comment.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions`.
    //
    //Future<Reaction> reactionsCreateForTeamDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber, { InlineObject47 inlineObject47 }) async
    test('test reactionsCreateForTeamDiscussionCommentInOrg', () async {
      // TODO
    });

    // Create reaction for a team discussion comment (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new \"[Create reaction for a team discussion comment](https://docs.github.com/rest/reference/reactions#create-reaction-for-a-team-discussion-comment)\" endpoint.  Create a reaction to a [team discussion comment](https://docs.github.com/rest/reference/teams#discussion-comments). OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion comment.
    //
    //Future<Reaction> reactionsCreateForTeamDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber, { InlineObject168 inlineObject168 }) async
    test('test reactionsCreateForTeamDiscussionCommentLegacy', () async {
      // TODO
    });

    // Create reaction for a team discussion
    //
    // Create a reaction to a [team discussion](https://docs.github.com/rest/reference/teams#discussions). OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions`.
    //
    //Future<Reaction> reactionsCreateForTeamDiscussionInOrg(String org, String teamSlug, int discussionNumber, { InlineObject48 inlineObject48 }) async
    test('test reactionsCreateForTeamDiscussionInOrg', () async {
      // TODO
    });

    // Create reaction for a team discussion (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create reaction for a team discussion`](https://docs.github.com/rest/reference/reactions#create-reaction-for-a-team-discussion) endpoint.  Create a reaction to a [team discussion](https://docs.github.com/rest/reference/teams#discussions). OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion.
    //
    //Future<Reaction> reactionsCreateForTeamDiscussionLegacy(int teamId, int discussionNumber, { InlineObject169 inlineObject169 }) async
    test('test reactionsCreateForTeamDiscussionLegacy', () async {
      // TODO
    });

    // Delete a commit comment reaction
    //
    // **Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/comments/:comment_id/reactions/:reaction_id`.  Delete a reaction to a [commit comment](https://docs.github.com/rest/reference/repos#comments).
    //
    //Future reactionsDeleteForCommitComment(String owner, String repo, int commentId, int reactionId) async
    test('test reactionsDeleteForCommitComment', () async {
      // TODO
    });

    // Delete an issue reaction
    //
    // **Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/issues/:issue_number/reactions/:reaction_id`.  Delete a reaction to an [issue](https://docs.github.com/rest/reference/issues/).
    //
    //Future reactionsDeleteForIssue(String owner, String repo, int issueNumber, int reactionId) async
    test('test reactionsDeleteForIssue', () async {
      // TODO
    });

    // Delete an issue comment reaction
    //
    // **Note:** You can also specify a repository by `repository_id` using the route `DELETE delete /repositories/:repository_id/issues/comments/:comment_id/reactions/:reaction_id`.  Delete a reaction to an [issue comment](https://docs.github.com/rest/reference/issues#comments).
    //
    //Future reactionsDeleteForIssueComment(String owner, String repo, int commentId, int reactionId) async
    test('test reactionsDeleteForIssueComment', () async {
      // TODO
    });

    // Delete a pull request comment reaction
    //
    // **Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/pulls/comments/:comment_id/reactions/:reaction_id.`  Delete a reaction to a [pull request review comment](https://docs.github.com/rest/reference/pulls#review-comments).
    //
    //Future reactionsDeleteForPullRequestComment(String owner, String repo, int commentId, int reactionId) async
    test('test reactionsDeleteForPullRequestComment', () async {
      // TODO
    });

    // Delete team discussion reaction
    //
    // **Note:** You can also specify a team or organization with `team_id` and `org_id` using the route `DELETE /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions/:reaction_id`.  Delete a reaction to a [team discussion](https://docs.github.com/rest/reference/teams#discussions). OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future reactionsDeleteForTeamDiscussion(String org, String teamSlug, int discussionNumber, int reactionId) async
    test('test reactionsDeleteForTeamDiscussion', () async {
      // TODO
    });

    // Delete team discussion comment reaction
    //
    // **Note:** You can also specify a team or organization with `team_id` and `org_id` using the route `DELETE /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions/:reaction_id`.  Delete a reaction to a [team discussion comment](https://docs.github.com/rest/reference/teams#discussion-comments). OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future reactionsDeleteForTeamDiscussionComment(String org, String teamSlug, int discussionNumber, int commentNumber, int reactionId) async
    test('test reactionsDeleteForTeamDiscussionComment', () async {
      // TODO
    });

    // Delete a reaction (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Reactions API. We recommend migrating your existing code to use the new delete reactions endpoints. For more information, see this [blog post](https://developer.github.com/changes/2020-02-26-new-delete-reactions-endpoints/).  OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), when deleting a [team discussion](https://docs.github.com/rest/reference/teams#discussions) or [team discussion comment](https://docs.github.com/rest/reference/teams#discussion-comments).
    //
    //Future reactionsDeleteLegacy(int reactionId) async
    test('test reactionsDeleteLegacy', () async {
      // TODO
    });

    // List reactions for a commit comment
    //
    // List the reactions to a [commit comment](https://docs.github.com/rest/reference/repos#comments).
    //
    //Future<List<Reaction>> reactionsListForCommitComment(String owner, String repo, int commentId, { String content, int perPage, int page }) async
    test('test reactionsListForCommitComment', () async {
      // TODO
    });

    // List reactions for an issue
    //
    // List the reactions to an [issue](https://docs.github.com/rest/reference/issues).
    //
    //Future<List<Reaction>> reactionsListForIssue(String owner, String repo, int issueNumber, { String content, int perPage, int page }) async
    test('test reactionsListForIssue', () async {
      // TODO
    });

    // List reactions for an issue comment
    //
    // List the reactions to an [issue comment](https://docs.github.com/rest/reference/issues#comments).
    //
    //Future<List<Reaction>> reactionsListForIssueComment(String owner, String repo, int commentId, { String content, int perPage, int page }) async
    test('test reactionsListForIssueComment', () async {
      // TODO
    });

    // List reactions for a pull request review comment
    //
    // List the reactions to a [pull request review comment](https://docs.github.com/rest/reference/pulls#review-comments).
    //
    //Future<List<Reaction>> reactionsListForPullRequestReviewComment(String owner, String repo, int commentId, { String content, int perPage, int page }) async
    test('test reactionsListForPullRequestReviewComment', () async {
      // TODO
    });

    // List reactions for a team discussion comment
    //
    // List the reactions to a [team discussion comment](https://docs.github.com/rest/reference/teams#discussion-comments/). OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions`.
    //
    //Future<List<Reaction>> reactionsListForTeamDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber, { String content, int perPage, int page }) async
    test('test reactionsListForTeamDiscussionCommentInOrg', () async {
      // TODO
    });

    // List reactions for a team discussion comment (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List reactions for a team discussion comment`](https://docs.github.com/rest/reference/reactions#list-reactions-for-a-team-discussion-comment) endpoint.  List the reactions to a [team discussion comment](https://docs.github.com/rest/reference/teams#discussion-comments). OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<List<Reaction>> reactionsListForTeamDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber, { String content, int perPage, int page }) async
    test('test reactionsListForTeamDiscussionCommentLegacy', () async {
      // TODO
    });

    // List reactions for a team discussion
    //
    // List the reactions to a [team discussion](https://docs.github.com/rest/reference/teams#discussions). OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions`.
    //
    //Future<List<Reaction>> reactionsListForTeamDiscussionInOrg(String org, String teamSlug, int discussionNumber, { String content, int perPage, int page }) async
    test('test reactionsListForTeamDiscussionInOrg', () async {
      // TODO
    });

    // List reactions for a team discussion (Legacy)
    //
    // **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List reactions for a team discussion`](https://docs.github.com/rest/reference/reactions#list-reactions-for-a-team-discussion) endpoint.  List the reactions to a [team discussion](https://docs.github.com/rest/reference/teams#discussions). OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
    //
    //Future<List<Reaction>> reactionsListForTeamDiscussionLegacy(int teamId, int discussionNumber, { String content, int perPage, int page }) async
    test('test reactionsListForTeamDiscussionLegacy', () async {
      // TODO
    });

  });
}
