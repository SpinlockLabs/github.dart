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
    var issue = new Issue(github);
    issue.url = input['html_url'];
    issue.number = input['number'];
    issue.state = input['state'];
    issue.title = input['title'];
    issue.user = User.fromJSON(github, input['user']);
    issue.labels = input['labels'].map((label) => IssueLabel.fromJSON(github, label));
    issue.assignee = User.fromJSON(github, input['assignee']);
    issue.milestone = Milestone.fromJSON(github, input['milestone']);
    issue.commentsCount = input['comments'];
    issue.pullRequest = IssuePullRequest.fromJSON(github, input['pull_request']);
    issue.createdAt = parse_date(input['created_at']);
    issue.updatedAt = parse_date(input['updated_at']);
    issue.closedAt = parse_date(input['closed_at']);
    issue.closedBy = User.fromJSON(github, input['closed_by']);
    return issue;
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
    var pr = new IssuePullRequest(github); 
    pr.url = input['html_url'];
    pr.diffUrl = input['diff_url'];
    pr.patchUrl = input['patch_url'];
    return pr;
  }
}

class IssueLabel {
  final GitHub github;
  
  String name;
  String color;
  
  IssueLabel(this.github);
  
  static IssueLabel fromJSON(GitHub github, input) {
    if (input == null) return null;
    var label = new IssueLabel(github);
    label.name = input['name'];
    label.color = input['color'];
    return label;
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
    var milestone = new Milestone(github);
    milestone.number = input['number'];
    milestone.state = input['state'];
    milestone.title = input['title'];
    milestone.description = input['description'];
    milestone.creator = User.fromJSON(github, input['creator']);
    milestone.openIssuesCount = input['open_issues'];
    milestone.closedIssuesCount = input['closed_issues'];

    milestone.createdAt = parse_date(input['created_at']);
    milestone.updatedAt = parse_date(input['updated_at']);
    milestone.dueOn = parse_date(input['due_on']);
    return milestone;
  }
}