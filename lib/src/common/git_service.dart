import 'dart:async';
import 'dart:convert';

import 'package:github/src/common.dart';

/// The [GitService] handles communication with git related methods of the
/// GitHub API.
///
/// API docs: https://developer.github.com/v3/git/blobs/
class GitService extends Service {
  const GitService(GitHub github) : super(github);

  /// Fetches a blob from [slug] for a given [sha].
  ///
  /// API docs: https://developer.github.com/v3/git/blobs/#get-a-blob
  Future<GitBlob> getBlob(RepositorySlug slug, String? sha) => github.getJSON(
        '/repos/${slug.fullName}/git/blobs/$sha',
        convert: GitBlob.fromJson,
        statusCode: StatusCodes.OK,
      );

  /// Creates a blob with specified [blob] content.
  ///
  /// API docs: https://developer.github.com/v3/git/blobs/#create-a-blob
  Future<GitBlob> createBlob(RepositorySlug slug, CreateGitBlob blob) =>
      github.postJSON(
        '/repos/${slug.fullName}/git/blobs',
        convert: GitBlob.fromJson,
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode(blob),
      );

  /// Fetches a commit from [slug] for a given [sha].
  ///
  /// API docs: https://developer.github.com/v3/git/commits/#get-a-commit
  Future<GitCommit> getCommit(RepositorySlug slug, String? sha) =>
      github.getJSON(
        '/repos/${slug.fullName}/git/commits/$sha',
        convert: GitCommit.fromJson,
        statusCode: StatusCodes.OK,
      );

  /// Creates a new commit in a repository.
  ///
  /// API docs: https://developer.github.com/v3/git/commits/#create-a-commit
  Future<GitCommit> createCommit(RepositorySlug slug, CreateGitCommit commit) =>
      github.postJSON(
        '/repos/${slug.fullName}/git/commits',
        convert: GitCommit.fromJson,
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode(commit),
      );

  /// Fetches a reference from a repository for the given [ref].
  ///
  /// Note: The [ref] in the URL must be formatted as "heads/branch", not just "branch".
  ///
  /// API docs: https://developer.github.com/v3/git/refs/#get-a-reference
  Future<GitReference> getReference(RepositorySlug slug, String ref) =>
      github.getJSON(
        '/repos/${slug.fullName}/git/refs/$ref',
        convert: GitReference.fromJson,
        statusCode: StatusCodes.OK,
      );

  /// Lists the references in a repository.
  ///
  /// This will return all references on the system, including things like notes
  /// and stashes if they exist on the server. A sub-namespace can be requested
  /// by specifying a [type], the most common being "heads" and "tags".
  ///
  /// API docs: https://developer.github.com/v3/git/refs/#get-all-references
  Stream<GitReference> listReferences(RepositorySlug slug, {String? type}) {
    var path = '/repos/${slug.fullName}/git/refs';
    if (type != null) {
      path += '/$type';
    }

    return PaginationHelper(github).objects('GET', path, GitReference.fromJson);
  }

  /// Creates a new reference in a repository.
  ///
  /// The [ref] is the name of the fully qualified reference
  /// (ie: refs/heads/master).
  ///
  /// API docs: https://developer.github.com/v3/git/refs/#create-a-reference
  Future<GitReference> createReference(
    RepositorySlug slug,
    String ref,
    String? sha,
  ) =>
      github.postJSON(
        '/repos/${slug.fullName}/git/refs',
        convert: GitReference.fromJson,
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode({'ref': ref, 'sha': sha}),
      );

  /// Updates a reference in a repository.
  ///
  /// API docs: https://developer.github.com/v3/git/refs/#update-a-reference
  Future<GitReference> editReference(
    RepositorySlug slug,
    String ref,
    String? sha, {
    bool force = false,
  }) {
    final body = GitHubJson.encode({'sha': sha, 'force': force});
    // Somehow the reference updates PATCH request needs a valid content-length.
    final headers = {'content-length': body.length.toString()};

    return github
        .request(
          'PATCH',
          '/repos/${slug.fullName}/git/refs/$ref',
          body: body,
          headers: headers,
        )
        .then(
          (response) => GitReference.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>,
          ),
        );
  }

  /// Deletes a reference.
  ///
  /// API docs: https://developer.github.com/v3/git/refs/#delete-a-reference
  Future<bool> deleteReference(RepositorySlug slug, String ref) => github
      .request('DELETE', '/repos/${slug.fullName}/git/refs/$ref')
      .then((response) => response.statusCode == StatusCodes.NO_CONTENT);

  /// Fetches a tag from the repo given a SHA.
  ///
  /// API docs: https://developer.github.com/v3/git/tags/#get-a-tag
  Future<GitTag> getTag(RepositorySlug slug, String? sha) => github.getJSON(
        '/repos/${slug.fullName}/git/tags/$sha',
        convert: GitTag.fromJson,
        statusCode: StatusCodes.OK,
      );

  /// Creates a new tag in a repository.
  ///
  /// API docs: https://developer.github.com/v3/git/tags/#create-a-tag-object
  Future<GitTag> createTag(RepositorySlug slug, CreateGitTag tag) =>
      github.postJSON(
        '/repos/${slug.fullName}/git/tags',
        convert: GitTag.fromJson,
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode(tag),
      );

  /// Fetches a tree from a repository for the given ref [sha].
  ///
  /// If [recursive] is set to true, the tree is fetched recursively.
  ///
  /// API docs: https://developer.github.com/v3/git/trees/#get-a-tree
  /// and https://developer.github.com/v3/git/trees/#get-a-tree-recursively
  Future<GitTree> getTree(
    RepositorySlug slug,
    String? sha, {
    bool recursive = false,
  }) {
    var path = '/repos/${slug.fullName}/git/trees/$sha';
    if (recursive) {
      path += '?recursive=1';
    }

    return github.getJSON(
      path,
      convert: GitTree.fromJson,
      statusCode: StatusCodes.OK,
    );
  }

  /// Creates a new tree in a repository.
  ///
  /// API docs: https://developer.github.com/v3/git/trees/#create-a-tree
  Future<GitTree> createTree(RepositorySlug slug, CreateGitTree tree) =>
      github.postJSON(
        '/repos/${slug.fullName}/git/trees',
        convert: GitTree.fromJson,
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode(tree),
      );
}
