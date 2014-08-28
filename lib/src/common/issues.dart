part of github.common;

/**
 * An Issue on the Tracker
 */
class Issue {
  final GitHub github;

  /**
   * Url to the Issue Page
   */
  @ApiName("html_url")
  String url;

  /**
   * Issue Number
   */
  int number;

  /**
   * Issue State
   */
  String state;

  /**
   * Issue Title
   */
  String title;

  /**
   * User who created the issue.
   */
  User user;

  /**
   * Issue Labels
   */
  List<IssueLabel> labels;

  /**
   * The User that the issue is assigned to
   */
  User assignee;

  /**
   * The Milestone
   */
  Milestone milestone;

  /**
   * Number of Comments
   */
  @ApiName("comments")
  int commentsCount;

  /**
   * A Pull Request
   */
  @ApiName("pull_request")
  IssuePullRequest pullRequest;

  /**
   * Time that the issue was created at
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * The time that the issue was closed at
   */
  @ApiName("closed_at")
  DateTime closedAt;

  /**
   * The time that the issue was updated at
   */
  @ApiName("updated_at")
  DateTime updatedAt;

  /**
   * The user who closed the issue
   */
  @ApiName("closed_by")
  User closedBy;

  Issue(this.github);

  static Issue fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new Issue(github)
        ..url = input['html_url']
        ..number = input['number']
        ..state = input['state']
        ..title = input['title']
        ..user = User.fromJSON(github, input['user'])
        ..labels = input['labels'].map((label) => IssueLabel.fromJSON(github, label))
        ..assignee = User.fromJSON(github, input['assignee'])
        ..milestone = Milestone.fromJSON(github, input['milestone'])
        ..commentsCount = input['comments']
        ..pullRequest = IssuePullRequest.fromJSON(github, input['pull_request'])
        ..createdAt = parseDateTime(input['created_at'])
        ..updatedAt = parseDateTime(input['updated_at'])
        ..closedAt = parseDateTime(input['closed_at'])
        ..closedBy = User.fromJSON(github, input['closed_by']);
  }
}

/**
 * A Pull Request for an Issue
 */
class IssuePullRequest {
  final GitHub github;

  /**
   * Url to the Page for this Issue Pull Request
   */
  @ApiName("html_url")
  String url;

  /**
   * Diff Url
   */
  @ApiName("diff_url")
  String diffUrl;

  /**
   * Patch Url
   */
  @ApiName("patch_url")
  String patchUrl;

  IssuePullRequest(this.github);

  static IssuePullRequest fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new IssuePullRequest(github)
        ..url = input['html_url']
        ..diffUrl = input['diff_url']
        ..patchUrl = input['patch_url'];
  }
}

/**
 * An Issue Label
 */
class IssueLabel {
  final GitHub github;

  /**
   * Label Name
   */
  String name;

  /**
   * Label Color
   */
  String color;

  IssueLabel(this.github);

  static IssueLabel fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new IssueLabel(github)
        ..name = input['name']
        ..color = input['color'];
  }
}

/**
 * Milestone
 */
class Milestone {
  final GitHub github;

  /**
   * Milestone Number
   */
  int number;

  /**
   * Milestone State
   */
  String state;

  /**
   * Milestone Title
   */
  String title;

  /**
   * Milestone Description
   */
  String description;

  /**
   * Milestone Creator
   */
  User creator;

  /**
   * Number of Open Issues
   */
  @ApiName("open_issues")
  int openIssuesCount;

  /**
   * Number of Closed Issues
   */
  @ApiName("closed_issues")
  int closedIssuesCount;

  /**
   * Time the milestone was created at
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * The last time the milestone was updated at
   */
  @ApiName("updated_at")
  DateTime updatedAt;

  /**
   * The due date for this milestone
   */
  @ApiName("due_on")
  DateTime dueOn;

  Milestone(this.github);

  static Milestone fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new Milestone(github)
        ..number = input['number']
        ..state = input['state']
        ..title = input['title']
        ..description = input['description']
        ..creator = User.fromJSON(github, input['creator'])
        ..openIssuesCount = input['open_issues']
        ..closedIssuesCount = input['closed_issues']
        ..createdAt = parseDateTime(input['created_at'])
        ..updatedAt = parseDateTime(input['updated_at'])
        ..dueOn = parseDateTime(input['due_on']);
  }
}


class IssueComment {
  final GitHub github;

  int id;

  @ApiName("html_url")
  String url;

  String body;

  User user;

  DateTime createdAt;
  DateTime updatedAt;

  IssueComment(this.github);

  static IssueComment fromJSON(GitHub github, input) {
    if (input == null) return null;

    return new IssueComment(github)
        ..id = input['id']
        ..body = input['body']
        ..user = User.fromJSON(github, input['user'])
        ..createdAt = parseDateTime(input['created_at'])
        ..updatedAt = parseDateTime(input['updated_at']);
  }
}
