part of github.common;

/// The [IssuesService] handles communication with issues related methods of the
/// GitHub API.
///
/// API docs: https://developer.github.com/v3/issues/
class IssuesService extends Service {
  IssuesService(GitHub github) : super(github);

  /// List all issues across all the authenticated user’s visible repositories
  /// including owned repositories, member repositories, and organization repositories
  ///
  /// API docs: https://developer.github.com/v3/issues/#list-issues
  Stream<Issue> listAll() {
    return new PaginationHelper(_github).objects(
        "GET", "/issues", Issue.fromJSON);
  }

  /// List all issues across owned and member repositories for the authenticated
  /// user.
  ///
  /// API docs: https://developer.github.com/v3/issues/#list-issues
  Stream<Issue> listByUser() {
    return new PaginationHelper(_github).objects(
        "GET", "/user/issues", Issue.fromJSON);
  }

  /// List all issues for a given organization for the authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/issues/#list-issues
  Stream<Issue> listByOrg(String org) {
    return new PaginationHelper(_github).objects(
        "GET", "/orgs/${org}/issues", Issue.fromJSON);
  }

  /// Lists the issues for the specified repository.
  ///
  /// TODO: Implement more optional parameters.
  ///
  /// API docs:https://developer.github.com/v3/issues/#list-issues-for-a-repository
  Stream<Issue> listByRepo(RepositorySlug slug, {String state: "open"}) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/issues", Issue.fromJSON,
        params: {"state": state});
  }

  /// Edit an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/#edit-an-issue
  Future<Issue> edit(RepositorySlug slug, int issueNumber, IssueRequest issue) {
    return _github
        .request("PATCH", '/repos/${slug.fullName}/issues/${issueNumber}',
            body: issue.toJSON())
        .then((response) {
      return Issue.fromJSON(JSON.decode(response.body));
    });
  }

  /// Get an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/#get-a-single-issue
  Future<Issue> get(RepositorySlug slug, int issueNumber) {
    return _github.getJSON("/repos/${slug.fullName}/issues/${issueNumber}",
        convert: Issue.fromJSON);
  }

  /// Create an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/#create-an-issue
  Future<Issue> create(RepositorySlug slug, IssueRequest issue) {
    return _github
        .request("POST", '/repos/${slug.fullName}/issues', body: issue.toJSON())
        .then((response) {
      return Issue.fromJSON(JSON.decode(response.body));
    });
  }

  /// Lists all available assignees (owners and collaborators) to which issues
  /// may be assigned.
  ///
  /// API docs: https://developer.github.com/v3/issues/assignees/#list-assignees
  Stream<User> listAssignees(RepositorySlug slug) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/assignees", User.fromJSON);
  }

  /// Checks if a user is an assignee for the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/issues/assignees/#check-assignee
  Future<bool> isAssignee(RepositorySlug slug, String repoName) {
    return _github
        .request("GET", "/repos/${slug.fullName}/assignees/${repoName}")
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Lists comments on the specified issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/comments/#list-comments-on-an-issue
  Stream<IssueComment> listCommentsByIssue(
      RepositorySlug slug, int issueNumber) {
    return new PaginationHelper(_github).objects('GET',
        '/repos/${slug.fullName}/issues/${issueNumber}/comments',
        IssueComment.fromJSON);
  }

  /// Lists all comments in a repository.
  ///
  /// API docs: https://developer.github.com/v3/issues/comments/#list-comments-on-an-issue
  Stream<IssueComment> listCommentsByRepo(RepositorySlug slug) {
    return new PaginationHelper(_github).objects('GET',
        '/repos/${slug.fullName}/issues/comments', IssueComment.fromJSON);
  }

  /// Fetches the specified issue comment.
  ///
  /// API docs: https://developer.github.com/v3/issues/comments/#get-a-single-comment
  Future<IssueComment> getComment(RepositorySlug slug, int id) {
    return _github.getJSON("/repos/${slug.fullName}/issues/comments/${id}",
        convert: IssueComment.fromJSON);
  }

  /// Creates a new comment on the specified issue
  ///
  /// API docs: https://developer.github.com/v3/issues/comments/#create-a-comment
  Future<IssueComment> createComment(
      RepositorySlug slug, int issueNumber, String body) {
    var it = JSON.encode({"body": body});
    return _github.postJSON(
        '/repos/${slug.fullName}/issues/${issueNumber}/comments',
        body: it,
        convert: IssueComment.fromJSON,
        statusCode: StatusCodes.CREATED);
  }

  // TODO: Implement editComment: https://developer.github.com/v3/issues/comments/#edit-a-comment

  /// Deletes an issue comment.
  ///
  /// API docs: https://developer.github.com/v3/issues/comments/#delete-a-comment
  Future<bool> deleteComment(RepositorySlug slug, int id) {
    return _github
        .request('DELETE', '/repos/${slug.fullName}/issues/comments/${id}')
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  // TODO: Implement issues events methods: https://developer.github.com/v3/issues/events/

  /// Lists all labels for a repository.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#list-all-labels-for-this-repository
  Stream<IssueLabel> listLabels(RepositorySlug slug) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/labels", IssueLabel.fromJSON);
  }

  /// Fetches a single label.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#get-a-single-label
  Future<IssueLabel> getLabel(RepositorySlug slug, String name) {
    return _github.getJSON("/repos/${slug.fullName}/labels/${name}",
        convert: IssueLabel.fromJSON);
  }

  /// Creates a new label on the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#create-a-label
  Future<IssueLabel> createLabel(
      RepositorySlug slug, String name, String color) {
    return _github.postJSON("/repos/${slug.fullName}/labels",
        body: JSON.encode({"name": name, "color": color}),
        convert: IssueLabel.fromJSON);
  }

  /// Edits a label.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#update-a-label
  Future<IssueLabel> editLabel(RepositorySlug slug, String name, String color) {
    return _github.postJSON("/repos/${slug.fullName}/labels/${name}",
        body: JSON.encode({"name": name, "color": color}),
        convert: IssueLabel.fromJSON);
  }

  /// Deletes a label.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#delete-a-label
  Future<bool> deleteLabel(RepositorySlug slug, String name) {
    return _github
        .request("DELETE", "/repos/${slug.fullName}/labels/${name}")
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Lists all labels for an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#list-all-labels-for-this-repository
  Stream<IssueLabel> listLabelsByIssue(RepositorySlug slug, int issueNumber) {
    return new PaginationHelper(_github).objects("GET",
        "/repos/${slug.fullName}/issues/${issueNumber}/labels",
        IssueLabel.fromJSON);
  }

  /// Adds labels to an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#add-labels-to-an-issue
  Future<List<IssueLabel>> addLabelsToIssue(
      RepositorySlug slug, int issueNumber, List<String> labels) {
    return _github.postJSON(
        "/repos/${slug.fullName}/issues/${issueNumber}/labels",
        body: JSON.encode(labels),
        convert: (input) => input.map((it) => IssueLabel.fromJSON(it)));
  }

  /// Replaces all labels for an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#replace-all-labels-for-an-issue
  Future<List<IssueLabel>> replaceLabelsForIssue(
      RepositorySlug slug, int issueNumber, List<String> labels) {
    return _github
        .request("PUT", "/repos/${slug.fullName}/issues/${issueNumber}/labels",
            body: JSON.encode(labels))
        .then((response) {
      return JSON.decode(response.body).map((it) => IssueLabel.fromJSON(it));
    });
  }

  /// Removes a label for an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#remove-a-label-from-an-issue
  Future<bool> removeLabelForIssue(
      RepositorySlug slug, int issueNumber, String label) {
    return _github
        .request("DELETE",
            "/repos/${slug.fullName}/issues/${issueNumber}/labels/${label}")
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Removes all labels for an issue.
  ///
  /// API docs: https://developer.github.com/v3/issues/labels/#remove-all-labels-from-an-issue
  Future<bool> removeAllLabelsForIssue(RepositorySlug slug, int issueNumber) {
    return _github
        .request(
            "DELETE", "/repos/${slug.fullName}/issues/${issueNumber}/labels")
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  // TODO: Implement listLabelsByMilestone: https://developer.github.com/v3/issues/labels/#get-labels-for-every-issue-in-a-milestone

  /// Lists all milestones for a repository.
  ///
  /// API docs: https://developer.github.com/v3/issues/milestones/#list-milestones-for-a-repository
  Stream<Milestone> listMilestones(RepositorySlug slug) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/milestones", Milestone.fromJSON);
  }

  // TODO: Implement getMilestone: https://developer.github.com/v3/issues/milestones/#get-a-single-milestone

  /// Creates a new milestone on the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/issues/milestones/#create-a-milestone
  Future<Milestone> createMilestone(
      RepositorySlug slug, CreateMilestone request) {
    return _github.postJSON("/repos/${slug.fullName}/milestones",
        body: JSON.encode(request.toJSON()), convert: Milestone.fromJSON);
  }

  // TODO: Implement editMilestone: https://developer.github.com/v3/issues/milestones/#update-a-milestone

  /// Deletes a milestone.
  ///
  /// API docs: https://developer.github.com/v3/issues/milestones/#delete-a-milestone
  Future<bool> deleteMilestone(RepositorySlug slug, int number) {
    return _github
        .request("DELETE", '/repos/${slug.fullName}/milestones/${number}')
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }
}
