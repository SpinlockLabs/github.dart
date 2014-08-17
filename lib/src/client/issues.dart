part of github.client;

class Issue {
  final GitHub github;

  @ApiName("html_url")
  String url;

  int number;
  String state;
  String title;
  User user;
  
  List<IssueLabel> labels;
  User assignee;
  Milestone milestone;

  @ApiName("comments")
  int commentsCount;

  @ApiName("pull_request")
  IssuePullRequest pullRequest;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("closed_at")
  DateTime closedAt;

  @ApiName("updated_at")
  DateTime updatedAt;

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
        ..createdAt = parse_date(input['created_at'])
        ..updatedAt = parse_date(input['updated_at'])
        ..closedAt = parse_date(input['closed_at'])
        ..closedBy = User.fromJSON(github, input['closed_by']);
  }
}

class IssuePullRequest {
  final GitHub github;

  @ApiName("html_url")
  String url;

  @ApiName("diff_url")
  String diffUrl;

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

class IssueLabel {
  final GitHub github;

  String name;
  String color;

  IssueLabel(this.github);

  static IssueLabel fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new IssueLabel(github)
        ..name = input['name']
        ..color = input['color'];
  }
}

class Milestone {
  final GitHub github;

  int number;
  String state;
  String title;
  String description;
  User creator;

  @ApiName("open_issues")
  int openIssuesCount;

  @ApiName("closed_issues")
  int closedIssuesCount;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("updated_at")
  DateTime updatedAt;

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
        ..createdAt = parse_date(input['created_at'])
        ..updatedAt = parse_date(input['updated_at'])
        ..dueOn = parse_date(input['due_on']);
  }
}
