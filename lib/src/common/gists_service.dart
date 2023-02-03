import 'dart:async';
import 'dart:convert';

import 'package:github/src/common.dart';

/// The [GistsService] handles communication with gist
/// methods of the GitHub API.
///
/// API docs: https://developer.github.com/v3/gists/
class GistsService extends Service {
  GistsService(GitHub github) : super(github);

  /// lists gists for a user.
  ///
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listUserGists(String username) {
    return PaginationHelper(github)
        .objects('GET', '/users/$username/gists', Gist.fromJson);
  }

  /// Fetches the gists for the currently authenticated user.
  /// If the user is not authenticated, this returns all public gists.
  ///
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listCurrentUserGists() {
    return PaginationHelper(github).objects('GET', '/gists', Gist.fromJson);
  }

  /// Fetches the currently authenticated user's public gists.
  ///
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listCurrentUserPublicGists() {
    return PaginationHelper(github)
        .objects('GET', '/gists/public', Gist.fromJson);
  }

  /// Fetches the currently authenticated user's starred gists.
  ///
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listCurrentUserStarredGists() {
    return PaginationHelper(github)
        .objects('GET', '/gists/starred', Gist.fromJson);
  }

  /// Fetches a Gist by the specified [id].
  ///
  /// API docs: https://developer.github.com/v3/gists/#get-a-single-gist
  Future<Gist> getGist(String id) => github.getJSON('/gists/$id',
      statusCode: StatusCodes.OK, convert: Gist.fromJson);

  /// Creates a Gist
  ///
  /// API docs: https://developer.github.com/v3/gists/#create-a-gist
  Future<Gist> createGist(
    Map<String, String> files, {
    String? description,
    bool public = false,
  }) {
    final map = <String, dynamic>{'files': {}};

    if (description != null) {
      map['description'] = description;
    }

    map['public'] = public;

    final f = {};

    for (final key in files.keys) {
      f[key] = {'content': files[key]};
    }

    map['files'] = f;

    return github.postJSON(
      '/gists',
      statusCode: 201,
      body: GitHubJson.encode(map),
      convert: Gist.fromJson,
    );
  }

  /// Deletes the specified Gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/#delete-a-gist
  Future<bool> deleteGist(String id) {
    return github.request('DELETE', '/gists/$id').then((response) {
      return response.statusCode == 204;
    });
  }

  /// Edits a Gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/#edit-a-gist
  Future<Gist> editGist(
    String id, {
    String? description,
    Map<String, String>? files,
  }) {
    final map = <String, dynamic>{};

    if (description != null) {
      map['description'] = description;
    }

    if (files != null) {
      final f = <String, dynamic>{};
      for (final key in files.keys) {
        f[key] = files[key] == null ? null : {'content': files[key]};
      }
      map['files'] = f;
    }

    return github.postJSON(
      '/gists/$id',
      statusCode: 200,
      body: GitHubJson.encode(map),
      convert: Gist.fromJson,
    );
  }

  // TODO: Implement listGistCommits: https://developer.github.com/v3/gists/#list-gist-commits

  /// Star the specified Gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/#star-a-gist
  Future<bool> starGist(String id) {
    return github.request('POST', '/gists/$id/star').then((response) {
      return response.statusCode == 204;
    });
  }

  /// Unstar the specified Gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/#star-a-gist
  Future<bool> unstarGist(String id) {
    return github.request('DELETE', '/gists/$id/star').then((response) {
      return response.statusCode == 204;
    });
  }

  /// Checks if the specified Gist is starred.
  ///
  /// API docs: https://developer.github.com/v3/gists/#check-if-a-gist-is-starred
  Future<bool> isGistStarred(String id) {
    return github.request('GET', '/gists/$id/star').then((response) {
      return response.statusCode == 204;
    });
  }

  /// Forks the specified Gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/#check-if-a-gist-is-starred
  Future<Gist> forkGist(String id) {
    return github
        .request('POST', '/gists/$id/forks', statusCode: 201)
        .then((response) {
      return Gist.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    });
  }

  // TODO: Implement listGistForks: https://developer.github.com/v3/gists/#list-gist-forks

  /// Lists all comments for a gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/comments/#list-comments-on-a-gist
  Stream<GistComment> listComments(String gistId) {
    return PaginationHelper(github)
        .objects('GET', '/gists/$gistId/comments', GistComment.fromJson);
  }

  // TODO: Implement getComment: https://developer.github.com/v3/gists/comments/#get-a-single-comment

  /// Creates a comment for a gist.
  ///
  /// API docs: https://developer.github.com/v3/gists/comments/#create-a-comment
  Future<GistComment> createComment(String gistId, CreateGistComment request) {
    return github.postJSON('/gists/$gistId/comments',
        body: GitHubJson.encode(request), convert: GistComment.fromJson);
  }

  // TODO: Implement editComment: https://developer.github.com/v3/gists/comments/#edit-a-comment
  // TODO: Implement deleteComment: https://developer.github.com/v3/gists/comments/#delete-a-comment
}
