import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pulls.g.dart';

/// Model class for a Pull Request.
@JsonSerializable()
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
    this.commentsCount = 0,
    this.commitsCount = 0,
    this.additionsCount = 0,
    this.deletionsCount = 0,
    this.changedFilesCount = 0,
    this.labels,
    this.requestedReviewers,
    this.reviewCommentCount = 0,
    this.milestone,
    this.rebaseable = false,
    this.mergeableState = '',
    this.maintainerCanModify = false,
    this.authorAssociation = '',
  });

  /// Pull Request ID
  int? id;

  /// Url to the Pull Request Page
  String? htmlUrl;

  /// Url to the diff for this Pull Request
  String? diffUrl;

  /// Url to the patch for this Pull Request
  String? patchUrl;

  /// Pull Request Number
  int? number;

  /// Pull Request State
  String? state;

  /// Pull Request Title
  String? title;

  /// Pull Request Body
  String? body;

  /// Time the pull request was created
  DateTime? createdAt;

  /// Time the pull request was updated
  DateTime? updatedAt;

  /// Time the pull request was closed
  DateTime? closedAt;

  /// Time the pull request was merged
  DateTime? mergedAt;

  /// The Pull Request Head
  PullRequestHead? head;

  /// Pull Request Base
  PullRequestHead? base;

  /// The User who created the Pull Request
  User? user;

  /// Whether or not the pull request is a draft
  bool? draft;

  String? mergeCommitSha;

  /// If the pull request was merged
  bool? merged;

  /// If the pull request is mergeable
  bool? mergeable;

  /// The user who merged the pull request
  User? mergedBy;

  /// Number of comments
  @JsonKey(name: 'comments')
  int? commentsCount;

  /// Number of commits
  @JsonKey(name: 'commits')
  int? commitsCount;

  /// Number of additions
  @JsonKey(name: 'additions')
  int? additionsCount;

  /// Number of deletions
  @JsonKey(name: 'deletions')
  int? deletionsCount;

  /// Number of changed files
  @JsonKey(name: 'changed_files')
  int? changedFilesCount;

  /// Pull Request Labels
  List<IssueLabel>? labels;

  /// Reviewers requested for this Pull Request.
  List<User>? requestedReviewers;

  /// The number of review comments on the Pull Request.
  @JsonKey(name: 'review_comments')
  int? reviewCommentCount;

  Milestone? milestone;

  bool? rebaseable;

  String? mergeableState;

  bool? maintainerCanModify;

  /// Ex: CONTRIBUTOR, NONE, OWNER
  String? authorAssociation;

  Repository? repo;

  factory PullRequest.fromJson(Map<String, dynamic> input) =>
      _$PullRequestFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestToJson(this);
}

/// Model class for a pull request merge.
@JsonSerializable()
class PullRequestMerge {
  PullRequestMerge({
    this.merged,
    this.sha,
    this.message,
  });

  bool? merged;
  String? sha;
  String? message;

  factory PullRequestMerge.fromJson(Map<String, dynamic> input) =>
      _$PullRequestMergeFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestMergeToJson(this);
}

/// Model class for a Pull Request Head.
@JsonSerializable()
class PullRequestHead {
  PullRequestHead({
    this.label,
    this.ref,
    this.sha,
    this.user,
    this.repo,
  });

  String? label;
  String? ref;
  String? sha;
  User? user;
  Repository? repo;

  factory PullRequestHead.fromJson(Map<String, dynamic> input) =>
      _$PullRequestHeadFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestHeadToJson(this);
}

/// Model class for a pull request to be created.
@JsonSerializable()
class CreatePullRequest {
  CreatePullRequest(this.title, this.head, this.base,
      {this.draft = false, this.body});

  String? title;
  String? head;
  String? base;

  /// Whether a draft PR should be created.
  ///
  /// This is currently experimental functionality since the way draft PRs are
  /// created through Github's REST API is in developer preview only - and could change at any time.
  @experimental
  bool? draft;

