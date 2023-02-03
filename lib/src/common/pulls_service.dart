import 'dart:async';
import 'dart:convert';

import 'package:github/src/common.dart';

/// The [PullRequestsService] handles communication with pull request
/// methods of the GitHub API.
///
/// API docs: https://developer.github.com/v3/pulls/
class PullRequestsService extends Service {
  PullRequestsService(GitHub github) : super(github);

  /// Fetches several pull requests.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-pull-requests
  Stream<PullRequest> list(
    RepositorySlug slug, {
    int? pages,
    String? base,
    String direction = 'desc',
    String? head,
    String sort = 'created',
    String state = 'open',
  }) {
    final params = <String, dynamic>{};
    putValue('base', base, params);
    putValue('direction', direction, params);
    putValue('head', head, params);
    putValue('sort', sort, params);
    putValue('state', state, params);

    return PaginationHelper(github).objects(
        'GET', '/repos/${slug.fullName}/pulls', PullRequest.fromJson,
        pages: pages, params: params);
  }

  /// Fetches a single pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#get-a-single-pull-request
  Future<PullRequest> get(RepositorySlug slug, int number) =>
      github.getJSON('/repos/${slug.fullName}/pulls/$number',
          convert: PullRequest.fromJson, statusCode: StatusCodes.OK);

  /// Creates a Pull Request based on the given [request].
  ///
  /// API docs: https://developer.github.com/v3/pulls/#create-a-pull-request
  Future<PullRequest> create(RepositorySlug slug, CreatePullRequest request) {
    return github.postJSON(
      '/repos/${slug.fullName}/pulls',
      convert: PullRequest.fromJson,
      body: GitHubJson.encode(request),
      preview: request.draft!
          ? 'application/vnd.github.shadow-cat-preview+json'
          : null,
    );
  }

  /// Edit a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#update-a-pull-request
  Future<PullRequest> edit(RepositorySlug slug, int number,
      {String? title, String? body, String? state, String? base}) {
    final map = <String, dynamic>{};
    putValue('title', title, map);
    putValue('body', body, map);
    putValue('state', state, map);
    putValue('base', base, map);

    return github
        .request('POST', '/repos/${slug.fullName}/pulls/$number',
            body: GitHubJson.encode(map))
        .then((response) {
      return PullRequest.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    });
  }

  /// Lists the commits in a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-commits-on-a-pull-request
  Stream<RepositoryCommit> listCommits(RepositorySlug slug, int number) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${slug.fullName}/pulls/$number/commits',
        RepositoryCommit.fromJson);
  }

  /// Lists the files in a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-pull-requests-files
  Stream<PullRequestFile> listFiles(RepositorySlug slug, int number) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${slug.fullName}/pulls/$number/files',
        PullRequestFile.fromJson);
  }

  /// Lists the reviews for a pull request.
  ///
  /// API docs: https://docs.github.com/en/rest/reference/pulls#list-reviews-for-a-pull-request
  Stream<PullRequestReview> listReviews(RepositorySlug slug, int number) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${slug.fullName}/pulls/$number/reviews',
        PullRequestReview.fromJson);
  }

  Future<bool> isMerged(RepositorySlug slug, int number) {
    return github
        .request('GET', '/repos/${slug.fullName}/pulls/$number/merge')
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Merge a pull request (Merge Button).
  ///
  /// API docs: https://developer.github.com/v3/pulls/#merge-a-pull-request-merge-button
  Future<PullRequestMerge> merge(
    RepositorySlug slug,
    int number, {
    String? message,
    MergeMethod mergeMethod = MergeMethod.merge,
    String? requestSha,
  }) {
    final json = <String, dynamic>{};

    if (message != null) {
      json['commit_message'] = message;
    }
    if (requestSha != null) {
      json['sha'] = requestSha;
    }

    json['merge_method'] = mergeMethod.name;

    // Recommended Accept header when making a merge request.
    Map<String, String>? headers = <String, String>{};
    headers['Accept'] = 'application/vnd.github+json';

    return github
        .request('PUT', '/repos/${slug.fullName}/pulls/$number/merge',
            headers: headers, body: GitHubJson.encode(json))
        .then((response) {
      return PullRequestMerge.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    });
  }

  /// Lists all comments on the specified pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#list-comments-on-a-pull-request
  Stream<PullRequestComment> listCommentsByPullRequest(
      RepositorySlug slug, int number) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${slug.fullName}/pulls/$number/comments',
        PullRequestComment.fromJson);
  }

  /// Lists all comments on all pull requests for the repository.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#list-comments-in-a-repository
  Stream<PullRequestComment> listComments(RepositorySlug slug) {
    return PaginationHelper(github).objects('GET',
        '/repos/${slug.fullName}/pulls/comments', PullRequestComment.fromJson);
  }

  /// Creates a new pull request comment.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#create-a-comment
  Future<PullRequestComment> createComment(
      RepositorySlug slug, int number, CreatePullRequestComment comment) {
    return github.postJSON('/repos/${slug.fullName}/pulls/$number/comments',
        body: GitHubJson.encode(comment.toJson()),
        convert: PullRequestComment.fromJson,
        statusCode: 201);
  }

  // TODO: Implement editComment: https://developer.github.com/v3/pulls/comments/#edit-a-comment
  // TODO: Implement deleteComment: https://developer.github.com/v3/pulls/comments/#delete-a-comment

  /// Creates a new pull request comment.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#create-a-comment
  Future<PullRequestReview> createReview(
      RepositorySlug slug, CreatePullRequestReview review) {
    return github.postJSON(
      '/repos/${slug.fullName}/pulls/${review.pullNumber}/reviews',
      body: GitHubJson.encode(review),
      convert: PullRequestReview.fromJson,
    );
  }
}

enum MergeMethod {
  merge,
  squash,
  rebase,
}
