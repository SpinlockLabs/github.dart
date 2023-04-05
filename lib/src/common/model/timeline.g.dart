// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineEvent _$TimelineEventFromJson(Map<String, dynamic> json) =>
    TimelineEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimelineEventToJson(TimelineEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
    };

LabelEvent _$LabelEventFromJson(Map<String, dynamic> json) => LabelEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      label: json['label'] == null
          ? null
          : IssueLabel.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LabelEventToJson(LabelEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'label': instance.label,
    };

MilestoneEvent _$MilestoneEventFromJson(Map<String, dynamic> json) =>
    MilestoneEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      milestone: json['milestone'] == null
          ? null
          : Milestone.fromJson(json['milestone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MilestoneEventToJson(MilestoneEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'milestone': instance.milestone,
    };

RenameEvent _$RenameEventFromJson(Map<String, dynamic> json) => RenameEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'renamed',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      rename: json['rename'] == null
          ? null
          : Rename.fromJson(json['rename'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenameEventToJson(RenameEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'rename': instance.rename,
    };

ReviewRequestEvent _$ReviewRequestEventFromJson(Map<String, dynamic> json) =>
    ReviewRequestEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      requestedReviewer: json['requested_reviewer'] == null
          ? null
          : User.fromJson(json['requested_reviewer'] as Map<String, dynamic>),
      requestedTeam: json['requested_team'] == null
          ? null
          : Team.fromJson(json['requested_team'] as Map<String, dynamic>),
      reviewRequester: json['review_requester'] == null
          ? null
          : User.fromJson(json['review_requester'] as Map<String, dynamic>),
    )..performedViaGithubApp = json['performed_via_github_app'] == null
        ? null
        : GitHubApp.fromJson(
            json['performed_via_github_app'] as Map<String, dynamic>);

Map<String, dynamic> _$ReviewRequestEventToJson(ReviewRequestEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'requested_reviewer': instance.requestedReviewer,
      'requested_team': instance.requestedTeam,
      'review_requester': instance.reviewRequester,
    };

ReviewDismissedEvent _$ReviewDismissedEventFromJson(
        Map<String, dynamic> json) =>
    ReviewDismissedEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'review_dismissed',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      dismissedReview: json['dismissed_review'] == null
          ? null
          : DismissedReview.fromJson(
              json['dismissed_review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewDismissedEventToJson(
        ReviewDismissedEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'dismissed_review': instance.dismissedReview,
    };

LockEvent _$LockEventFromJson(Map<String, dynamic> json) => LockEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'locked',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      lockReason: json['lock_reason'] as String?,
    );

Map<String, dynamic> _$LockEventToJson(LockEvent instance) => <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'lock_reason': instance.lockReason,
    };

ProjectEvent _$ProjectEventFromJson(Map<String, dynamic> json) => ProjectEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      projectCard: json['project_card'] == null
          ? null
          : ProjectCard.fromJson(json['project_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectEventToJson(ProjectEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'project_card': instance.projectCard,
    };

CommentEvent _$CommentEventFromJson(Map<String, dynamic> json) => CommentEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'commented',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      authorAssociation: json['author_association'] as String?,
      body: json['body'] as String?,
      bodyHtml: json['body_html'] as String?,
      bodyText: json['body_text'] as String?,
      htmlUrl: json['html_url'] as String?,
      issueUrl: json['issue_url'] as String?,
      reactions: json['reactions'] == null
          ? null
          : ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentEventToJson(CommentEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'author_association': instance.authorAssociation,
      'body': instance.body,
      'body_html': instance.bodyHtml,
      'body_text': instance.bodyText,
      'html_url': instance.htmlUrl,
      'issue_url': instance.issueUrl,
      'reactions': instance.reactions,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

CrossReferenceEvent _$CrossReferenceEventFromJson(Map<String, dynamic> json) =>
    CrossReferenceEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'cross-referenced',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CrossReferenceEventToJson(
        CrossReferenceEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'source': instance.source,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

TimelineCommitEvent _$TimelineCommitEventFromJson(Map<String, dynamic> json) =>
    TimelineCommitEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'committed',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      committer: json['committer'] == null
          ? null
          : User.fromJson(json['committer'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String?,
      message: json['message'] as String?,
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) => Tree.fromJson(e as Map<String, dynamic>))
          .toList(),
      sha: json['sha'] as String?,
      tree: json['tree'] == null
          ? null
          : Tree.fromJson(json['tree'] as Map<String, dynamic>),
      verification: json['verification'] == null
          ? null
          : Verification.fromJson(json['verification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimelineCommitEventToJson(
        TimelineCommitEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'author': instance.author,
      'committer': instance.committer,
      'html_url': instance.htmlUrl,
      'message': instance.message,
      'parents': instance.parents,
      'sha': instance.sha,
      'tree': instance.tree,
      'verification': instance.verification,
    };

ReviewEvent _$ReviewEventFromJson(Map<String, dynamic> json) => ReviewEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? 'reviewed',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      authorAssociation: json['author_association'] as String?,
      body: json['body'] as String?,
      bodyHtml: json['body_html'] as String?,
      bodyText: json['body_text'] as String?,
      htmlUrl: json['html_url'] as String?,
      links: json['_links'] == null
          ? null
          : ReviewLinks.fromJson(json['_links'] as Map<String, dynamic>),
      pullRequestUrl: json['pull_request_url'] as String?,
      state: json['state'] as String?,
      submittedAt: json['submitted_at'] == null
          ? null
          : DateTime.parse(json['submitted_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewEventToJson(ReviewEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'author_association': instance.authorAssociation,
      'body': instance.body,
      'body_html': instance.bodyHtml,
      'body_text': instance.bodyText,
      'html_url': instance.htmlUrl,
      '_links': instance.links,
      'pull_request_url': instance.pullRequestUrl,
      'state': instance.state,
      'submitted_at': instance.submittedAt?.toIso8601String(),
      'user': instance.user,
    };

TimelineLineCommentedEvent _$TimelineLineCommentedEventFromJson(
        Map<String, dynamic> json) =>
    TimelineLineCommentedEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              PullRequestReviewComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimelineLineCommentedEventToJson(
        TimelineLineCommentedEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'comments': instance.comments,
    };

TimelineCommitCommentedEvent _$TimelineCommitCommentedEventFromJson(
        Map<String, dynamic> json) =>
    TimelineCommitCommentedEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommitComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimelineCommitCommentedEventToJson(
        TimelineCommitCommentedEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'comments': instance.comments,
    };

AssigneeEvent _$AssigneeEventFromJson(Map<String, dynamic> json) =>
    AssigneeEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      assignee: json['assignee'] == null
          ? null
          : User.fromJson(json['assignee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssigneeEventToJson(AssigneeEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'assignee': instance.assignee,
    };

StateChangeIssueEvent _$StateChangeIssueEventFromJson(
        Map<String, dynamic> json) =>
    StateChangeIssueEvent(
      id: json['id'] as int? ?? 0,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      event: json['event'] as String? ?? '',
      commitId: json['commit_id'] as String?,
      commitUrl: json['commit_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      stateReason: json['state_reason'] as String?,
    );

Map<String, dynamic> _$StateChangeIssueEventToJson(
        StateChangeIssueEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'actor': instance.actor,
      'event': instance.event,
      'commit_id': instance.commitId,
      'commit_url': instance.commitUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'performed_via_github_app': instance.performedViaGithubApp,
      'state_reason': instance.stateReason,
    };
