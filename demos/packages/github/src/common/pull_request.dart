part of github.common;
 
/**
 * A Pull Request
 */
class PullRequestInformation {
  final GitHub github;
 
  /**
   * If this is a complete pull request
   */
  final bool isCompletePullRequest;
 
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
 
  PullRequestInformation(this.github, [this.isCompletePullRequest = false]);
 
  static PullRequestInformation fromJSON(GitHub github, input, [PullRequestInformation into]) {
    var pr = into != null ? into : new PullRequestInformation(github);
    pr.head = PullRequestHead.fromJSON(github, input['head']);
    pr.base = PullRequestHead.fromJSON(github, input['head']);
    pr.url = input['html_url'];
    pr.diffUrl = input['diff_url'];
    pr.patchUrl = input['patch_url'];
    pr.number = input['number'];
    pr.state = input['state'];
    pr.title = input['title'];
    pr.body = input['body'];
    pr.createdAt = parseDateTime(input['created_at']);
    pr.updatedAt = parseDateTime(input['updated_at']);
    pr.closedAt = parseDateTime(input['closed_at']);
    pr.mergedAt = parseDateTime(input['merged_at']);
    pr.user = User.fromJSON(github, input['user']);
    pr.json = input;
    return pr;
  }
 
  /**
   * Fetches the Full Pull Request
   */
  Future<PullRequest> fetchPullRequest() {
    if (isCompletePullRequest) {
      return new Future.value(this);
    }
    return github.getJSON(json['url'], convert: PullRequest.fromJSON);
  }
}
 
/**
 * A Complete Pull Request
 */
class PullRequest extends PullRequestInformation {
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
  
  PullRequest(GitHub github) : super(github, true);
 
  static PullRequest fromJSON(GitHub github, input) {
    if (input == null) return null;
    PullRequest pr = PullRequestInformation.fromJSON(github, input, new PullRequest(github));
    pr.mergeable = input['mergeable'];
    pr.merged = input['merged'];
    pr.mergedBy = User.fromJSON(github, input['merged_by']);
    pr.mergeCommitSha = input['merge_commit_sha'];
    pr.commentsCount = input['comments'];
    pr.commitsCount = input['commits'];
    pr.additionsCount = input['additions'];
    pr.deletionsCount = input['deletions'];
    pr.changedFilesCount = input['changed_files'];
    pr.json = input; 
    return pr;
  }
 
  Future<IssueComment> comment(String body) {
    var it = JSON.encode({ "body": body });
    return github.postJSON(json['_links']['comments']['href'], body: it, convert: IssueComment.fromJSON, statusCode: 201);
  }
  
  Future<PullRequestMerge> merge({String message}) {
    var json = {};
    
    if (message != null) {
      json['commit_message'] = message;
    }
    
    return github.request("PUT", "${this.json['url']}/merge", body: JSON.encode(json)).then((response) {
      return PullRequestMerge.fromJSON(github, JSON.decode(response.body));
    });
  }
  
  Stream<IssueComment> comments() {
    return new PaginationHelper(github).objects("GET", "${this.json['url'].replaceFirst("/pulls/", "/issues/")}/comments", IssueComment.fromJSON);
  }
  
  Stream<Commit> commits() {
    return new PaginationHelper(github).objects("GET", json['commits_url'], Commit.fromJSON);
  }
  
  Future<PullRequest> changeState(String newState) {
    return github.request("POST", json['_links']['self']['href'], body: JSON.encode({ "state": newState })).then((response) {
      return PullRequest.fromJSON(github, JSON.decode(response.body));
    });
  }
  
  Future<PullRequest> close() => changeState("closed");
  Future<PullRequest> open() => changeState("open");
  Future<PullRequest> reopen() => changeState("open");
  
  Future<PullRequest> changeTitle(String newTitle) {
    return github.request("POST", json['_links']['self']['href'], body: JSON.encode({ "title": newTitle })).then((response) {
      return PullRequest.fromJSON(github, JSON.decode(response.body));
    });
  }
  
  Future<PullRequest> changeBody(String newBody) {
    return github.request("POST", json['_links']['self']['href'], body: JSON.encode({ "body": newBody })).then((response) {
      return PullRequest.fromJSON(github, JSON.decode(response.body));
    });
  }
}
 
RepositorySlug _slugFromAPIUrl(String url) {
  var split = url.split("/");
  var i = split.indexOf("repos") + 1;
  var parts = split.sublist(i, i + 1);
  return new RepositorySlug(parts[0], parts[1]);
}
 
class PullRequestMerge {
  final GitHub github;
  
  bool merged;
  String sha;
  String message;
  
  PullRequestMerge(this.github);
  
  static PullRequestMerge fromJSON(GitHub github, input) {
    return new PullRequestMerge(github)
    ..merged = input['merged']
    ..sha = input['sha']
    ..message = input['message'];
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
 
class PullRequestComment {
  final GitHub github;
 
  int id;
  @ApiName("diff_hunk")
  String diffHunk;
  String path;
  int position;
 
  @ApiName("original_position")
  int originalPosition;
 
  @ApiName("commit_id")
  String commitID;
 
  @ApiName("original_commit_id")
  String originalCommitID;
 
  User user;
  String body;
 
  @ApiName("created_at")
  DateTime createdAt;
 
  @ApiName("updated_at")
  DateTime updatedAt;
 
  @ApiName("html_url")
  String url;
 
  @ApiName("pull_request_url")
  String pullRequestUrl;
 
  @ApiName("_links")
  Links links;
 
  PullRequestComment(this.github);
 
  static PullRequestComment fromJSON(GitHub github, input) {
    if (input == null) return null;
 
    return new PullRequestComment(github)
        ..id = input['id']
        ..diffHunk = input['diff_hunk']
        ..path = input['path']
        ..position = input['position']
        ..originalPosition = input['original_position']
        ..commitID = input['commit_id']
        ..originalCommitID = input['original_commit_id']
        ..user = User.fromJSON(github, input['user'])
        ..body = input['body']
        ..createdAt = parseDateTime(input['created_at'])
        ..updatedAt = parseDateTime(input['updated_at'])
        ..url = input['html_url']
        ..pullRequestUrl = input['pull_request_url']
        ..links = Links.fromJSON(input['_links']);
  }
}
