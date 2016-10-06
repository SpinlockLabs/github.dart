part of github.common;

/// Model class for a Pull Request.
class PullRequestInformation {
  /// If this is a complete pull request
  final bool isCompletePullRequest;

  /// Url to the Pull Request Page
  @ApiName("html_url")
  String htmlUrl;

  /// Url to the diff for this Pull Request
  @ApiName("diff_url")
  String diffUrl;

  /// Url to the patch for this Pull Request
  @ApiName("patch_url")
  String patchUrl;

  /// Pull Request Number
  int number;

  /// Pull Request State
  String state;

  /// Pull Request Title
  String title;

  /// Pull Request Body
  String body;

  /// Time the pull request was created
  @ApiName("created_at")
  DateTime createdAt;

  /// Time the pull request was updated
  @ApiName("updated_at")
  DateTime updatedAt;

  /// Time the pull request was closed
  @ApiName("closed_at")
  DateTime closedAt;

  /// Time the pull request was merged
  @ApiName("merged_at")
  DateTime mergedAt;

  /// The Pull Request Head
  PullRequestHead head;

  /// Pull Request Base
  PullRequestHead base;

  /// The User who created the Pull Request
  User user;

  PullRequestInformation([this.isCompletePullRequest = false]);

  static PullRequestInformation fromJSON(Map<String, dynamic> input,
      [PullRequestInformation into]) {
    if (input == null) return null;

    var pr = into != null ? into : new PullRequestInformation();
    pr.head = PullRequestHead.fromJSON(input['head'] as Map<String, dynamic>);
    pr.base = PullRequestHead.fromJSON(input['base'] as Map<String, dynamic>);
    pr.htmlUrl = input['html_url'];
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
    pr.user = User.fromJSON(input['user'] as Map<String, dynamic>);
    return pr;
  }
}

/// Model class for a Complete Pull Request.
class PullRequest extends PullRequestInformation {
  @ApiName("merge_commit_sha")
  String mergeCommitSha;

  /// If the pull request was merged
  bool merged;

  /// If the pull request is mergeable
  bool mergeable;

  /// The user who merged the pull request
  @ApiName("merged_by")
  User mergedBy;

  /// Number of comments
  int commentsCount;

  /// Number of commits
  int commitsCount;

  /// Number of additions
  int additionsCount;

  /// Number of deletions
  int deletionsCount;

  /// Number of changed files
  int changedFilesCount;

  /// Pull Request ID
  int id;

  PullRequest() : super(true);

  static PullRequest fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    PullRequest pr = PullRequestInformation.fromJSON(input, new PullRequest());
    pr.mergeable = input['mergeable'];
    pr.merged = input['merged'];
    pr.id = input['id'];
    pr.mergedBy = User.fromJSON(input['merged_by'] as Map<String, dynamic>);
    pr.mergeCommitSha = input['merge_commit_sha'];
    pr.commentsCount = input['comments'];
    pr.commitsCount = input['commits'];
    pr.additionsCount = input['additions'];
    pr.deletionsCount = input['deletions'];
    pr.changedFilesCount = input['changed_files'];
    return pr;
  }
}

/// Model class for a pull request merge.
class PullRequestMerge {
  bool merged;
  String sha;
  String message;

  PullRequestMerge();

  static PullRequestMerge fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new PullRequestMerge()
      ..merged = input['merged']
      ..sha = input['sha']
      ..message = input['message'];
  }
}

/// Model class for a Pull Request Head.
class PullRequestHead {
  /// Label
  String label;

  /// Ref
  String ref;

  /// Commit SHA
  String sha;

  /// User
  User user;

  /// Repository
  Repository repo;

  static PullRequestHead fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    var head = new PullRequestHead();
    head.label = input['label'];
    head.ref = input['ref'];
    head.sha = input['sha'];
    head.user = User.fromJSON(input['user'] as Map<String, dynamic>);
    head.repo = Repository.fromJSON(input['repo'] as Map<String, dynamic>);
    return head;
  }
}

/// Model class for a pull request to be created.
class CreatePullRequest {
  /// Pull Request Title
  final String title;

  /// Pull Request Head
  final String head;

  /// Pull Request Base
  final String base;

  /// Pull Request Body
  String body;

  CreatePullRequest(this.title, this.head, this.base, {this.body});

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("head", head, map);
    putValue("base", base, map);
    putValue("body", body, map);
    return JSON.encode(map);
  }
}

/// Model class for a pull request comment.
class PullRequestComment {
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

  static PullRequestComment fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new PullRequestComment()
      ..id = input['id']
      ..diffHunk = input['diff_hunk']
      ..path = input['path']
      ..position = input['position']
      ..originalPosition = input['original_position']
      ..commitID = input['commit_id']
      ..originalCommitID = input['original_commit_id']
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>)
      ..body = input['body']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..url = input['html_url']
      ..pullRequestUrl = input['pull_request_url']
      ..links = Links.fromJSON(input['_links'] as Map<String, dynamic>);
  }
}

/// Model class for a pull request comment to be created.
class CreatePullRequestComment {
  String body;

  @ApiName("commit_id")
  String commitId;

  String path;

  int position;

  CreatePullRequestComment(this.body, this.commitId, this.path, this.position);

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("body", body, map);
    putValue("commit_id", commitId, map);
    putValue("path", path, map);
    putValue("position", position, map);
    return JSON.encode(map);
  }
}

class PullRequestFile {
  String sha;
  String filename;
  String status;
  @ApiName("additions")
  int additionsCount;
  @ApiName("deletions")
  int deletionsCount;
  @ApiName("changes")
  int changesCount;
  String blobUrl;
  String rawUrl;
  String patch;

  static PullRequestFile fromJSON(Map<String, dynamic> input) {
    var file = new PullRequestFile();
    file.sha = input['sha'];
    file.filename = input['filename'];
    file.status = input['status'];
    file.additionsCount = input['additions'];
    file.deletionsCount = input['deletions'];
    file.changesCount = input['changes'];
    file.blobUrl = input['blob_url'];
    file.rawUrl = input['raw_url'];
    file.patch = input['patch'];
    return file;
  }
}