  String? body;

  factory CreatePullRequest.fromJson(Map<String, dynamic> input) =>
      _$CreatePullRequestFromJson(input);
  Map<String, dynamic> toJson() => _$CreatePullRequestToJson(this);
}

/// Model class for a pull request comment.
@JsonSerializable()
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

  int? id;
  String? diffHunk;
  String? path;
  int? position;
  int? originalPosition;
  String? commitId;
  String? originalCommitId;
  User? user;
  String? body;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? url;
  String? pullRequestUrl;
  @JsonKey(name: '_links')
  Links? links;

  factory PullRequestComment.fromJson(Map<String, dynamic> input) =>
      _$PullRequestCommentFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestCommentToJson(this);
}

/// Model class for a pull request comment to be created.
@JsonSerializable()
class CreatePullRequestComment {
  CreatePullRequestComment(this.body, this.commitId, this.path, this.position);
  String? body;
  String? commitId;
  String? path;
  int? position;

  factory CreatePullRequestComment.fromJson(Map<String, dynamic> input) =>
      _$CreatePullRequestCommentFromJson(input);
  Map<String, dynamic> toJson() => _$CreatePullRequestCommentToJson(this);
}

@JsonSerializable()
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

  String? sha;
  String? filename;
  String? status;
  @JsonKey(name: 'additions')
  int? additionsCount;
  @JsonKey(name: 'deletions')
  int? deletionsCount;
  @JsonKey(name: 'changes')
  int? changesCount;
  String? blobUrl;
  String? rawUrl;
  String? contentsUrl;
  String? patch;

  factory PullRequestFile.fromJson(Map<String, dynamic> input) =>
      _$PullRequestFileFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestFileToJson(this);
}

@JsonSerializable()
class PullRequestReview {
  PullRequestReview(
      {required this.id,
      required this.user,
      this.body,
      this.state,
      this.htmlUrl,
      this.pullRequestUrl});

  int id;
  User user;
  String? body;
  String? state;
  String? htmlUrl;
  String? pullRequestUrl;
  DateTime? submittedAt;
  String? authorAssociation;
  String? commitId;

  factory PullRequestReview.fromJson(Map<String, dynamic> input) =>
      _$PullRequestReviewFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestReviewToJson(this);
}

@JsonSerializable()
class CreatePullRequestReview {
  CreatePullRequestReview(this.owner, this.repo, this.pullNumber, this.event,
      {this.body, this.comments});

  String owner;
  String repo;
  String event;
  String? body;
  int pullNumber;
  List<PullRequestReviewComment>? comments;

  factory CreatePullRequestReview.fromJson(Map<String, dynamic> input) =>
      _$CreatePullRequestReviewFromJson(input);
  Map<String, dynamic> toJson() => _$CreatePullRequestReviewToJson(this);
}

/// Pull Request Review Comment
///
/// Pull Request Review Comments are comments on a portion of the Pull Request's
/// diff.
@JsonSerializable()
class PullRequestReviewComment {
  PullRequestReviewComment({
    this.authorAssociation,
    this.body,
    this.bodyHtml,
    this.bodyText,
    this.commitId,
    this.createdAt,
    this.diffHunk,
    this.htmlUrl,
    this.id,
    this.inReplyToId,
    this.line,
    this.links,
    this.nodeId,
    this.originalCommitId,
    this.originalLine,
    this.originalPosition,
    this.originalStartLine,
    this.path,
    this.position,
    this.pullRequestReviewId,
    this.pullRequestUrl,
    this.reactions,
    this.side,
    this.startLine,
    this.startSide,
    this.subjectType,
    this.updatedAt,
    this.url,
    this.user,
  });

  /// How the author is associated with the repository.
  ///
  /// Example: `OWNER`
  String? authorAssociation;

  /// The text of the comment.
  ///
  /// Example: `We should probably include a check for null values here.`
  String? body;

  /// Example: `"<p>comment body</p>"`
  String? bodyHtml;

