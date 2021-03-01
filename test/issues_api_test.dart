//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for IssuesApi
void main() {
  final instance = IssuesApi();

  group('tests for IssuesApi', () {
    // Add assignees to an issue
    //
    // Adds up to 10 assignees to an issue. Users already assigned to an issue are not replaced.
    //
    //Future<IssueSimple> issuesAddAssignees(String owner, String repo, int issueNumber, { InlineObject114 inlineObject114 }) async
    test('test issuesAddAssignees', () async {
      // TODO
    });

    // Add labels to an issue
    //
    //Future<List<Label>> issuesAddLabels(String owner, String repo, int issueNumber, { InlineObject118 inlineObject118 }) async
    test('test issuesAddLabels', () async {
      // TODO
    });

    // Check if a user can be assigned
    //
    // Checks if a user has permission to be assigned to an issue in this repository.  If the `assignee` can be assigned to issues in the repository, a `204` header with no content is returned.  Otherwise a `404` status code is returned.
    //
    //Future issuesCheckUserCanBeAssigned(String owner, String repo, String assignee) async
    test('test issuesCheckUserCanBeAssigned', () async {
      // TODO
    });

    // Create an issue
    //
    // Any user with pull access to a repository can create an issue. If [issues are disabled in the repository](https://help.github.com/articles/disabling-issues/), the API returns a `410 Gone` status.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-abuse-rate-limits)\" for details.
    //
    //Future<Issue> issuesCreate(String owner, String repo, { InlineObject110 inlineObject110 }) async
    test('test issuesCreate', () async {
      // TODO
    });

    // Create an issue comment
    //
    // This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-abuse-rate-limits)\" for details.
    //
    //Future<IssueComment> issuesCreateComment(String owner, String repo, int issueNumber, { InlineObject116 inlineObject116 }) async
    test('test issuesCreateComment', () async {
      // TODO
    });

    // Create a label
    //
    //Future<Label> issuesCreateLabel(String owner, String repo, { InlineObject122 inlineObject122 }) async
    test('test issuesCreateLabel', () async {
      // TODO
    });

    // Create a milestone
    //
    //Future<Milestone> issuesCreateMilestone(String owner, String repo, { InlineObject125 inlineObject125 }) async
    test('test issuesCreateMilestone', () async {
      // TODO
    });

    // Delete an issue comment
    //
    //Future issuesDeleteComment(String owner, String repo, int commentId) async
    test('test issuesDeleteComment', () async {
      // TODO
    });

    // Delete a label
    //
    //Future issuesDeleteLabel(String owner, String repo, String name) async
    test('test issuesDeleteLabel', () async {
      // TODO
    });

    // Delete a milestone
    //
    //Future issuesDeleteMilestone(String owner, String repo, int milestoneNumber) async
    test('test issuesDeleteMilestone', () async {
      // TODO
    });

    // Get an issue
    //
    // The API returns a [`301 Moved Permanently` status](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-redirects-redirects) if the issue was [transferred](https://help.github.com/articles/transferring-an-issue-to-another-repository/) to another repository. If the issue was transferred to or deleted from a repository where the authenticated user lacks read access, the API returns a `404 Not Found` status. If the issue was deleted from a repository where the authenticated user has read access, the API returns a `410 Gone` status. To receive webhook events for transferred and deleted issues, subscribe to the [`issues`](https://docs.github.com/webhooks/event-payloads/#issues) webhook.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)\" endpoint.
    //
    //Future<Issue> issuesGet(String owner, String repo, int issueNumber) async
    test('test issuesGet', () async {
      // TODO
    });

    // Get an issue comment
    //
    //Future<IssueComment> issuesGetComment(String owner, String repo, int commentId) async
    test('test issuesGetComment', () async {
      // TODO
    });

    // Get an issue event
    //
    //Future<IssueEvent> issuesGetEvent(String owner, String repo, int eventId) async
    test('test issuesGetEvent', () async {
      // TODO
    });

    // Get a label
    //
    //Future<Label> issuesGetLabel(String owner, String repo, String name) async
    test('test issuesGetLabel', () async {
      // TODO
    });

    // Get a milestone
    //
    //Future<Milestone> issuesGetMilestone(String owner, String repo, int milestoneNumber) async
    test('test issuesGetMilestone', () async {
      // TODO
    });

    // List issues assigned to the authenticated user
    //
    // List issues assigned to the authenticated user across all visible repositories including owned repositories, member repositories, and organization repositories. You can use the `filter` query parameter to fetch issues that are not necessarily assigned to you.   **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)\" endpoint.
    //
    //Future<List<Issue>> issuesList({ String filter, String state, String labels, String sort, String direction, String since, bool collab, bool orgs, bool owned, bool pulls, int perPage, int page }) async
    test('test issuesList', () async {
      // TODO
    });

    // List assignees
    //
    // Lists the [available assignees](https://help.github.com/articles/assigning-issues-and-pull-requests-to-other-github-users/) for issues in a repository.
    //
    //Future<List<SimpleUser>> issuesListAssignees(String owner, String repo, { int perPage, int page }) async
    test('test issuesListAssignees', () async {
      // TODO
    });

    // List issue comments
    //
    // Issue Comments are ordered by ascending ID.
    //
    //Future<List<IssueComment>> issuesListComments(String owner, String repo, int issueNumber, { String since, int perPage, int page }) async
    test('test issuesListComments', () async {
      // TODO
    });

    // List issue comments for a repository
    //
    // By default, Issue Comments are ordered by ascending ID.
    //
    //Future<List<IssueComment>> issuesListCommentsForRepo(String owner, String repo, { String sort, String direction, String since, int perPage, int page }) async
    test('test issuesListCommentsForRepo', () async {
      // TODO
    });

    // List issue events
    //
    //Future<List<IssueEventForIssue>> issuesListEvents(String owner, String repo, int issueNumber, { int perPage, int page }) async
    test('test issuesListEvents', () async {
      // TODO
    });

    // List issue events for a repository
    //
    //Future<List<IssueEvent>> issuesListEventsForRepo(String owner, String repo, { int perPage, int page }) async
    test('test issuesListEventsForRepo', () async {
      // TODO
    });

    // List timeline events for an issue
    //
    //Future<List<IssueEventForIssue>> issuesListEventsForTimeline(String owner, String repo, int issueNumber, { int perPage, int page }) async
    test('test issuesListEventsForTimeline', () async {
      // TODO
    });

    // List user account issues assigned to the authenticated user
    //
    // List issues across owned and member repositories assigned to the authenticated user.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)\" endpoint.
    //
    //Future<List<Issue>> issuesListForAuthenticatedUser({ String filter, String state, String labels, String sort, String direction, String since, int perPage, int page }) async
    test('test issuesListForAuthenticatedUser', () async {
      // TODO
    });

    // List organization issues assigned to the authenticated user
    //
    // List issues in an organization assigned to the authenticated user.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)\" endpoint.
    //
    //Future<List<Issue>> issuesListForOrg(String org, { String filter, String state, String labels, String sort, String direction, String since, int perPage, int page }) async
    test('test issuesListForOrg', () async {
      // TODO
    });

    // List repository issues
    //
    // List issues in a repository.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)\" endpoint.
    //
    //Future<List<IssueSimple>> issuesListForRepo(String owner, String repo, { String milestone, String state, String assignee, String creator, String mentioned, String labels, String sort, String direction, String since, int perPage, int page }) async
    test('test issuesListForRepo', () async {
      // TODO
    });

    // List labels for issues in a milestone
    //
    //Future<List<Label>> issuesListLabelsForMilestone(String owner, String repo, int milestoneNumber, { int perPage, int page }) async
    test('test issuesListLabelsForMilestone', () async {
      // TODO
    });

    // List labels for a repository
    //
    //Future<List<Label>> issuesListLabelsForRepo(String owner, String repo, { int perPage, int page }) async
    test('test issuesListLabelsForRepo', () async {
      // TODO
    });

    // List labels for an issue
    //
    //Future<List<Label>> issuesListLabelsOnIssue(String owner, String repo, int issueNumber, { int perPage, int page }) async
    test('test issuesListLabelsOnIssue', () async {
      // TODO
    });

    // List milestones
    //
    //Future<List<Milestone>> issuesListMilestones(String owner, String repo, { String state, String sort, String direction, int perPage, int page }) async
    test('test issuesListMilestones', () async {
      // TODO
    });

    // Lock an issue
    //
    // Users with push access can lock an issue or pull request's conversation.  Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    //
    //Future issuesLock(String owner, String repo, int issueNumber, { InlineObject119 inlineObject119 }) async
    test('test issuesLock', () async {
      // TODO
    });

    // Remove all labels from an issue
    //
    //Future issuesRemoveAllLabels(String owner, String repo, int issueNumber) async
    test('test issuesRemoveAllLabels', () async {
      // TODO
    });

    // Remove assignees from an issue
    //
    // Removes one or more assignees from an issue.
    //
    //Future<IssueSimple> issuesRemoveAssignees(String owner, String repo, int issueNumber, { InlineObject115 inlineObject115 }) async
    test('test issuesRemoveAssignees', () async {
      // TODO
    });

    // Remove a label from an issue
    //
    // Removes the specified label from the issue, and returns the remaining labels on the issue. This endpoint returns a `404 Not Found` status if the label does not exist.
    //
    //Future<List<Label>> issuesRemoveLabel(String owner, String repo, int issueNumber, String name) async
    test('test issuesRemoveLabel', () async {
      // TODO
    });

    // Set labels for an issue
    //
    // Removes any previous labels and sets the new labels for an issue.
    //
    //Future<List<Label>> issuesSetLabels(String owner, String repo, int issueNumber, { InlineObject117 inlineObject117 }) async
    test('test issuesSetLabels', () async {
      // TODO
    });

    // Unlock an issue
    //
    // Users with push access can unlock an issue's conversation.
    //
    //Future issuesUnlock(String owner, String repo, int issueNumber) async
    test('test issuesUnlock', () async {
      // TODO
    });

    // Update an issue
    //
    // Issue owners and users with push access can edit an issue.
    //
    //Future<Issue> issuesUpdate(String owner, String repo, int issueNumber, { InlineObject113 inlineObject113 }) async
    test('test issuesUpdate', () async {
      // TODO
    });

    // Update an issue comment
    //
    //Future<IssueComment> issuesUpdateComment(String owner, String repo, int commentId, { InlineObject111 inlineObject111 }) async
    test('test issuesUpdateComment', () async {
      // TODO
    });

    // Update a label
    //
    //Future<Label> issuesUpdateLabel(String owner, String repo, String name, { InlineObject123 inlineObject123 }) async
    test('test issuesUpdateLabel', () async {
      // TODO
    });

    // Update a milestone
    //
    //Future<Milestone> issuesUpdateMilestone(String owner, String repo, int milestoneNumber, { InlineObject126 inlineObject126 }) async
    test('test issuesUpdateMilestone', () async {
      // TODO
    });

  });
}
