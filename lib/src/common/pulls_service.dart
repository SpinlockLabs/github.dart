part of github.common;

/// The [PullRequestsService] handles communication with pull request
/// methods of the GitHub API.
///
/// API docs: https://developer.github.com/v3/pulls/
class PullRequestsService extends Service {
  PullRequestsService(GitHub github) : super(github);

  /// Fetches several pull requests.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-pull-requests
  Stream<PullRequest> list(RepositorySlug slug,
      {int pages,
      String base,
      String direction: 'desc',
      String head,
      String sort: 'created',
      String state: 'open'}) {
    var params = <String, String>{};
    putValue("base", base, params);
    putValue("direction", direction, params);
    putValue("head", head, params);
    putValue("sort", sort, params);
    putValue("state", state, params);

    return new PaginationHelper(_github).objects("GET",
        "/repos/${slug.fullName}/pulls?state=${state}", PullRequest.fromJSON,
        pages: pages, params: params);
  }

  /// Fetches a single pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#get-a-single-pull-request
  Future<PullRequest> get(RepositorySlug slug, int number) =>
      _github.getJSON("/repos/${slug.fullName}/pulls/$number",
          convert: PullRequest.fromJSON, statusCode: StatusCodes.OK);

  /// Creates a Pull Request based on the given [request].
  ///
  /// API docs: https://developer.github.com/v3/pulls/#create-a-pull-request
  Future<PullRequestInformation> create(
      RepositorySlug slug, CreatePullRequest request) {
    return _github.postJSON("/repos/${slug.fullName}/pulls",
        convert: PullRequestInformation.fromJSON,
        body: request.toJSON()) as Future<PullRequestInformation>;
  }

  /// Edit a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#update-a-pull-request
  Future<PullRequest> edit(RepositorySlug slug, int number,
      {String title, String body, String state}) {
    var map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("body", body, map);
    putValue("state", state, map);

    return _github
        .request("POST", '/repos/${slug.fullName}/pulls/$number',
            body: JSON.encode(map))
        .then((response) {
      return PullRequest
          .fromJSON(JSON.decode(response.body) as Map<String, dynamic>);
    });
  }

  /// Lists the commits in a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-commits-on-a-pull-request
  Stream<RepositoryCommit> listCommits(RepositorySlug slug, int number) {
    return new PaginationHelper(_github).objects(
        "GET",
        '/repos/${slug.fullName}/pulls/$number/commits',
        RepositoryCommit.fromJSON);
  }

  Stream<RepositoryCommit> listFiles(RepositorySlug slug, int number) {
    return new PaginationHelper(_github).objects(
        "GET",
        '/repos/${slug.fullName}/pulls/$number/files',
        PullRequestFile.fromJSON) as Stream<RepositoryCommit>;
  }

  Future<bool> isMerged(RepositorySlug slug, int number) {
    return _github
        .request("GET", "/repos/${slug.fullName}/pulls/$number/merge")
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
        .request("PUT", "/repos/${slug.fullName}/pulls/$number/merge",
            body: JSON.encode(json))
        .then((response) {
      return PullRequestMerge
          .fromJSON(JSON.decode(response.body) as Map<String, dynamic>);
    });
  }

  /// Lists all comments on the specified pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#list-comments-on-a-pull-request
  Stream<PullRequestComment> listCommentsByPullRequest(
      RepositorySlug slug, int number) {
    return new PaginationHelper(_github).objects(
        "GET",
        "/repos/${slug.fullName}/pulls/$number/comments",
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
    return _github.postJSON('/repos/${slug.fullName}/pulls/$number/comments',
        body: comment.toJSON(),
        convert: PullRequestComment.fromJSON,
        statusCode: 201) as Future<IssueComment>;
  }

  // TODO: Implement editComment: https://developer.github.com/v3/pulls/comments/#edit-a-comment
  // TODO: Implement deleteComment: https://developer.github.com/v3/pulls/comments/#delete-a-comment
}
