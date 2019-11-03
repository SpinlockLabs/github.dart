// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return Issue(
    id: json['id'] as int,
    url: json['url'] as String,
    htmlUrl: json['html_url'] as String,
    number: json['number'] as int,
    state: json['state'] as String,
    title: json['title'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    labels: (json['labels'] as List)
        ?.map((e) =>
            e == null ? null : IssueLabel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    assignee: json['assignee'] == null
        ? null
        : User.fromJson(json['assignee'] as Map<String, dynamic>),
    milestone: json['milestone'] == null
        ? null
        : Milestone.fromJson(json['milestone'] as Map<String, dynamic>),
    commentsCount: json['comments'] as int,
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
    body: json['body'] as String,
    closedBy: json['closed_by'] == null
        ? null
        : User.fromJson(json['closed_by'] as Map<String, dynamic>),
  );
}

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
      'milestone': instance.milestone,
      'comments': instance.commentsCount,
      'pull_request': instance.pullRequest,
      'created_at': instance.createdAt?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'body': instance.body,
      'closed_by': instance.closedBy,
    };

IssueRequest _$IssueRequestFromJson(Map<String, dynamic> json) {
  return IssueRequest(
    title: json['title'] as String,
    body: json['body'] as String,
    labels: (json['labels'] as List)?.map((e) => e as String)?.toList(),
    assignee: json['assignee'] as String,
    state: json['state'] as String,
    milestone: json['milestone'] as int,
  );
}

Map<String, dynamic> _$IssueRequestToJson(IssueRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'labels': instance.labels,
      'assignee': instance.assignee,
      'state': instance.state,
      'milestone': instance.milestone,
    };

IssuePullRequest _$IssuePullRequestFromJson(Map<String, dynamic> json) {
  return IssuePullRequest(
    htmlUrl: json['html_url'] as String,
    diffUrl: json['diff_url'] as String,
    patchUrl: json['patch_url'] as String,
  );
}

Map<String, dynamic> _$IssuePullRequestToJson(IssuePullRequest instance) =>
    <String, dynamic>{
      'html_url': instance.htmlUrl,
      'diff_url': instance.diffUrl,
      'patch_url': instance.patchUrl,
    };

IssueComment _$IssueCommentFromJson(Map<String, dynamic> json) {
  return IssueComment(
    id: json['id'] as int,
    body: json['body'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    url: json['url'] as String,
    htmlUrl: json['html_url'] as String,
    issueUrl: json['issue_url'] as String,
  );
}

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
    };

IssueLabel _$IssueLabelFromJson(Map<String, dynamic> json) {
  return IssueLabel(
    name: json['name'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$IssueLabelToJson(IssueLabel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
    };

Milestone _$MilestoneFromJson(Map<String, dynamic> json) {
  return Milestone(
    id: json['id'] as int,
    number: json['number'] as int,
    state: json['state'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    creator: json['creator'] == null
        ? null
        : User.fromJson(json['creator'] as Map<String, dynamic>),
    openIssuesCount: json['open_issues'] as int,
    closedIssuesCount: json['closed_issues'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    dueOn: json['due_on'] == null
        ? null
        : DateTime.parse(json['due_on'] as String),
  );
}

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
    };

CreateMilestone _$CreateMilestoneFromJson(Map<String, dynamic> json) {
  return CreateMilestone(
    json['title'] as String,
    state: json['state'] as String,
    description: json['description'] as String,
    dueOn: json['due_on'] == null
        ? null
        : DateTime.parse(json['due_on'] as String),
  );
}

Map<String, dynamic> _$CreateMilestoneToJson(CreateMilestone instance) =>
    <String, dynamic>{
      'title': instance.title,
      'state': instance.state,
      'description': instance.description,
      'due_on': instance.dueOn?.toIso8601String(),
    };
