import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timeline.g.dart';

// Parts of this file were originally automatically generated from the response
// schema provided in the API documentation for GitHub's "List timeline events
// for an issue" API [1], using the `tool/process_github_schema.dart` script.
//
// Unfortunately, that schema contradicts the prose documentation [2] in a great
// variety of ways (for example none of the "common properties" are actually
// common to all the event types), so this code is an attempt to find the most
// pragmatic middleground between what is documented and what actually works.
//
// [1] https://docs.github.com/en/rest/issues/timeline?apiVersion=2022-11-28
// [2] https://docs.github.com/en/webhooks-and-events/events/issue-event-types

/// Model class for an issue or PR timeline event.
///
/// This is a base class for the various event types. Events that only use the
/// default fields use this class; events that have additional fields use one
/// of the subclasses.
///
/// The [TimelineEvent.fromJson] factory selects the right subclass based on
/// the [event] field.
///
/// If the [event] type is not known, [TimelineEvent] is used.
///
/// See also: https://docs.github.com/en/webhooks-and-events/events/issue-event-types
@JsonSerializable()
class TimelineEvent {
  TimelineEvent({
    this.id = 0,
    this.nodeId,
    this.url,
    this.actor,
    this.event = '',
    this.commitId,
    this.commitUrl,
    this.createdAt,
    this.performedViaGithubApp,
  });

  int id;
  String? nodeId;
  String? url;
  User? actor;
  String event;
  String? commitId;
  String? commitUrl;
  DateTime? createdAt;
  GitHubApp? performedViaGithubApp;

  Map<String, dynamic> toJson() => _$TimelineEventToJson(this);

  factory TimelineEvent.fromJson(Map<String, dynamic> input) {
    switch (input['event']) {
      case 'added_to_project':
        return ProjectEvent.fromJson(input);
      case 'assigned':
        return AssigneeEvent.fromJson(input);
      case 'commented':
        return CommentEvent.fromJson(input);
      case 'committed':
        return TimelineCommitEvent.fromJson(input);
      case 'cross-referenced':
        return CrossReferenceEvent.fromJson(input);
      case 'demilestoned':
        return MilestoneEvent.fromJson(input);
      case 'labeled':
        return LabelEvent.fromJson(input);
      case 'locked':
        return LockEvent.fromJson(input);
      case 'milestoned':
        return MilestoneEvent.fromJson(input);
      case 'moved_columns_in_project':
        return ProjectEvent.fromJson(input);
      case 'removed_from_project':
        return ProjectEvent.fromJson(input);
      case 'renamed':
        return RenameEvent.fromJson(input);
      case 'review_dismissed':
        return ReviewDismissedEvent.fromJson(input);
      case 'review_requested':
        return ReviewRequestEvent.fromJson(input);
      case 'review_request_removed':
        return ReviewRequestEvent.fromJson(input);
      case 'reviewed':
        return ReviewEvent.fromJson(input);
      case 'unassigned':
        return AssigneeEvent.fromJson(input);
      case 'unlabeled':
        return LabelEvent.fromJson(input);
      default:
        return _$TimelineEventFromJson(input);
    }
  }
}

/// Labeled and Unlabeled Issue Events
@JsonSerializable()
class LabelEvent extends TimelineEvent {
  LabelEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = '', // typically 'labeled' or 'unlabeled'
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.label,
  });

  IssueLabel? label;

  @override
  Map<String, dynamic> toJson() => _$LabelEventToJson(this);

  factory LabelEvent.fromJson(Map<String, dynamic> input) =>
      _$LabelEventFromJson(input);
}

/// Milestoned and Demilestoned Issue Event
@JsonSerializable()
class MilestoneEvent extends TimelineEvent {
  MilestoneEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = '', // typically 'milestoned' or 'demilestoned'
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.milestone,
  });

  Milestone? milestone;

  @override
  Map<String, dynamic> toJson() => _$MilestoneEventToJson(this);

  factory MilestoneEvent.fromJson(Map<String, dynamic> input) =>
      _$MilestoneEventFromJson(input);
}

