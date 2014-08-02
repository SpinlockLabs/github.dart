part of github.client;

class PullRequest {
  final GitHub github;
  
  final bool isFullPullRequest;
  
  @ApiName("html_url")
  String url;
  
  @ApiName("diff_url")
  String diffUrl;
  
  @ApiName("patch_url")
  String patchUrl;
  
  int number;
  String state;
  String title;
  String body;
  
  @ApiName("created_at")
  DateTime createdAt;
  
  @ApiName("updated_at")
  DateTime updatedAt;
  
  @ApiName("closed_at")
  DateTime closedAt;
  
  @ApiName("merged_at")
  DateTime mergedAt;
  
  PullRequestHead head;
  PullRequestHead base;
  
  User user;
  
  Map<String, dynamic> json;
  
  PullRequest(this.github, [this.isFullPullRequest = false]);
  
  static PullRequest fromJSON(GitHub github, input, [PullRequest into]) {
    var pr = into != null ? into : new PullRequest(github);
    pr.head = PullRequestHead.fromJSON(github, input['head']);
    pr.base = PullRequestHead.fromJSON(github, input['head']);
    pr.url = input['html_url'];
    pr.diffUrl = input['diff_url'];
    pr.patchUrl = input['patch_url'];
    pr.number = input['number'];
    pr.state = input['state'];
    pr.title = input['title'];
    pr.body = input['body'];
    pr.createdAt = parse_date(input['created_at']);
    pr.updatedAt = parse_date(input['updated_at']);
    pr.closedAt = parse_date(input['closed_at']);
    pr.mergedAt = parse_date(input['merged_at']);
    pr.user = User.fromJSON(github, input['user']);
    pr.json = input;
    return pr;
  }
  
  Future<FullPullRequest> fetchFullRequest() {
    if (isFullPullRequest) {
      return new Future.value(this);
    }
    return github.getJSON(json['url'], convert: FullPullRequest.fromJSON);
  }
}

class FullPullRequest extends PullRequest {
  @ApiName("merge_commit_sha")
  String mergeCommitSha;
  
  bool merged;
  bool mergeable;
  
  @ApiName("merged_by")
  User mergedBy;
  
  int commentsCount;
  int commitsCount;
  int additionsCount;
  int deletionsCount;
  int changedFilesCount;
  
  User user;
  
  FullPullRequest(GitHub github) : super(github, true);
  
  static FullPullRequest fromJSON(GitHub github, input) {
    if (input == null) return null;
    FullPullRequest pr = PullRequest.fromJSON(github, input, new FullPullRequest(github));
    pr.mergeable = input['mergeable'];
    pr.merged = input['merged'];
    pr.mergedBy = User.fromJSON(github, input['merged_by']);
    pr.mergeCommitSha = input['merge_commit_sha'];
    pr.commentsCount = input['comments'];
    pr.commitsCount = input['commits'];
    pr.additionsCount = input['additions'];
    pr.deletionsCount = input['deletions'];
    pr.changedFilesCount = input['changed_files'];
    return pr;
  }
}

class PullRequestHead {
  final GitHub github;
  
  String label;
  String ref;
  String sha;
  
  User user;
  Repository repo;
  
  PullRequestHead(this.github);
  
  static PullRequestHead fromJSON(GitHub github, input) {
    if (input == null) return null;
    var head = new PullRequestHead(github);
    head.label = input['label'];
    head.ref = input['ref'];
    head.sha = input['sha'];
    head.user = User.fromJSON(github, input['user']);
    head.repo = Repository.fromJSON(github, input['repo']);
    return head;
  }
}

class CreatePullRequest {
  final String title;
  final String head;
  final String base;
  String body;
  
  CreatePullRequest(this.title, this.head, this.base, {this.body});
  
  String toJSON() {
    var map = {};
    putValue("title", title, map);
    putValue("head", head, map);
    putValue("base", base, map);
    putValue("body", body, map);
    return JSON.encode(map);
  }
}