  /// Example: `"comment body"`
  String? bodyText;

  /// The SHA of the commit to which the comment applies.
  ///
  /// Example: `6dcb09b5b57875f334f61aebed695e2e4193db5e`
  String? commitId;

  DateTime? createdAt;

  /// The diff of the line that the comment refers to.
  ///
  /// Example: `@@ -16,33 +16,40 @@ public class Connection : IConnection...`
  String? diffHunk;

  /// HTML URL for the pull request review comment.
  ///
  /// Example: `https://github.com/octocat/Hello-World/pull/1#discussion-diff-1`
  String? htmlUrl;

  /// The ID of the pull request review comment.
  int? id;

  /// The comment ID to reply to.
  int? inReplyToId;

  /// The line of the blob to which the comment applies. The last line of the range
  /// for a multi-line comment
  int? line;

  @JsonKey(name: '_links')
  ReviewLinks? links;

  /// The node ID of the pull request review comment.
  ///
  /// Example: `MDI0OlB1bGxSZXF1ZXN0UmV2aWV3Q29tbWVudDEw`
  String? nodeId;

  /// The SHA of the original commit to which the comment applies.
  ///
  /// Example: `9c48853fa3dc5c1c3d6f1f1cd1f2743e72652840`
  String? originalCommitId;

  /// The line of the blob to which the comment applies. The last line of the range
  /// for a multi-line comment
  int? originalLine;

  /// The index of the original line in the diff to which the comment applies. This
  /// field is deprecated; use `original_line` instead.
  int? originalPosition;

  /// The first line of the range for a multi-line comment.
  int? originalStartLine;

  /// The relative path of the file to which the comment applies.
  ///
  /// Example: `config/database.yaml`
  String? path;

  /// The line index in the diff to which the comment applies. This field is deprecated;
  /// use `line` instead.
  int? position;

  /// The ID of the pull request review to which the comment belongs.
  int? pullRequestReviewId;

  /// URL for the pull request that the review comment belongs to.
  ///
  /// Example: `https://api.github.com/repos/octocat/Hello-World/pulls/1`
  String? pullRequestUrl;

  /// Reaction Rollup
  ReactionRollup? reactions;

  /// The side of the diff to which the comment applies. The side of the last line
  /// of the range for a multi-line comment
  String? side;

  /// The first line of the range for a multi-line comment.
  int? startLine;

  /// The side of the first line of the range for a multi-line comment.
  String? startSide;

  /// The level at which the comment is targeted, can be a diff line or a file.
  String? subjectType;

  DateTime? updatedAt;

  /// URL for the pull request review comment
  ///
  /// Example: `https://api.github.com/repos/octocat/Hello-World/pulls/comments/1`
  String? url;

  User? user;

  Map<String, dynamic> toJson() => _$PullRequestReviewCommentToJson(this);

  factory PullRequestReviewComment.fromJson(Map<String, dynamic> input) =>
      _$PullRequestReviewCommentFromJson(input);
}

/// This is similar to [Links] but represents a different serialization
/// in the GitHub API.
///
/// It is used for [PullRequestReviewComment.links] and
/// [ReviewEvent.links].
class ReviewLinks {
  ReviewLinks({
    this.html,
    this.pullRequest,
    this.self,
  });

  Uri? html;
  Uri? pullRequest;
  Uri? self;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'html': {'href': html?.toString()},
      'pullRequest': {'href': pullRequest?.toString()},
      'self': {'href': self?.toString()},
    };
  }

  static Uri? _parseBlock(Map<String, dynamic> input, String key) {
    if (input[key] is Map && input[key]['href'] is String) {
      return Uri.parse(input[key]['href']! as String);
    }
    return null;
  }

  factory ReviewLinks.fromJson(Map<String, dynamic> input) {
    return ReviewLinks(
      html: _parseBlock(input, 'html'),
      pullRequest: _parseBlock(input, 'pull_request'),
      self: _parseBlock(input, 'self'),
    );
  }
}
