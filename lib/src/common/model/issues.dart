part of github.common;

/// Model class for an issue on the tracker.
@immutable
class Issue {
  final int id;

  /// The api url.
  final String url;

  /// Url to the Issue Page
  @JsonKey(name: "html_url")
  final String htmlUrl;

  /// Issue Number
  final int number;

  /// Issue State
  final String state;

  /// Issue Title
  final String title;

  /// User who created the issue.
  final User user;

  /// Issue Labels
  final List<IssueLabel> labels;

  /// The User that the issue is assigned to
  final User assignee;

  /// The Milestone
  final Milestone milestone;

  /// Number of Comments
  @JsonKey(name: "comments")
  final int commentsCount;

  /// A Pull Request
  @JsonKey(name: "pull_request")
  final IssuePullRequest pullRequest;

  /// Time that the issue was created at
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  /// The time that the issue was closed at
  @JsonKey(name: "closed_at")
  final DateTime closedAt;

  /// The time that the issue was updated at
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  final String body;

  /// The user who closed the issue
  @JsonKey(name: "closed_by")
  final User closedBy;

  const Issue._({
    @required this.assignee,
    @required this.body,
    @required this.closedAt,
    @required this.closedBy,
    @required this.commentsCount,
    @required this.createdAt,
    @required this.htmlUrl,
    @required this.id,
    @required this.labels,
    @required this.milestone,
    @required this.number,
    @required this.pullRequest,
    @required this.state,
    @required this.title,
    @required this.updatedAt,
    @required this.url,
    @required this.user,
  });

  factory Issue.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    List<Map<String, Object>> labels =
        input['labels'].cast<Map<String, dynamic>>();
    if (labels == null) labels = <Map<String, dynamic>>[];

    return Issue._(
      id: input['id'],
      url: input['url'],
      htmlUrl: input['html_url'],
      number: input['number'],
      state: input['state'],
      title: input['title'],
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      labels: labels.map((j) => IssueLabel.fromJSON(j)).toList(growable: false),
      assignee: User.fromJson(input['assignee'] as Map<String, dynamic>),
      milestone: Milestone.fromJSON(input['milestone'] as Map<String, dynamic>),
      commentsCount: input['comments'],
      pullRequest: IssuePullRequest.fromJSON(
          input['pull_request'] as Map<String, dynamic>),
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      closedAt: parseDateTime(input['closed_at']),
      closedBy: User.fromJson(input['closed_by'] as Map<String, dynamic>),
      body: input['body'],
    );
  }

  bool get isOpen => state == "open";
  bool get isClosed => state == "closed";
}

/// Model class for a request to create/edit an issue.
@immutable
class IssueRequest {
  final String title;
  final String body;
  final List<String> labels;
  final String assignee;
  final String state;
  final int milestone;

  const IssueRequest({
    @required this.title,
    @required this.body,
    @required this.labels,
    @required this.assignee,
    @required this.state,
    @required this.milestone,
  });

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("body", body, map);
    putValue("labels", labels, map);
    putValue("assignee", assignee, map);
    putValue("state", state, map);
    putValue("milestone", milestone, map);
    return jsonEncode(map);
  }
}

/// Model class for a pull request for an issue.
@immutable
class IssuePullRequest {
  /// Url to the Page for this Issue Pull Request
  @JsonKey(name: "html_url")
  final String htmlUrl;

  /// Diff Url
  @JsonKey(name: "diff_url")
  final String diffUrl;

  /// Patch Url
  @JsonKey(name: "patch_url")
  final String patchUrl;

  const IssuePullRequest._({
    @required this.diffUrl,
    @required this.htmlUrl,
    @required this.patchUrl,
  });

  factory IssuePullRequest.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return IssuePullRequest._(
      htmlUrl: input['html_url'],
      diffUrl: input['diff_url'],
      patchUrl: input['patch_url'],
    );
  }
}

/// Model class for an issue comment.
@immutable
class IssueComment {
  final int id;

  final String body;

  final User user;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String url;

  @JsonKey(name: "html_url")
  final String htmlUrl;

  @JsonKey(name: "issue_url")
  final String issueUrl;

  const IssueComment._({
    @required this.body,
    @required this.createdAt,
    @required this.htmlUrl,
    @required this.id,
    @required this.issueUrl,
    @required this.updatedAt,
    @required this.url,
    @required this.user,
  });

  factory IssueComment.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return IssueComment._(
      id: input['id'],
      body: input['body'],
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      url: input['url'],
      htmlUrl: input['html_url'],
      issueUrl: input['issue_url'],
    );
  }
}

/// Model class for an issue label.
@immutable
class IssueLabel {
  /// Label Name
  final String name;

  /// Label Color
  final String color;

  const IssueLabel._({
    @required this.name,
    @required this.color,
  });

  factory IssueLabel.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    assert(input['name'] != null);
    assert(input['color'] != null);

    return IssueLabel._(
      name: input['name'],
      color: input['color'],
    );
  }

  @override
  String toString() => 'IssueLabel: $name';
}

/// Model class for a milestone.
@immutable
class Milestone {
  /// Unique Identifier for Milestone
  final int id;

  /// Milestone Number
  final int number;

  /// Milestone State
  final String state;

  /// Milestone Title
  final String title;

  /// Milestone Description
  final String description;

  /// Milestone Creator
  final User creator;

  /// Number of Open Issues
  @JsonKey(name: "open_issues")
  final int openIssuesCount;

  /// Number of Closed Issues
  @JsonKey(name: "closed_issues")
  final int closedIssuesCount;

  /// Time the milestone was created at
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  /// The last time the milestone was updated at
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  /// The due date for this milestone
  @JsonKey(name: "due_on")
  final DateTime dueOn;

  const Milestone._({
    @required this.closedIssuesCount,
    @required this.createdAt,
    @required this.creator,
    @required this.description,
    @required this.dueOn,
    @required this.id,
    @required this.number,
    @required this.openIssuesCount,
    @required this.state,
    @required this.title,
    @required this.updatedAt,
  });

  factory Milestone.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Milestone._(
      id: input['id'],
      number: input['number'],
      state: input['state'],
      title: input['title'],
      description: input['description'],
      creator: User.fromJson(input['creator'] as Map<String, dynamic>),
      openIssuesCount: input['open_issues'],
      closedIssuesCount: input['closed_issues'],
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      dueOn: parseDateTime(input['due_on']),
    );
  }
}

/// Model class for a new milestone to be created.
@immutable
class CreateMilestone {
  final String title;

  final String state;
  final String description;
  final DateTime dueOn;

  const CreateMilestone({
    @required this.title,
    @required this.state,
    @required this.description,
    @required this.dueOn,
  });

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("state", state, map);
    putValue(description, description, map);
    putValue("due_on", dateToGitHubIso8601(dueOn), map);
    return jsonEncode(map);
  }
}
