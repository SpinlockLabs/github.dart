part of github.client;

/**
 * A Pull Request
 */
class PullRequest {
  final GitHub github;
  
  /**
   * If this is a full pull request
   */
  final bool isFullPullRequest;
  
  /**
   * Url to the Pull Request Page
   */
  @ApiName("html_url")
  String url;
  
  /**
   * Url to the diff for this Pull Request
   */
  @ApiName("diff_url")
  String diffUrl;
  
  /**
   * Url to the patch for this Pull Request
   */
  @ApiName("patch_url")
  String patchUrl;
  
  /**
   * Pull Request Number
   */
  int number;
  
  /**
   * Pull Request State
   */
  String state;
  
  /**
   * Pull Request Title
   */
  String title;
  
  /**
   * Pull Request Body
   */
  String body;
  
  /**
   * Time the pull request was created
   */
  @ApiName("created_at")
  DateTime createdAt;
  
  /**
   * Time the pull request was updated
   */
  @ApiName("updated_at")
  DateTime updatedAt;
  
  /**
   * Time the pull request was closed
   */
  @ApiName("closed_at")
  DateTime closedAt;
  
  /**
   * Time the pull request was merged
   */
  @ApiName("merged_at")
  DateTime mergedAt;
  
  /**
   * The Pull Request Head
   */
  PullRequestHead head;
  
  /**
   * Pull Request Base
   */
  PullRequestHead base;
  
  /**
   * The User who created the Pull Request
   */
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
  
  /**
   * Fetches the Full Pull Request
   */
  Future<FullPullRequest> fetchFullRequest() {
    if (isFullPullRequest) {
      return new Future.value(this);
    }
    return github.getJSON(json['url'], convert: FullPullRequest.fromJSON);
  }
}

/**
 * A Complete Pull Request
 */
class FullPullRequest extends PullRequest {
  @ApiName("merge_commit_sha")
  String mergeCommitSha;
  
  /**
   * If the pull request was merged
   */
  bool merged;
  
  /**
   * If the pull request is mergable
   */
  bool mergeable;
  
  /**
   * The user who merged the pull request
   */
  @ApiName("merged_by")
  User mergedBy;
  
  /**
   * Number of comments
   */
  int commentsCount;
  
  /**
   * Number of commits
   */
  int commitsCount;
  
  /**
   * Number of additions
   */
  int additionsCount;
  
  /**
   * Number of deletions
   */
  int deletionsCount;
  
  /**
   * Number of changed files
   */
  int changedFilesCount;
  
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

/**
 * A Pull Request Head
 */
class PullRequestHead {
  final GitHub github;
  
  /**
   * Label
   */
  String label;
  
  /**
   * Ref
   */
  String ref;
  
  /**
   * Commit SHA
   */
  String sha;
  
  /**
   * User
   */
  User user;
  
  /**
   * Repository
   */
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

/**
 * Request to Create a Pull Request
 */
class CreatePullRequest {
  /**
   * Pull Request Title
   */
  final String title;
  
  /**
   * Pull Request Head
   */
  final String head;
  
  /**
   * Pull Request Base
   */
  final String base;
  
  /**
   * Pull Request Body
   */
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