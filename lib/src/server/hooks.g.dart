// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryEvent _$RepositoryEventFromJson(Map<String, dynamic> json) {
  return RepositoryEvent(
    action: json['action'] as String,
    repository: json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>),
    sender: json['sender'] == null
        ? null
        : User.fromJson(json['sender'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RepositoryEventToJson(RepositoryEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'repository': instance.repository,
      'sender': instance.sender,
    };

IssueCommentEvent _$IssueCommentEventFromJson(Map<String, dynamic> json) {
  return IssueCommentEvent(
    action: json['action'] as String,
    issue: json['issue'] == null
        ? null
        : Issue.fromJson(json['issue'] as Map<String, dynamic>),
    comment: json['comment'] == null
        ? null
        : IssueComment.fromJson(json['comment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IssueCommentEventToJson(IssueCommentEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'issue': instance.issue,
      'comment': instance.comment,
    };

ForkEvent _$ForkEventFromJson(Map<String, dynamic> json) {
  return ForkEvent(
    forkee: json['forkee'] == null
        ? null
        : Repository.fromJson(json['forkee'] as Map<String, dynamic>),
    sender: json['sender'] == null
        ? null
        : User.fromJson(json['sender'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ForkEventToJson(ForkEvent instance) => <String, dynamic>{
      'forkee': instance.forkee,
      'sender': instance.sender,
    };

IssueEvent _$IssueEventFromJson(Map<String, dynamic> json) {
  return IssueEvent(
    action: json['action'] as String,
    assignee: json['assignee'] == null
        ? null
        : User.fromJson(json['assignee'] as Map<String, dynamic>),
    label: json['label'] == null
        ? null
        : IssueLabel.fromJson(json['label'] as Map<String, dynamic>),
    issue: json['issue'] == null
        ? null
        : Issue.fromJson(json['issue'] as Map<String, dynamic>),
    sender: json['sender'] == null
        ? null
        : User.fromJson(json['sender'] as Map<String, dynamic>),
    repository: json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IssueEventToJson(IssueEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'assignee': instance.assignee,
      'label': instance.label,
      'issue': instance.issue,
      'sender': instance.sender,
      'repository': instance.repository,
    };

PullRequestEvent _$PullRequestEventFromJson(Map<String, dynamic> json) {
  return PullRequestEvent(
    action: json['action'] as String,
    number: json['number'] as int,
    pullRequest: json['pull_request'] == null
        ? null
        : PullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
    sender: json['sender'] == null
        ? null
        : User.fromJson(json['sender'] as Map<String, dynamic>),
    repository: json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PullRequestEventToJson(PullRequestEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'number': instance.number,
      'pull_request': instance.pullRequest,
      'sender': instance.sender,
      'repository': instance.repository,
    };
