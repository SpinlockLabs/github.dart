// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Issue _$IssueFromJson(Map<String, dynamic> json) => Issue(
      id: (json['id'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
      htmlUrl: json['html_url'] as String? ?? '',
      number: (json['number'] as num?)?.toInt() ?? 0,
      state: json['state'] as String? ?? '',
      title: json['title'] as String? ?? '',
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      labels: (json['labels'] as List<dynamic>?)
              ?.map((e) => IssueLabel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      assignee: json['assignee'] == null
          ? null
          : User.fromJson(json['assignee'] as Map<String, dynamic>),
      assignees: (json['assignees'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      milestone: json['milestone'] == null
          ? null
          : Milestone.fromJson(json['milestone'] as Map<String, dynamic>),
      commentsCount: (json['comments'] as num?)?.toInt() ?? 0,
      pullRequest: json['pull_request'] == null
          ? null
          : IssuePullRequest.fromJson(
              json['pull_request'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      closedAt: json['closed_at'] == null
          ? null
          : DateTime.parse(json['closed_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      body: json['body'] as String? ?? '',
      closedBy: json['closed_by'] == null
          ? null
          : User.fromJson(json['closed_by'] as Map<String, dynamic>),
      activeLockReason: json['active_lock_reason'] as String?,
      authorAssociation: json['author_association'] as String?,
      bodyHtml: json['body_html'] as String?,
      bodyText: json['body_text'] as String?,
      commentsUrl: json['comments_url'] as String?,
      draft: json['draft'] as bool?,
      eventsUrl: json['events_url'] as String?,
      labelsUrl: json['labels_url'] as String?,
      locked: json['locked'] as bool?,
      nodeId: json['node_id'] as String?,
      performedViaGithubApp: json['performed_via_github_app'] == null
          ? null
          : GitHubApp.fromJson(
              json['performed_via_github_app'] as Map<String, dynamic>),
      reactions: json['reactions'] == null
          ? null
          : ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>),
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
      repositoryUrl: json['repository_url'] as String?,
      stateReason: json['state_reason'] as String?,
      timelineUrl: json['timeline_url'] as String?,
    );

Map<String, dynamic> _$IssueToJson(Issue instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'number': instance.number,
      'state': instance.state,
      'title': instance.title,
      'user': instance.user,
      'labels': instance.labels,
      'assignee': instance.assignee,
      'assignees': instance.assignees,
      'milestone': instance.milestone,
      'comments': instance.commentsCount,
      'pull_request': instance.pullRequest,
      'created_at': instance.createdAt?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'body': instance.body,
      'closed_by': instance.closedBy,
      'active_lock_reason': instance.activeLockReason,
      'author_association': instance.authorAssociation,
      'body_html': instance.bodyHtml,
      'body_text': instance.bodyText,
      'comments_url': instance.commentsUrl,
      'draft': instance.draft,
      'events_url': instance.eventsUrl,
      'labels_url': instance.labelsUrl,
      'locked': instance.locked,
      'node_id': instance.nodeId,
      'performed_via_github_app': instance.performedViaGithubApp,
      'reactions': instance.reactions,
      'repository': instance.repository,
      'repository_url': instance.repositoryUrl,
      'state_reason': instance.stateReason,
      'timeline_url': instance.timelineUrl,
    };

IssueRequest _$IssueRequestFromJson(Map<String, dynamic> json) => IssueRequest(
      title: json['title'] as String?,
      body: json['body'] as String?,
      labels:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
      assignee: json['assignee'] as String?,
      assignees: (json['assignees'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      state: json['state'] as String?,
      milestone: (json['milestone'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IssueRequestToJson(IssueRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'labels': instance.labels,
      'assignee': instance.assignee,
      'assignees': instance.assignees,
      'state': instance.state,
      'milestone': instance.milestone,
    };

IssuePullRequest _$IssuePullRequestFromJson(Map<String, dynamic> json) =>
    IssuePullRequest(
      htmlUrl: json['html_url'] as String?,
      diffUrl: json['diff_url'] as String?,
      patchUrl: json['patch_url'] as String?,
    );

Map<String, dynamic> _$IssuePullRequestToJson(IssuePullRequest instance) =>
    <String, dynamic>{
      'html_url': instance.htmlUrl,
      'diff_url': instance.diffUrl,
      'patch_url': instance.patchUrl,
    };

IssueComment _$IssueCommentFromJson(Map<String, dynamic> json) => IssueComment(
      id: (json['id'] as num?)?.toInt(),
      body: json['body'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
      issueUrl: json['issue_url'] as String?,
      authorAssociation: json['author_association'] as String?,
    );

Map<String, dynamic> _$IssueCommentToJson(IssueComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'issue_url': instance.issueUrl,
      'author_association': instance.authorAssociation,
    };

IssueLabel _$IssueLabelFromJson(Map<String, dynamic> json) => IssueLabel(
      name: json['name'] as String? ?? '',
      color: json['color'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$IssueLabelToJson(IssueLabel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'description': instance.description,
    };

Milestone _$MilestoneFromJson(Map<String, dynamic> json) => Milestone(
      id: (json['id'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      state: json['state'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      creator: json['creator'] == null
          ? null
          : User.fromJson(json['creator'] as Map<String, dynamic>),
      openIssuesCount: (json['open_issues'] as num?)?.toInt(),
      closedIssuesCount: (json['closed_issues'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      dueOn: json['due_on'] == null
          ? null
          : DateTime.parse(json['due_on'] as String),
      closedAt: json['closed_at'] == null
          ? null
          : DateTime.parse(json['closed_at'] as String),
      htmlUrl: json['html_url'] as String?,
      labelsUrl: json['labels_url'] as String?,
      nodeId: json['node_id'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$MilestoneToJson(Milestone instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'state': instance.state,
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator,
      'open_issues': instance.openIssuesCount,
      'closed_issues': instance.closedIssuesCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'due_on': instance.dueOn?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'html_url': instance.htmlUrl,
      'labels_url': instance.labelsUrl,
      'node_id': instance.nodeId,
      'url': instance.url,
    };

CreateMilestone _$CreateMilestoneFromJson(Map<String, dynamic> json) =>
    CreateMilestone(
      json['title'] as String?,
      state: json['state'] as String?,
      description: json['description'] as String?,
      dueOn: json['due_on'] == null
          ? null
          : DateTime.parse(json['due_on'] as String),
    );

Map<String, dynamic> _$CreateMilestoneToJson(CreateMilestone instance) =>
    <String, dynamic>{
      'title': instance.title,
      'state': instance.state,
      'description': instance.description,
      'due_on': instance.dueOn?.toIso8601String(),
    };
