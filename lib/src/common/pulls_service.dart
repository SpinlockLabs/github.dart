part of github.common;

/// The [PullRequestsService] handles communication with pull request
/// methods of the GitHub API.
///
/// API docs: https://developer.github.com/v3/pulls/
class PullRequestsService extends Service {
  PullRequestsService(GitHub github) : super(github);

  Stream<PullRequest> list(RepositorySlug slug, {int pages}) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/pulls", PullRequest.fromJSON,
        pages: pages);
  }

  /// Fetches a single pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#get-a-single-pull-request
  Future<PullRequest> get(RepositorySlug slug, int number) {
    return _github.getJSON("/repos/${slug.fullName}/pulls/${number}",
        convert: PullRequest.fromJSON, statusCode: StatusCodes.OK);
  }

  /// Creates a Pull Request based on the given [request].
  ///
  /// API docs: https://developer.github.com/v3/pulls/#create-a-pull-request
  Future<PullRequestInformation> create(
      RepositorySlug slug, CreateRelease request) {
    return _github.postJSON("/repos/${slug.fullName}/pulls",
        convert: PullRequestInformation.fromJSON, body: request.toJSON());
  }

  /// Edit a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#update-a-pull-request
  Future<PullRequest> edit(RepositorySlug slug, int number,
      {String title, String body, String state}) {
    var map = {};
    putValue("title", title, map);
    putValue("body", body, map);
    putValue("state", state, map);

    return _github
        .request("POST", '/repos/${slug.fullName}/pulls/${number}',
            body: JSON.encode(map))
        .then((response) {
      return PullRequest.fromJSON(JSON.decode(response.body));
    });
  }

  /// Lists the commits in a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-commits-on-a-pull-request
  Stream<RepositoryCommit> listCommits(RepositorySlug slug, int number) {
    return new PaginationHelper(_github).objects("GET",
        '/repos/${slug.fullName}/pulls/${number}/commits',
        RepositoryCommit.fromJSON);
  }

  Stream<RepositoryCommit> listFiles(RepositorySlug slug, int number) {
    return new PaginationHelper(_github).objects("GET",
        '/repos/${slug.fullName}/pulls/${number}/files',
        PullRequestFile.fromJSON);
  }

  Future<bool> isMerged(RepositorySlug slug, int number) {
    return _github
        .request("GET", "/repos/${slug.fullName}/pulls/${number}/merge")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Merge a pull request (Merge Button).
  ///
  /// API docs: https://developer.github.com/v3/pulls/#merge-a-pull-request-merge-button
  Future<PullRequestMerge> merge(RepositorySlug slug, int number,
      {String message}) {
    var json = {};

    if (message != null) {
      json['commit_message'] = message;
    }

    return _github
        .request("PUT", "/repos/${slug.fullName}/pulls/${number}/merge",
            body: JSON.encode(json))
        .then((response) {
      return PullRequestMerge.fromJSON(JSON.decode(response.body));
    });
  }

  /// Lists all comments on the specified pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#list-comments-on-a-pull-request
  Stream<PullRequestComment> listCommentsByPullRequest(
      RepositorySlug slug, int number) {
    return new PaginationHelper(_github).objects("GET",
        "/repos/${slug.fullName}/pulls/${number}/comments",
        PullRequestComment.fromJSON);
  }

  /// Lists all comments on all pull requests for the repository.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#list-comments-in-a-repository
  Stream<PullRequestComment> listComments(RepositorySlug slug) {
    return new PaginationHelper(_github).objects("GET",
        "/repos/${slug.fullName}/pulls/comments", PullRequestComment.fromJSON);
  }

  /// Creates a new pull request comment.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#create-a-comment
  Future<IssueComment> createComment(
      RepositorySlug slug, int number, CreatePullRequestComment comment) {
    return _github.postJSON('/repos/${slug.fullName}/pulls/${number}/comments',
        body: comment.toJSON(),
        convert: PullRequestComment.fromJSON,
        statusCode: 201);
  }

  // TODO: Implement editComment: https://developer.github.com/v3/pulls/comments/#edit-a-comment
  // TODO: Implement deleteComment: https://developer.github.com/v3/pulls/comments/#delete-a-comment
}
