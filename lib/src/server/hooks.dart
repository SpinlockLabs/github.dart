import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:json_annotation/json_annotation.dart';

import '../common.dart';
import '../common/model/changes.dart';

part 'hooks.g.dart';

/// Middleware for processing GitHub webhooks securely.
class HookMiddleware {
  /// Webhook secret for HMAC-SHA256 signature verification.
  /// If provided, all incoming requests must have a valid `X-Hub-Signature-256` header.
  final String? secret;

  /// Maximum allowed payload size in bytes. Defaults to 10 MB.
  final int maxBodySize;

  /// Optional hook for replay attack detection based on delivery ID.
  /// Returns `true` if the delivery ID is fresh/acceptable, or `false` if it is a replay.
  final bool Function(String deliveryId)? onReplayCheck;

  final StreamController<HookEvent> _eventController =
      StreamController<HookEvent>.broadcast();

  Stream<HookEvent> get onEvent => _eventController.stream;

  HookMiddleware({
    this.secret,
    this.maxBodySize = 10 * 1024 * 1024,
    this.onReplayCheck,
  });

  /// Closes the webhook event stream and releases resources.
  Future<void> close() => _eventController.close();

  /// Constant-time string equality check to prevent timing attacks.
  static bool constantTimeEquals(String a, String b) {
    if (a.length != b.length) {
      return false;
    }
    var result = 0;
    for (var i = 0; i < a.length; i++) {
      result |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }
    return result == 0;
  }

  /// Verifies an incoming webhook HMAC-SHA256 signature.
  static bool verifySignature(
      String secret, List<int> payloadBytes, String? signatureHeader) {
    if (signatureHeader == null || !signatureHeader.startsWith('sha256=')) {
      return false;
    }
    final expectedHex = signatureHeader.substring(7);
    final hmac = Hmac(sha256, utf8.encode(secret));
    final calculated = hmac.convert(payloadBytes).toString();
    return constantTimeEquals(
        calculated.toLowerCase(), expectedHex.toLowerCase());
  }

  /// Handles an incoming webhook HTTP request.
  Future<void> handleHookRequest(HttpRequest request) async {
    if (request.method != 'POST') {
      request.response
        ..statusCode = HttpStatus.methodNotAllowed
        ..headers.contentType = ContentType.json
        ..write(jsonEncode({
          'error': 'Method Not Allowed',
          'message': 'Only POST is Supported'
        }))
        ..close();
      return;
    }

    final eventHeader = request.headers.value('X-GitHub-Event');
    if (eventHeader == null || eventHeader.trim().isEmpty) {
      request.response
        ..statusCode = HttpStatus.badRequest
        ..headers.contentType = ContentType.json
        ..write(jsonEncode({
          'error': 'Bad Request',
          'message': 'X-GitHub-Event must be specified.'
        }))
        ..close();
      return;
    }

    final deliveryId = request.headers.value('X-GitHub-Delivery');
    if (deliveryId != null && onReplayCheck != null) {
      final isFresh = onReplayCheck!(deliveryId);
      if (!isFresh) {
        request.response
          ..statusCode = HttpStatus.conflict
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(
              {'error': 'Conflict', 'message': 'Duplicate delivery'}))
          ..close();
        return;
      }
    }

    final builder = BytesBuilder(copy: false);
    var bytesReceived = 0;

    try {
      await for (final chunk in request) {
        bytesReceived += chunk.length;
        if (bytesReceived > maxBodySize) {
          request.response
            ..statusCode = HttpStatus.requestEntityTooLarge
            ..headers.contentType = ContentType.json
            ..write(jsonEncode({
              'error': 'Payload Too Large',
              'message':
                  'Payload exceeds maximum allowed size of $maxBodySize bytes'
            }))
            ..close();
          return;
        }
        builder.add(chunk);
      }
    } catch (_) {
      request.response
        ..statusCode = HttpStatus.badRequest
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(
            {'error': 'Bad Request', 'message': 'Failed to read request body'}))
        ..close();
      return;
    }

    final rawBytes = builder.takeBytes();

    if (secret != null) {
      final signatureHeader = request.headers.value('X-Hub-Signature-256');
      if (!verifySignature(secret!, rawBytes, signatureHeader)) {
        request.response
          ..statusCode = HttpStatus.unauthorized
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(
              {'error': 'Unauthorized', 'message': 'Invalid signature'}))
          ..close();
        return;
      }
    }

    Map<String, dynamic>? bodyJson;
    try {
      final text = utf8.decode(rawBytes);
      if (text.isNotEmpty) {
        final decoded = jsonDecode(text);
        if (decoded is Map<String, dynamic>) {
          bodyJson = decoded;
        } else if (decoded is Map) {
          bodyJson = decoded.cast<String, dynamic>();
        }
      }
    } catch (_) {
      request.response
        ..statusCode = HttpStatus.badRequest
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(
            {'error': 'Bad Request', 'message': 'Invalid JSON body'}))
        ..close();
      return;
    }

    _eventController.add(HookEvent.fromJson(eventHeader, bodyJson));
    request.response
      ..statusCode = HttpStatus.ok
      ..headers.contentType = ContentType.json
      ..write(GitHubJson.encode({'handled': _eventController.hasListener}))
      ..close();
  }
}

/// A standalone HTTP server for receiving GitHub webhooks.
class HookServer extends HookMiddleware {
  final String host;
  final int port;

  HttpServer? _server;

