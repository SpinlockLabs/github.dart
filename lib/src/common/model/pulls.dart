import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pulls.g.dart';

/// Model class for a Pull Request.
@JsonSerializable(fieldRename: FieldRename.snake)
class PullRequest {
  PullRequest({
    this.id,
    this.htmlUrl,
    this.diffUrl,
    this.patchUrl,
    this.number,
    this.state,
    this.title,
    this.body,
    this.createdAt,
    this.updatedAt,
    this.closedAt,
    this.mergedAt,
    this.head,
    this.base,
    this.user,
    this.draft,
    this.mergeCommitSha,
    this.merged,
    this.mergeable,
    this.mergedBy,
    this.commentsCount,
    this.commitsCount,
    this.additionsCount,
    this.deletionsCount,
    this.changedFilesCount,
    this.labels,
  });

  /// Pull Request ID
  int id;

  /// Url to the Pull Request Page
  String htmlUrl;

  /// Url to the diff for this Pull Request
  String diffUrl;

  /// Url to the patch for this Pull Request
  String patchUrl;

  /// Pull Request Number
  int number;

  /// Pull Request State
  String state;

  /// Pull Request Title
  String title;

  /// Pull Request Body
  String body;

  /// Time the pull request was created
  DateTime createdAt;

  /// Time the pull request was updated
  DateTime updatedAt;

  /// Time the pull request was closed
  DateTime closedAt;

  /// Time the pull request was merged
  DateTime mergedAt;

  /// The Pull Request Head
  PullRequestHead head;

  /// Pull Request Base
  PullRequestHead base;

  /// The User who created the Pull Request
  User user;

  /// Whether or not the pull request is a draft
  bool draft;
  String mergeCommitSha;

  /// If the pull request was merged
  bool merged;

  /// If the pull request is mergeable
  bool mergeable;

  /// The user who merged the pull request
  User mergedBy;

  /// Number of comments
  int commentsCount;

  /// Number of commits
  int commitsCount;

  /// Number of additions
  int additionsCount;

  /// Number of deletions
  int deletionsCount;

  /// Number of changed files
  int changedFilesCount;

  /// Pull Request Labels
  List<IssueLabel> labels;

  factory PullRequest.fromJson(Map<String, dynamic> input) =>
      _$PullRequestFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestToJson(this);
}

/// Model class for a pull request merge.
@JsonSerializable(fieldRename: FieldRename.snake)
class PullRequestMerge {
  PullRequestMerge({
    this.merged,
    this.sha,
    this.message,
  });
  bool merged;
  String sha;
  String message;

  factory PullRequestMerge.fromJson(Map<String, dynamic> input) =>
      _$PullRequestMergeFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestMergeToJson(this);
}

/// Model class for a Pull Request Head.
@JsonSerializable(fieldRename: FieldRename.snake)
class PullRequestHead {
  PullRequestHead({
    this.label,
    this.ref,
    this.sha,
    this.user,
    this.repo,
  });

  String label;
  String ref;
  String sha;
  User user;
  Repository repo;

  factory PullRequestHead.fromJson(Map<String, dynamic> input) =>
      _$PullRequestHeadFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestHeadToJson(this);
}

/// Model class for a pull request to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreatePullRequest {
  CreatePullRequest(this.title, this.head, this.base,
      {this.draft = false, this.body});

  final String title;
  final String head;
  final String base;

  /// Whether a draft PR should be created.
  ///
  /// This is currently experimental functionality since the way draft PRs are
  /// created through Github's REST API is in developer preview only - and could change at any time.
  @experimental
  final bool draft;

  String body;

  factory CreatePullRequest.fromJson(Map<String, dynamic> input) =>
      _$CreatePullRequestFromJson(input);
  Map<String, dynamic> toJson() => _$CreatePullRequestToJson(this);
}

/// Model class for a pull request comment.
@JsonSerializable(fieldRename: FieldRename.snake)
class PullRequestComment {
  PullRequestComment({
    this.id,
    this.diffHunk,
    this.path,
    this.position,
    this.originalPosition,
    this.commitId,
    this.originalCommitId,
    this.user,
    this.body,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.pullRequestUrl,
    this.links,
  });
  int id;
  String diffHunk;
  String path;
  int position;
  int originalPosition;
  String commitId;
  String originalCommitId;
  User user;
  String body;
  DateTime createdAt;
  DateTime updatedAt;
  String url;
  String pullRequestUrl;
  @JsonKey(name: '_links')
  Links links;

  factory PullRequestComment.fromJson(Map<String, dynamic> input) =>
      _$PullRequestCommentFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestCommentToJson(this);
}

/// Model class for a pull request comment to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreatePullRequestComment {
  CreatePullRequestComment(this.body, this.commitId, this.path, this.position);
  String body;
  String commitId;
  String path;
  int position;

  factory CreatePullRequestComment.fromJson(Map<String, dynamic> input) =>
      _$CreatePullRequestCommentFromJson(input);
  Map<String, dynamic> toJson() => _$CreatePullRequestCommentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PullRequestFile {
  PullRequestFile({
    this.sha,
    this.filename,
    this.status,
    this.additionsCount,
    this.deletionsCount,
    this.changesCount,
    this.blobUrl,
    this.rawUrl,
    this.contentsUrl,
    this.patch,
  });
  String sha;
  String filename;
  String status;
  @JsonKey(name: 'additions')
  int additionsCount;
  @JsonKey(name: 'deletions')
  int deletionsCount;
  @JsonKey(name: 'changes')
  int changesCount;
  String blobUrl;
  String rawUrl;
  String contentsUrl;
  String patch;

  factory PullRequestFile.fromJson(Map<String, dynamic> input) =>
      _$PullRequestFileFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestFileToJson(this);
}
