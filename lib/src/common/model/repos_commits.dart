import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos_commits.g.dart';

/// Model class for a commit in a repository.
///
/// Note: The [RepositoryCommit] wraps a [GitCommit], so author/committer
/// information is in two places, but contain different details about them:
/// in [RepositoryCommit] "github details", in [GitCommit] "git details".
@JsonSerializable()
class RepositoryCommit {
  RepositoryCommit({
    this.url,
    this.sha,
    this.htmlUrl,
    this.commentsUrl,
    this.commit,
    this.author,
    this.committer,
    this.parents,
    this.stats,
    this.files,
  });

  /// API url.
  String url;

  /// Commit SHA
  String sha;

  /// Url to Commit Page
  @JsonKey(name: 'html_url')
  String htmlUrl;

  /// Comments url.
  @JsonKey(name: 'comments_url')
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

  factory RepositoryCommit.fromJson(Map<String, dynamic> input) =>
      _$RepositoryCommitFromJson(input);
  Map<String, dynamic> toJson() => _$RepositoryCommitToJson(this);
}

/// Model class for commit statistics.
@JsonSerializable()
class CommitStats {
  CommitStats({
    this.additions,
    this.deletions,
    this.total,
  });

  /// Number of Additions.
  int additions;

  /// Number of Deletions.
  int deletions;

  /// Total changes.
  int total;

  factory CommitStats.fromJson(Map<String, dynamic> input) =>
      _$CommitStatsFromJson(input);
  Map<String, dynamic> toJson() => _$CommitStatsToJson(this);
}

/// Model class of a file that was changed in a commit.
@JsonSerializable()
class CommitFile {
  CommitFile({
    this.name,
    this.additions,
    this.deletions,
    this.changes,
    this.status,
    this.rawUrl,
    this.blobUrl,
    this.patch,
  });
  @JsonKey(name: 'filename')
  String name;

  int additions;
  int deletions;
  int changes;
  String status;

  @JsonKey(name: 'raw_url')
  String rawUrl;

  @JsonKey(name: 'blob_url')
  String blobUrl;

  String patch;

  factory CommitFile.fromJson(Map<String, dynamic> input) =>
      _$CommitFileFromJson(input);
  Map<String, dynamic> toJson() => _$CommitFileToJson(this);
}

/// Model class for a commit comment.
///
/// See https://developer.github.com/v3/repos/comments
@JsonSerializable(fieldRename: FieldRename.snake)
class CommitComment {
  CommitComment({
    this.id,
    this.line,
    this.position,
    this.path,
    this.apiUrl,
    this.commitId,
    this.createdAt,
    this.htmlUrl,
    this.updatedAt,
    this.body,
  });

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

  /// Ex: https://github.com/...
  final String htmlUrl;

  /// Ex: https://api.github.com/...
  @JsonKey(name: 'url')
  final String apiUrl;

  /// Content of the comment
  final String body;

  factory CommitComment.fromJson(Map<String, dynamic> input) =>
      _$CommitCommentFromJson(input);
  Map<String, dynamic> toJson() => _$CommitCommentToJson(this);
}
