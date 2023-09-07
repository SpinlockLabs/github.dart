// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckRunEvent _$CheckRunEventFromJson(Map<String, dynamic> json) =>
    CheckRunEvent(
      action: json['action'] as String?,
      checkRun: json['check_run'] == null
          ? null
          : CheckRun.fromJson(json['check_run'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckRunEventToJson(CheckRunEvent instance) =>
    <String, dynamic>{
      'check_run': instance.checkRun,
      'action': instance.action,
      'sender': instance.sender,
      'repository': instance.repository,
    };

CheckSuiteEvent _$CheckSuiteEventFromJson(Map<String, dynamic> json) =>
    CheckSuiteEvent(
      action: json['action'] as String?,
      checkSuite: json['check_suite'] == null
          ? null
          : CheckSuite.fromJson(json['check_suite'] as Map<String, dynamic>),
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckSuiteEventToJson(CheckSuiteEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'check_suite': instance.checkSuite,
      'repository': instance.repository,
      'sender': instance.sender,
    };

RepositoryEvent _$RepositoryEventFromJson(Map<String, dynamic> json) =>
    RepositoryEvent(
      action: json['action'] as String?,
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RepositoryEventToJson(RepositoryEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'repository': instance.repository,
      'sender': instance.sender,
    };

IssueCommentEvent _$IssueCommentEventFromJson(Map<String, dynamic> json) =>
    IssueCommentEvent(
      action: json['action'] as String?,
      issue: json['issue'] == null
          ? null
          : Issue.fromJson(json['issue'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : IssueComment.fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IssueCommentEventToJson(IssueCommentEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'issue': instance.issue,
      'comment': instance.comment,
    };

ForkEvent _$ForkEventFromJson(Map<String, dynamic> json) => ForkEvent(
      forkee: json['forkee'] == null
          ? null
          : Repository.fromJson(json['forkee'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForkEventToJson(ForkEvent instance) => <String, dynamic>{
      'forkee': instance.forkee,
      'sender': instance.sender,
    };

IssueEvent _$IssueEventFromJson(Map<String, dynamic> json) => IssueEvent(
      action: json['action'] as String?,
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

Map<String, dynamic> _$IssueEventToJson(IssueEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'assignee': instance.assignee,
      'label': instance.label,
      'issue': instance.issue,
      'sender': instance.sender,
      'repository': instance.repository,
    };

PullRequestEvent _$PullRequestEventFromJson(Map<String, dynamic> json) =>
    PullRequestEvent(
      action: json['action'] as String?,
      number: json['number'] as int?,
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

Map<String, dynamic> _$PullRequestEventToJson(PullRequestEvent instance) =>
    <String, dynamic>{
      'action': instance.action,
      'number': instance.number,
      'pull_request': instance.pullRequest,
      'sender': instance.sender,
      'repository': instance.repository,
    };

CreateEvent _$CreateEventFromJson(Map<String, dynamic> json) => CreateEvent(
      ref: json['ref'] as String?,
      refType: json['ref_type'] as String?,
      pusherType: json['pusher_type'] as String?,
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateEventToJson(CreateEvent instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'ref_type': instance.refType,
      'pusher_type': instance.pusherType,
      'repository': instance.repository,
      'sender': instance.sender,
    };

PushEvent _$PushEventFromJson(Map<String, dynamic> json) => PushEvent(
      ref: json['ref'] as String?,
      before: json['before'] as String?,
      after: json['after'] as String?,
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
      headCommit: json['head_commit'] == null
          ? null
          : PushGitCommit.fromJson(json['head_commit'] as Map<String, dynamic>),
      commits: (json['commits'] as List<dynamic>?)
          ?.map((e) => PushGitCommit.fromJson(e as Map<String, dynamic>))
          .toList(),
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PushEventToJson(PushEvent instance) => <String, dynamic>{
      'ref': instance.ref,
      'before': instance.before,
      'after': instance.after,
      'repository': PushEvent.handleIntegerTimes(instance.repository),
      'head_commit': instance.headCommit,
      'commits': instance.commits,
      'sender': instance.sender,
    };