  HookServer(
    this.port, [
    this.host = '127.0.0.1',
    String? secret,
    int maxBodySize = 10 * 1024 * 1024,
    bool Function(String deliveryId)? onReplayCheck,
  ]) : super(
          secret: secret,
          maxBodySize: maxBodySize,
          onReplayCheck: onReplayCheck,
        );

  HookServer.options({
    required this.port,
    this.host = '127.0.0.1',
    super.secret,
    super.maxBodySize,
    super.onReplayCheck,
  });

  /// Starts the HTTP server and returns the bound [HttpServer] instance.
  Future<HttpServer> start() async {
    final server = await HttpServer.bind(host, port);
    _server = server;
    server.listen((request) async {
      try {
        if (request.uri.path == '/hook') {
          await handleHookRequest(request);
        } else {
          request.response
            ..statusCode = HttpStatus.notFound
            ..write('404 - Not Found')
            ..close();
        }
      } catch (_) {
        try {
          request.response
            ..statusCode = HttpStatus.internalServerError
            ..close();
        } catch (_) {}
      }
    });
    return server;
  }

  /// Stops the HTTP server and closes the webhook event stream.
  Future<void> stop() async {
    await _server?.close(force: true);
    await close();
  }
}

class HookEvent {
  HookEvent();

  factory HookEvent.fromJson(String? event, Map<String, dynamic>? json) {
    if (event == 'pull_request') {
      return PullRequestEvent.fromJson(json!);
    } else if (event == 'issues') {
      return IssueEvent.fromJson(json!);
    } else if (event == 'issue_comment') {
      return IssueCommentEvent.fromJson(json!);
    } else if (event == 'repository') {
      return RepositoryEvent.fromJson(json!);
    }
    return UnknownHookEvent(event, json);
  }
}

class UnknownHookEvent extends HookEvent {
  final String? event;
  final Map<String, dynamic>? data;

  UnknownHookEvent(this.event, this.data);
}

@JsonSerializable()
class CheckRunEvent extends HookEvent {
  CheckRunEvent({
    this.action,
    this.checkRun,
    this.sender,
    this.repository,
  });

  factory CheckRunEvent.fromJson(Map<String, dynamic> input) =>
      _$CheckRunEventFromJson(input);
  CheckRun? checkRun;
  String? action;
  User? sender;
  Repository? repository;

  Map<String, dynamic> toJson() => _$CheckRunEventToJson(this);
}

@JsonSerializable()
class CheckSuiteEvent extends HookEvent {
  CheckSuiteEvent({
    this.action,
    this.checkSuite,
    this.repository,
    this.sender,
  });

  String? action;
  CheckSuite? checkSuite;
  Repository? repository;
  User? sender;

  factory CheckSuiteEvent.fromJson(Map<String, dynamic> input) =>
      _$CheckSuiteEventFromJson(input);
  Map<String, dynamic> toJson() => _$CheckSuiteEventToJson(this);
}

@JsonSerializable()
class RepositoryEvent extends HookEvent {
  RepositoryEvent({
    this.action,
    this.repository,
    this.sender,
  });
  String? action;
  Repository? repository;
  User? sender;

  factory RepositoryEvent.fromJson(Map<String, dynamic> input) =>
      _$RepositoryEventFromJson(input);
  Map<String, dynamic> toJson() => _$RepositoryEventToJson(this);
}

@JsonSerializable()
class IssueCommentEvent extends HookEvent {
  IssueCommentEvent({
    this.action,
    this.issue,
    this.comment,
  });
  String? action;
  Issue? issue;
  IssueComment? comment;

  factory IssueCommentEvent.fromJson(Map<String, dynamic> input) =>
      _$IssueCommentEventFromJson(input);
  Map<String, dynamic> toJson() => _$IssueCommentEventToJson(this);
}

@JsonSerializable()
class ForkEvent extends HookEvent {
  ForkEvent({
    this.forkee,
    this.sender,
  });
  Repository? forkee;
  User? sender;

  factory ForkEvent.fromJson(Map<String, dynamic> input) =>
      _$ForkEventFromJson(input);
  Map<String, dynamic> toJson() => _$ForkEventToJson(this);
}

@JsonSerializable()
class IssueEvent extends HookEvent {
  IssueEvent({
    this.action,
    this.assignee,
    this.label,
    this.issue,
    this.sender,
    this.repository,
  });
  String? action;
  User? assignee;
  IssueLabel? label;
  Issue? issue;
  User? sender;
  Repository? repository;

  factory IssueEvent.fromJson(Map<String, dynamic> input) =>
      _$IssueEventFromJson(input);
  Map<String, dynamic> toJson() => _$IssueEventToJson(this);
}

@JsonSerializable()
class PullRequestEvent extends HookEvent {
  PullRequestEvent({
    this.action,
    this.number,
    this.pullRequest,
    this.sender,
    this.repository,
    this.changes,
  });
  String? action;
  int? number;
  PullRequest? pullRequest;
  User? sender;
  Repository? repository;
  Changes? changes;

  factory PullRequestEvent.fromJson(Map<String, dynamic> input) =>
      _$PullRequestEventFromJson(input);
  Map<String, dynamic> toJson() => _$PullRequestEventToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateEvent extends HookEvent {
  CreateEvent({
    this.ref,
    this.refType,
    this.pusherType,
    this.repository,
    this.sender,
  });

  factory CreateEvent.fromJson(Map<String, dynamic> input) =>
      _$CreateEventFromJson(input);
  String? ref;
  String? refType;
  String? pusherType;
  Repository? repository;
  User? sender;

  Map<String, dynamic> toJson() => _$CreateEventToJson(this);
}