/// Renamed Issue Event
@JsonSerializable()
class RenameEvent extends TimelineEvent {
  RenameEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'renamed',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.rename,
  });

  Rename? rename;

  @override
  Map<String, dynamic> toJson() => _$RenameEventToJson(this);

  factory RenameEvent.fromJson(Map<String, dynamic> input) =>
      _$RenameEventFromJson(input);
}

/// Review Requested and Review Request Removed Issue Events
@JsonSerializable()
class ReviewRequestEvent extends TimelineEvent {
  ReviewRequestEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event =
        '', // typically 'review_requested' or 'review_request_removed'
    super.commitId,
    super.commitUrl,
    super.createdAt,
    this.requestedReviewer,
    this.requestedTeam,
    this.reviewRequester,
  });

  User? requestedReviewer;

  /// Team
  ///
  /// Groups of organization members that gives permissions on specified repositories.
  Team? requestedTeam;

  User? reviewRequester;

  @override
  Map<String, dynamic> toJson() => _$ReviewRequestEventToJson(this);

  factory ReviewRequestEvent.fromJson(Map<String, dynamic> input) =>
      _$ReviewRequestEventFromJson(input);
}

/// Review Dismissed Issue Event
@JsonSerializable()
class ReviewDismissedEvent extends TimelineEvent {
  ReviewDismissedEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'review_dismissed',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.dismissedReview,
  });

  DismissedReview? dismissedReview;

  @override
  Map<String, dynamic> toJson() => _$ReviewDismissedEventToJson(this);

  factory ReviewDismissedEvent.fromJson(Map<String, dynamic> input) =>
      _$ReviewDismissedEventFromJson(input);
}

/// Locked Issue Event
@JsonSerializable()
class LockEvent extends TimelineEvent {
  LockEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'locked',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.lockReason,
  });

  /// Example: `"off-topic"`
  String? lockReason;

  @override
  Map<String, dynamic> toJson() => _$LockEventToJson(this);

  factory LockEvent.fromJson(Map<String, dynamic> input) =>
      _$LockEventFromJson(input);
}

/// Added to Project,
/// Moved Columns in Project,
/// Removed from Project, and
/// Converted Note to Issue
/// Issue Events.
@JsonSerializable()
class ProjectEvent extends TimelineEvent {
  ProjectEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event, // typically one of 'added_to_project', 'moved_columns_in_project', 'removed_from_project', 'converted_note_to_issue'
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.projectCard,
  });

  ProjectCard? projectCard;

  @override
  Map<String, dynamic> toJson() => _$ProjectEventToJson(this);

  factory ProjectEvent.fromJson(Map<String, dynamic> input) =>
      _$ProjectEventFromJson(input);
}

/// Timeline Comment Event
@JsonSerializable()
class CommentEvent extends TimelineEvent {
  CommentEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'commented',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.authorAssociation,
    this.body,
    this.bodyHtml,
    this.bodyText,
    this.htmlUrl,
    this.issueUrl,
    this.reactions,
    this.updatedAt,
    this.user,
  });

  /// How the author is associated with the repository.
  ///
  /// Example: `OWNER`
  String? authorAssociation;

  /// Contents of the issue comment
  ///
  /// Example: `What version of Safari were you using when you observed this bug?`
  String? body;

  String? bodyHtml;
  String? bodyText;

  String? htmlUrl;

  String? issueUrl;

  ReactionRollup? reactions;

  DateTime? updatedAt;

  User? user;

  @override
  Map<String, dynamic> toJson() => _$CommentEventToJson(this);

  factory CommentEvent.fromJson(Map<String, dynamic> input) =>
      _$CommentEventFromJson(input);
}

/// Timeline Cross Referenced Event
@JsonSerializable()
class CrossReferenceEvent extends TimelineEvent {
  CrossReferenceEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'cross-referenced',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.source,
    this.updatedAt,
  });

  Source? source;

  DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$CrossReferenceEventToJson(this);

  factory CrossReferenceEvent.fromJson(Map<String, dynamic> input) =>
      _$CrossReferenceEventFromJson(input);
}

