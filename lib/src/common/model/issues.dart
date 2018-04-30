part of github.common;

/// Model class for an issue on the tracker.
class Issue {
  int id;

  /// The api url.
  String url;

  /// Url to the Issue Page
  @ApiName("html_url")
  String htmlUrl;

  /// Issue Number
  int number;

  /// Issue State
  String state;

  /// Issue Title
  String title;

  /// User who created the issue.
  User user;

  /// Issue Labels
  List<IssueLabel> labels;

  /// The User that the issue is assigned to
  User assignee;

  /// The Milestone
  Milestone milestone;

  /// Number of Comments
  @ApiName("comments")
  int commentsCount;

  /// A Pull Request
  @ApiName("pull_request")
  IssuePullRequest pullRequest;

  /// Time that the issue was created at
  @ApiName("created_at")
  DateTime createdAt;

  /// The time that the issue was closed at
  @ApiName("closed_at")
  DateTime closedAt;

  /// The time that the issue was updated at
  @ApiName("updated_at")
  DateTime updatedAt;

  String body;

  /// The user who closed the issue
  @ApiName("closed_by")
  User closedBy;

  static Issue fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    var labels = input['labels'] as List<Map<String, dynamic>>;
    if (labels == null) labels = [];

    return new Issue()
      ..id = input['id']
      ..url = input['url']
      ..htmlUrl = input['html_url']
      ..number = input['number']
      ..state = input['state']
      ..title = input['title']
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>)
      ..labels = labels.map(IssueLabel.fromJSON).toList(growable: false)
      ..assignee = User.fromJSON(input['assignee'] as Map<String, dynamic>)
      ..milestone =
          Milestone.fromJSON(input['milestone'] as Map<String, dynamic>)
      ..commentsCount = input['comments']
      ..pullRequest = IssuePullRequest
          .fromJSON(input['pull_request'] as Map<String, dynamic>)
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..closedAt = parseDateTime(input['closed_at'])
      ..closedBy = User.fromJSON(input['closed_by'] as Map<String, dynamic>)
      ..body = input['body'];
  }

  bool get isOpen => state == "open";
  bool get isClosed => state == "closed";
}

/// Model class for a request to create/edit an issue.
class IssueRequest {
  String title;
  String body;
  List<String> labels;
  String assignee;
  String state;
  int milestone;

  IssueRequest();

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("body", body, map);
    putValue("labels", labels, map);
    putValue("assignee", assignee, map);
    putValue("state", state, map);
    putValue("milestone", milestone, map);
    return JSON.encode(map);
  }
}

/// Model class for a pull request for an issue.
class IssuePullRequest {
  /// Url to the Page for this Issue Pull Request
  @ApiName("html_url")
  String htmlUrl;

  /// Diff Url
  @ApiName("diff_url")
  String diffUrl;

  /// Patch Url
  @ApiName("patch_url")
  String patchUrl;

  static IssuePullRequest fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new IssuePullRequest()
      ..htmlUrl = input['html_url']
      ..diffUrl = input['diff_url']
      ..patchUrl = input['patch_url'];
  }
}

/// Model class for an issue comment.
class IssueComment {
  int id;

  String body;

  User user;

  DateTime createdAt;

  DateTime updatedAt;

  String url;

  @ApiName("html_url")
  String htmlUrl;

  @ApiName("issue_url")
  String issueUrl;

  static IssueComment fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new IssueComment()
      ..id = input['id']
      ..body = input['body']
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>)
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..url = input['url']
      ..htmlUrl = input['html_url']
      ..issueUrl = input['issue_url'];
  }
}

/// Model class for an issue label.
class IssueLabel {
  /// Label Name
  String name;

  /// Label Color
  String color;

  static IssueLabel fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    assert(input['name'] != null);
    assert(input['color'] != null);

    return new IssueLabel()
      ..name = input['name']
      ..color = input['color'];
  }

  @override
  String toString() => 'IssueLabel: $name';
}

/// Model class for a milestone.
class Milestone {
  /// Unique Identifier for Milestone
  int id;

  /// Milestone Number
  int number;

  /// Milestone State
  String state;

  /// Milestone Title
  String title;

  /// Milestone Description
  String description;

  /// Milestone Creator
  User creator;

  /// Number of Open Issues
  @ApiName("open_issues")
  int openIssuesCount;

  /// Number of Closed Issues
  @ApiName("closed_issues")
  int closedIssuesCount;

  /// Time the milestone was created at
  @ApiName("created_at")
  DateTime createdAt;

  /// The last time the milestone was updated at
  @ApiName("updated_at")
  DateTime updatedAt;

  /// The due date for this milestone
  @ApiName("due_on")
  DateTime dueOn;

  static Milestone fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new Milestone()
      ..id = input['id']
      ..number = input['number']
      ..state = input['state']
      ..title = input['title']
      ..description = input['description']
      ..creator = User.fromJSON(input['creator'] as Map<String, dynamic>)
      ..openIssuesCount = input['open_issues']
      ..closedIssuesCount = input['closed_issues']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..dueOn = parseDateTime(input['due_on']);
  }
}

/// Model class for a new milestone to be created.
class CreateMilestone {
  final String title;

  String state;
  String description;
  DateTime dueOn;

  CreateMilestone(this.title);

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("state", state, map);
    putValue(description, description, map);
    putValue("due_on", dateToGitHubIso8601(dueOn), map);
    return JSON.encode(map);
  }
}
