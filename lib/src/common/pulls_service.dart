import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/util/pagination.dart';
import 'package:github/src/util.dart';

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
    int pages,
    String base,
    String direction = 'desc',
    String head,
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
        'GET',
        '/repos/${slug.fullName}/pulls?state=$state',
        (i) => PullRequest.fromJson(i),
        pages: pages,
        params: params);
  }

  /// Fetches a single pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#get-a-single-pull-request
  Future<PullRequest> get(RepositorySlug slug, int number) =>
      github.getJSON('/repos/${slug.fullName}/pulls/$number',
          convert: (i) => PullRequest.fromJson(i), statusCode: StatusCodes.OK);

  /// Creates a Pull Request based on the given [request].
  ///
  /// API docs: https://developer.github.com/v3/pulls/#create-a-pull-request
  Future<PullRequest> create(RepositorySlug slug, CreatePullRequest request) {
    return github.postJSON(
      '/repos/${slug.fullName}/pulls',
      convert: (i) => PullRequest.fromJson(i),
      body: jsonEncode(request),
      preview: request.draft
          ? 'application/vnd.github.shadow-cat-preview+json'
          : null,
    );
  }

  /// Edit a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#update-a-pull-request
  Future<PullRequest> edit(RepositorySlug slug, int number,
      {String title, String body, String state, String base}) {
    final map = <String, dynamic>{};
    putValue('title', title, map);
    putValue('body', body, map);
    putValue('state', state, map);
    putValue('base', base, map);

    return github
        .request('POST', '/repos/${slug.fullName}/pulls/$number',
            body: jsonEncode(map))
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
        (i) => RepositoryCommit.fromJson(i));
  }

  /// Lists the files in a pull request.
  ///
  /// API docs: https://developer.github.com/v3/pulls/#list-pull-requests-files
  Stream<PullRequestFile> listFiles(RepositorySlug slug, int number) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${slug.fullName}/pulls/$number/files',
        (i) => PullRequestFile.fromJson(i));
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
    String message,
  }) {
    final json = <String, dynamic>{};

    if (message != null) {
      json['commit_message'] = message;
    }

    return github
        .request('PUT', '/repos/${slug.fullName}/pulls/$number/merge',
            body: jsonEncode(json))
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
        (i) => PullRequestComment.fromJson(i));
  }

  /// Lists all comments on all pull requests for the repository.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#list-comments-in-a-repository
  Stream<PullRequestComment> listComments(RepositorySlug slug) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${slug.fullName}/pulls/comments',
        (i) => PullRequestComment.fromJson(i));
  }

  /// Creates a new pull request comment.
  ///
  /// API docs: https://developer.github.com/v3/pulls/comments/#create-a-comment
  Future<IssueComment> createComment(
      RepositorySlug slug, int number, CreatePullRequestComment comment) {
    return github.postJSON('/repos/${slug.fullName}/pulls/$number/comments',
        body: jsonEncode(comment.toJson()),
        convert: (i) => PullRequestComment.fromJson(i),
        statusCode: 201) as Future<IssueComment>;
  }

  // TODO: Implement editComment: https://developer.github.com/v3/pulls/comments/#edit-a-comment
  // TODO: Implement deleteComment: https://developer.github.com/v3/pulls/comments/#delete-a-comment
}
