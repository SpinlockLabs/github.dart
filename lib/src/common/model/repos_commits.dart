import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import "package:json_annotation/json_annotation.dart";
import 'package:meta/meta.dart';

/// Model class for a commit in a repository.
///
/// Note: The [RepositoryCommit] wraps a [GitCommit], so author/committer
/// information is in two places, but contain different details about them:
/// in [RepositoryCommit] "github details", in [GitCommit] "git details".
class RepositoryCommit {
  /// API url.
  String url;

  /// Commit SHA
  String sha;

  /// Url to Commit Page
  @JsonKey(name: "html_url")
  String htmlUrl;

  /// Comments url.
  @JsonKey(name: "comments_url")
  String commentsUrl;

  /// A reference to the raw [GitCommit].
  GitCommit commit;

  /// Commit Author
  User author;

  /// Commit Committer.
  User committer;

  /// Commit parents.
  List<GitCommit> parents;

  /// Commit statistics.
  CommitStats stats;

  /// The files changed in this commit.
  List<CommitFile> files;

  static RepositoryCommit fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    final commit = RepositoryCommit()
      ..url = input['url']
      ..sha = input['sha']
      ..htmlUrl = input['html_url']
      ..commentsUrl = input['comments_url']
      ..commit = GitCommit.fromJSON(input['commit'] as Map<String, dynamic>)
      ..author = User.fromJson(input['author'] as Map<String, dynamic>)
      ..committer = User.fromJson(input['committer'] as Map<String, dynamic>)
      ..stats = CommitStats.fromJSON(input['stats'] as Map<String, dynamic>);

    if (input['parents'] != null) {
      commit.parents = (input['parents'] as List<dynamic>)
          .map((parent) => GitCommit.fromJson(parent))
          .toList();
    }

    if (input['files'] != null) {
      commit.files = (input['files'] as List<dynamic>)
          .map((file) => CommitFile.fromJSON(file))
          .toList();
    }

    return commit;
  }
}

/// Model class for commit statistics.
class CommitStats {
  /// Number of Additions.
  int additions;

  /// Number of Deletions.
  int deletions;

  /// Total changes.
  int total;

  static CommitStats fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return CommitStats()
      ..additions = input['additions']
      ..deletions = input['deletions']
      ..total = input['total'];
  }
}

/// Model class of a file that was changed in a commit.
class CommitFile {
  @JsonKey(name: "filename")
  String name;

  int additions;
  int deletions;
  int changes;
  String status;

  @JsonKey(name: "raw_url")
  String rawUrl;

  @JsonKey(name: "blob_url")
  String blobUrl;

  String patch;

  Map<String, dynamic> json;

  static CommitFile fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return CommitFile()
      ..name = input['filename']
      ..additions = input['additions']
      ..deletions = input['deletions']
      ..changes = input['changes']
      ..status = input['status']
      ..rawUrl = input['raw_url']
      ..blobUrl = input['blob_url']
      ..patch = input['patch']
      ..json = input;
  }
}

/// Model class for a commit comment.
///
/// See https://developer.github.com/v3/repos/comments
class CommitComment {
  /// Id of the comment
  final int id;

  /// Relative path of the file on which the comment has been posted
  final String path;

  /// Line on file
  final int line;

  /// Position on the diff
  final int position;

  /// SHA of the commit where the comment has been made
  final String commitId;

  final DateTime createdAt;

  /// Can be equals to [createdAt]
  final DateTime updatedAt;

  /// https://github.com/...
  final String htmlUrl;

  /// https://api.github.com/...
  final String apiUrl;

  /// Content of the comment
  final String body;

  const CommitComment._({
    @required this.id,
    @required this.line,
    @required this.position,
    @required this.path,
    @required this.apiUrl,
    @required this.commitId,
    @required this.createdAt,
    @required this.htmlUrl,
    @required this.updatedAt,
    @required this.body,
  });

  factory CommitComment.fromJSON(Map<String, dynamic> input) {
    return CommitComment._(
      id: input['id'],
      htmlUrl: input['html_url'],
      apiUrl: input['url'],
      body: input['body'],
      path: input['path'],
      position: input['position'],
      line: input['line'],
      commitId: input['commit_id'],
      createdAt: DateTime.parse(input['created_at']),
      updatedAt: DateTime.parse(input['updated_at']),
    );
  }
}