/// Timeline Committed Event
@JsonSerializable()
class TimelineCommitEvent extends TimelineEvent {
  TimelineCommitEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'committed',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.author,
    this.committer,
    this.htmlUrl,
    this.message,
    this.parents,
    this.sha,
    this.tree,
    this.verification,
  });

  User? author;

  /// Identifying information for the git-user
  User? committer;

  /// Format: uri
  String? htmlUrl;

  /// Message describing the purpose of the commit
  String? message;

  List<Tree>? parents;

  /// SHA for the commit
  ///
  /// Example: `7638417db6d59f3c431d3e1f261cc637155684cd`
  String? sha;

  Tree? tree;

  Verification? verification;

  @override
  Map<String, dynamic> toJson() => _$TimelineCommitEventToJson(this);

  factory TimelineCommitEvent.fromJson(Map<String, dynamic> input) =>
      _$TimelineCommitEventFromJson(input);
}

/// Timeline Reviewed Event
@JsonSerializable()
class ReviewEvent extends TimelineEvent {
  ReviewEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = 'reviewed',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.authorAssociation,
    this.body,
    this.bodyHtml,
    this.bodyText,
    this.htmlUrl,
    this.links,
    this.pullRequestUrl,
    this.state,
    this.submittedAt,
    this.user,
  });

  /// How the author is associated with the repository.
  ///
  /// Example: `OWNER`
  String? authorAssociation;

  /// The text of the review.
  ///
  /// Example: `This looks great.`
  String? body;

  String? bodyHtml;
  String? bodyText;

  /// Example: `https://github.com/octocat/Hello-World/pull/12#pullrequestreview-80`
  String? htmlUrl;

  @JsonKey(name: '_links')
  ReviewLinks? links;

  /// Example: `https://api.github.com/repos/octocat/Hello-World/pulls/12`
  String? pullRequestUrl;

  /// Example: `CHANGES_REQUESTED`
  String? state;

  DateTime? submittedAt;

  User? user;

  @override
  Map<String, dynamic> toJson() => _$ReviewEventToJson(this);

  factory ReviewEvent.fromJson(Map<String, dynamic> input) =>
      _$ReviewEventFromJson(input);
}

/// Timeline Line Commented Event
@JsonSerializable()
class TimelineLineCommentedEvent extends TimelineEvent {
  TimelineLineCommentedEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = '',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.comments,
  });

  List<PullRequestReviewComment>? comments;

  @override
  Map<String, dynamic> toJson() => _$TimelineLineCommentedEventToJson(this);

  factory TimelineLineCommentedEvent.fromJson(Map<String, dynamic> input) =>
      _$TimelineLineCommentedEventFromJson(input);
}

/// Timeline Commit Commented Event
@JsonSerializable()
class TimelineCommitCommentedEvent extends TimelineEvent {
  TimelineCommitCommentedEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = '',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.comments,
  });

  List<CommitComment>? comments;

  @override
  Map<String, dynamic> toJson() => _$TimelineCommitCommentedEventToJson(this);

  factory TimelineCommitCommentedEvent.fromJson(Map<String, dynamic> input) =>
      _$TimelineCommitCommentedEventFromJson(input);
}

/// Timeline Assigned and Timeline Unassigned Issue Events
@JsonSerializable()
class AssigneeEvent extends TimelineEvent {
  AssigneeEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event, // typically 'assigned' or 'unassigned'
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.assignee,
  });

  User? assignee;

  @override
  Map<String, dynamic> toJson() => _$AssigneeEventToJson(this);

  factory AssigneeEvent.fromJson(Map<String, dynamic> input) =>
      _$AssigneeEventFromJson(input);
}

/// State Change Issue Event
@JsonSerializable()
class StateChangeIssueEvent extends TimelineEvent {
  StateChangeIssueEvent({
    super.id = 0,
    super.nodeId,
    super.url,
    super.actor,
    super.event = '',
    super.commitId,
    super.commitUrl,
    super.createdAt,
    super.performedViaGithubApp,
    this.stateReason,
  });

  String? stateReason;

  @override
  Map<String, dynamic> toJson() => _$StateChangeIssueEventToJson(this);

  factory StateChangeIssueEvent.fromJson(Map<String, dynamic> input) =>
      _$StateChangeIssueEventFromJson(input);
}
