part of github.server;

class HookMiddleware {
  final StreamController<HookEvent> _eventController =
      new StreamController<HookEvent>();
  Stream<HookEvent> get onEvent => _eventController.stream;

  void handleHookRequest(HttpRequest request) {
    if (request.method != "POST") {
      request.response
        ..write("Only POST is Supported")
        ..close();
      return;
    }

    if (request.headers.value("X-GitHub-Event") == null) {
      request.response
        ..write("X-GitHub-Event must be specified.")
        ..close();
      return;
    }

    request.transform(UTF8.decoder).join().then((content) {
      _eventController.add(new HookEvent.fromJSON(
          request.headers.value("X-GitHub-Event"), JSON.decode(content)));
      request.response
        ..write(JSON.encode({"handled": _eventController.hasListener}))
        ..close();
    });
  }
}

class HookServer extends HookMiddleware {
  final String host;
  final int port;

  HttpServer _server;

  HookServer(this.port, [this.host = "0.0.0.0"]);

  void start() {
    HttpServer.bind(host, port).then((HttpServer server) {
      _server = server;
      server.listen((request) {
        if (request.uri.path == "/hook") {
          handleHookRequest(request);
        } else {
          request.response
            ..statusCode = 404
            ..write("404 - Not Found")
            ..close();
        }
      });
    });
  }

  Future stop() => _server.close();
}

class HookEvent {
  HookEvent();

  factory HookEvent.fromJSON(String event, Map<String, dynamic> json) {
    if (event == "pull_request") {
      return PullRequestEvent.fromJSON(json);
    } else if (event == "issues") {
      return IssueEvent.fromJSON(json);
    } else if (event == "issue_comment") {
      return IssueCommentEvent.fromJSON(json);
    } else if (event == "repository") {
      return RepositoryEvent.fromJSON(json);
    }
    return new UnknownHookEvent(event, json);
  }
}

class UnknownHookEvent extends HookEvent {
  final String event;
  final Map<String, dynamic> data;

  UnknownHookEvent(this.event, this.data);
}

class RepositoryEvent extends HookEvent {
  String action;
  Repository repository;
  User sender;

  static RepositoryEvent fromJSON(Map<String, dynamic> json) {
    return new RepositoryEvent()
      ..action = json["action"]
      ..repository = Repository.fromJSON(json["repository"])
      ..sender = User.fromJSON(json["sender"]);
  }
}

class IssueCommentEvent extends HookEvent {
  String action;
  Issue issue;
  IssueComment comment;

  static IssueCommentEvent fromJSON(Map<String, dynamic> json) {
    return new IssueCommentEvent()
      ..action = json["action"]
      ..issue = Issue.fromJSON(json["issue"])
      ..comment = IssueComment.fromJSON(json["comment"]);
  }
}

class ForkEvent extends HookEvent {
  Repository forkee;
  User sender;

  static ForkEvent fromJSON(Map<String, dynamic> json) {
    return new ForkEvent()
      ..forkee = Repository.fromJSON(json["forkee"])
      ..sender = User.fromJSON(json["sender"]);
  }
}

class IssueEvent extends HookEvent {
  String action;
  User assignee;
  IssueLabel label;
  Issue issue;
  User sender;
  Repository repository;

  static IssueEvent fromJSON(Map<String, dynamic> json) {
    return new IssueEvent()
      ..action = json["action"]
      ..assignee = User.fromJSON(json["assignee"])
      ..label = IssueLabel.fromJSON(json["label"])
      ..issue = Issue.fromJSON(json["issue"])
      ..repository = Repository.fromJSON(json["repository"])
      ..sender = User.fromJSON(json["sender"]);
  }
}

class PullRequestEvent extends HookEvent {
  String action;
  int number;
  PullRequest pullRequest;
  User sender;
  Repository repository;

  static PullRequestEvent fromJSON(Map<String, dynamic> json) {
    return new PullRequestEvent()
      ..action = json["action"]
      ..number = json["number"]
      ..repository = Repository.fromJSON(json["repository"])
      ..pullRequest = PullRequest.fromJSON(json["pull_request"])
      ..sender = User.fromJSON(json["sender"]);
  }
}
