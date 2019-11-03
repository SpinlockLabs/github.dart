import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:json_annotation/json_annotation.dart';
import '../common.dart';

part 'hooks.g.dart';

class HookMiddleware {
  // TODO: Close this, but where?
  final StreamController<HookEvent> _eventController =
      StreamController<HookEvent>();
  Stream<HookEvent> get onEvent => _eventController.stream;

  void handleHookRequest(HttpRequest request) {
    if (request.method != 'POST') {
      request.response
        ..write('Only POST is Supported')
        ..close();
      return;
    }

    if (request.headers.value('X-GitHub-Event') == null) {
      request.response
        ..write('X-GitHub-Event must be specified.')
        ..close();
      return;
    }

    const Utf8Decoder().bind(request).join().then((content) {
      _eventController.add(HookEvent.fromJson(
          request.headers.value('X-GitHub-Event'),
          jsonDecode(content) as Map<String, dynamic>));
      request.response
        ..write(jsonEncode({'handled': _eventController.hasListener}))
        ..close();
    });
  }
}

class HookServer extends HookMiddleware {
  final String host;
  final int port;

  HttpServer _server;

  HookServer(this.port, [this.host = '0.0.0.0']);

  void start() {
    HttpServer.bind(host, port).then((HttpServer server) {
      _server = server;
      server.listen((request) {
        if (request.uri.path == '/hook') {
          handleHookRequest(request);
        } else {
          request.response
            ..statusCode = 404
            ..write('404 - Not Found')
            ..close();
        }
      });
    });
  }

  Future stop() => _server.close();
}

class HookEvent {
  HookEvent();

  factory HookEvent.fromJson(String event, Map<String, dynamic> json) {
    if (event == 'pull_request') {
      return PullRequestEvent.fromJson(json);
    } else if (event == 'issues') {
      return IssueEvent.fromJson(json);
    } else if (event == 'issue_comment') {
      return IssueCommentEvent.fromJson(json);
    } else if (event == 'repository') {
      return RepositoryEvent.fromJson(json);
    }
    return UnknownHookEvent(event, json);
  }
}

class UnknownHookEvent extends HookEvent {
  final String event;
  final Map<String, dynamic> data;

  UnknownHookEvent(this.event, this.data);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryEvent extends HookEvent {
  RepositoryEvent({
    this.action,
    this.repository,
    this.sender,
  });
  String action;
  Repository repository;
  User sender;

  factory RepositoryEvent.fromJson(Map<String, dynamic> input) =>
      _$RepositoryEventFromJson(input);
  Map<String, dynamic> toJson() => _$RepositoryEventToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class IssueCommentEvent extends HookEvent {
  IssueCommentEvent({
    this.action,
    this.issue,
    this.comment,
  });
  String action;
  Issue issue;
  IssueComment comment;

  factory IssueCommentEvent.fromJson(Map<String, dynamic> input) =>
      _$IssueCommentEventFromJson(input);
  Map<String, dynamic> toJson() => _$IssueCommentEventToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ForkEvent extends HookEvent {
  ForkEvent({
    this.forkee,
    this.sender,
  });
  Repository forkee;
  User sender;

  factory ForkEvent.fromJson(Map<String, dynamic> input) =>
      _$ForkEventFromJson(input);
  Map<String, dynamic> toJson() => _$ForkEventToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class IssueEvent extends HookEvent {
  IssueEvent({
    this.action,
    this.assignee,
    this.label,
    this.issue,
    this.sender,
    this.repository,
  });
  String action;
  User assignee;
  IssueLabel label;
  Issue issue;
  User sender;
  Repository repository;

  factory IssueEvent.fromJson(Map<String, dynamic> input) =>
      _$IssueEventFromJson(input);
  Map<String, dynamic> toJson() => _$IssueEventToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PullRequestEvent extends HookEvent {
  PullRequestEvent({
    this.action,
    this.number,
    this.pullRequest,
    this.sender,
    this.repository,
  });
  String action;
  int number;
  PullRequest pullRequest;
  User sender;
  Repository repository;

  factory PullRequestEvent.fromJson(Map<String, dynamic> input) =>
      _$PullRequestEventFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestEventToJson(this);
}
