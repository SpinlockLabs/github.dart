part of github.common;

/// Model class for a Pull Request.
@immutable
class PullRequestInformation {
  /// If this is a complete pull request
  final bool isCompletePullRequest;

  /// Url to the Pull Request Page
  @JsonKey(name: "html_url")
  final String htmlUrl;

  /// Url to the diff for this Pull Request
  @JsonKey(name: "diff_url")
  final String diffUrl;

  /// Url to the patch for this Pull Request
  @JsonKey(name: "patch_url")
  final String patchUrl;

  /// Pull Request Number
  final int number;

  /// Pull Request State
  final String state;

  /// Pull Request Title
  final String title;

  /// Pull Request Body
  final String body;

  /// Time the pull request was created
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  /// Time the pull request was updated
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  /// Time the pull request was closed
  @JsonKey(name: "closed_at")
  final DateTime closedAt;

  /// Time the pull request was merged
  @JsonKey(name: "merged_at")
  final DateTime mergedAt;

  /// The Pull Request Head
  final PullRequestHead head;

  /// Pull Request Base
  final PullRequestHead base;

  /// The User who created the Pull Request
  final User user;

  /// Whether or not the pull request is a draft
  final bool draft;

  @deprecated
  const PullRequestInformation([this.isCompletePullRequest = false])
      : base = null,
        body = null,
        closedAt = null,
        createdAt = null,
        diffUrl = null,
        draft = null,
        head = null,
        htmlUrl = null,
        mergedAt = null,
        number = null,
        patchUrl = null,
        state = null,
        title = null,
        updatedAt = null,
        user = null;

  const PullRequestInformation._({
    @required this.base,
    @required this.body,
    @required this.closedAt,
    @required this.createdAt,
    @required this.diffUrl,
    @required this.draft,
    @required this.head,
    @required this.htmlUrl,
    @required this.isCompletePullRequest,
    @required this.mergedAt,
    @required this.number,
    @required this.patchUrl,
    @required this.state,
    @required this.title,
    @required this.updatedAt,
    @required this.user,
  });

  factory PullRequestInformation.fromJSON(Map<String, dynamic> input,
      [PullRequestInformation into]) {
    if (input == null) return null;

    return PullRequestInformation._(
      head: PullRequestHead.fromJSON(input['head'] as Map<String, dynamic>) ??
          into?.head,
      base: PullRequestHead.fromJSON(input['base'] as Map<String, dynamic>) ??
          into?.base,
      htmlUrl: input['html_url'] ?? into?.htmlUrl,
      diffUrl: input['diff_url'] ?? into?.diffUrl,
      patchUrl: input['patch_url'] ?? into?.patchUrl,
      number: input['number'] ?? into?.number,
      state: input['state'] ?? into?.state,
      title: input['title'] ?? into?.title,
      body: input['body'] ?? into?.body,
      createdAt: parseDateTime(input['created_at']) ?? into?.createdAt,
      updatedAt: parseDateTime(input['updated_at']) ?? into?.updatedAt,
      closedAt: parseDateTime(input['closed_at']) ?? into?.closedAt,
      mergedAt: parseDateTime(input['merged_at']) ?? into?.mergedAt,
      user: User.fromJson(input['user'] as Map<String, dynamic>) ?? into?.user,
      draft: input['draft'] ?? into?.draft ?? false,
    );
  }
}

/// Model class for a Complete Pull Request.
@immutable
class PullRequest extends PullRequestInformation {
  @JsonKey(name: "merge_commit_sha")
  final String mergeCommitSha;

  /// If the pull request was merged
  final bool merged;

  /// If the pull request is mergeable
  final bool mergeable;

  /// The user who merged the pull request
  @JsonKey(name: "merged_by")
  final User mergedBy;

  /// Number of comments
  final int commentsCount;

  /// Number of commits
  final int commitsCount;

  /// Number of additions
  final int additionsCount;

  /// Number of deletions
  final int deletionsCount;

  /// Number of changed files
  final int changedFilesCount;

  /// Pull Request ID
  final int id;

  /// Pull Request Labels
  final List<IssueLabel> labels;

  @deprecated
  const PullRequest()
      : additionsCount = null,
        changedFilesCount = null,
        commentsCount = null,
        commitsCount = null,
        deletionsCount = null,
        id = null,
        labels = null,
        mergeCommitSha = null,
        mergeable = null,
        merged = null,
        mergedBy = null,
        super(true);

  const PullRequest._({
    @required this.additionsCount,
    @required this.changedFilesCount,
    @required this.commentsCount,
    @required this.commitsCount,
    @required this.deletionsCount,
    @required this.id,
    @required this.labels,
    @required this.mergeable,
    @required this.mergeCommitSha,
    @required this.merged,
    @required this.mergedBy,
  });

  factory PullRequest.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return PullRequestInformation.fromJSON(
      input,
      PullRequest._(
        mergeable: input['mergeable'],
        merged: input['merged'],
        id: input['id'],
        mergedBy: User.fromJson(input['merged_by'] as Map<String, dynamic>),
        mergeCommitSha: input['merge_commit_sha'],
        commentsCount: input['comments'],
        commitsCount: input['commits'],
        additionsCount: input['additions'],
        deletionsCount: input['deletions'],
        changedFilesCount: input['changed_files'],
        labels: input['labels']
            ?.cast<Map<String, dynamic>>()
            ?.map<IssueLabel>((j) => IssueLabel.fromJSON(j))
            ?.toList(),
      ),
    );
  }
}

/// Model class for a pull request merge.
@immutable
class PullRequestMerge {
  final bool merged;
  final String sha;
  final String message;

  @deprecated
  const PullRequestMerge()
      : merged = null,
        sha = null,
        message = null;

  const PullRequestMerge._({
    @required this.merged,
    @required this.sha,
    @required this.message,
  });

  factory PullRequestMerge.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return PullRequestMerge._(
      merged: input['merged'],
      sha: input['sha'],
      message: input['message'],
    );
  }
}

/// Model class for a Pull Request Head.
@immutable
class PullRequestHead {
  /// Label
  final String label;

  /// Ref
  final String ref;

  /// Commit SHA
  final String sha;

  /// User
  final User user;

  /// Repository
  final Repository repo;

  const PullRequestHead._({
    @required this.label,
    @required this.ref,
    @required this.repo,
    @required this.sha,
    @required this.user,
  });

  factory PullRequestHead.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return PullRequestHead._(
      label: input['label'],
      ref: input['ref'],
      sha: input['sha'],
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      repo: Repository.fromJSON(input['repo'] as Map<String, dynamic>),
    );
  }
}

/// Model class for a pull request to be created.
@immutable
class CreatePullRequest {
  /// Pull Request Title
  final String title;

  /// Pull Request Head
  final String head;

  /// Pull Request Base
  final String base;

  /// Pull Request Body
  final String body;

  const CreatePullRequest(this.title, this.head, this.base, {this.body});

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("head", head, map);
    putValue("base", base, map);
    putValue("body", body, map);
    return jsonEncode(map);
  }
}

/// Model class for a pull request comment.
@immutable
class PullRequestComment {
  final int id;
  @JsonKey(name: "diff_hunk")
  final String diffHunk;
  final String path;
  final int position;

  @JsonKey(name: "original_position")
  final int originalPosition;

  @JsonKey(name: "commit_id")
  final String commitID;

  @JsonKey(name: "original_commit_id")
  final String originalCommitID;

  final User user;
  final String body;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  @JsonKey(name: "html_url")
  final String url;

  @JsonKey(name: "pull_request_url")
  final String pullRequestUrl;

  @JsonKey(name: "_links")
  final Links links;

  const PullRequestComment._({
    @required this.body,
    @required this.commitID,
    @required this.createdAt,
    @required this.diffHunk,
    @required this.id,
    @required this.links,
    @required this.originalCommitID,
    @required this.originalPosition,
    @required this.path,
    @required this.position,
    @required this.pullRequestUrl,
    @required this.updatedAt,
    @required this.url,
    @required this.user,
  });

  factory PullRequestComment.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return PullRequestComment._(
      id: input['id'],
      diffHunk: input['diff_hunk'],
      path: input['path'],
      position: input['position'],
      originalPosition: input['original_position'],
      commitID: input['commit_id'],
      originalCommitID: input['original_commit_id'],
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      body: input['body'],
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      url: input['html_url'],
      pullRequestUrl: input['pull_request_url'],
      links: Links.fromJson(input['_links'] as Map<String, dynamic>),
    );
  }
}

/// Model class for a pull request comment to be created.
@immutable
class CreatePullRequestComment {
  final String body;

  @JsonKey(name: "commit_id")
  final String commitId;

  final String path;

  final int position;

  const CreatePullRequestComment(
      this.body, this.commitId, this.path, this.position);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("body", body, map);
    putValue("commit_id", commitId, map);
    putValue("path", path, map);
    putValue("position", position, map);
    return jsonEncode(map);
  }
}

@immutable
class PullRequestFile {
  final String sha;
  final String filename;
  final String status;
  @JsonKey(name: "additions")
  final int additionsCount;
  @JsonKey(name: "deletions")
  final int deletionsCount;
  @JsonKey(name: "changes")
  final int changesCount;
  final String blobUrl;
  final String rawUrl;
  final String contentsUrl;
  final String patch;

  const PullRequestFile._({
    @required this.additionsCount,
    @required this.blobUrl,
    @required this.changesCount,
    @required this.contentsUrl,
    @required this.deletionsCount,
    @required this.filename,
    @required this.patch,
    @required this.rawUrl,
    @required this.sha,
    @required this.status,
  });

  factory PullRequestFile.fromJSON(Map<String, dynamic> input) {
    return PullRequestFile._(
      sha: input['sha'],
      filename: input['filename'],
      status: input['status'],
      additionsCount: input['additions'],
      deletionsCount: input['deletions'],
      changesCount: input['changes'],
      blobUrl: input['blob_url'],
      rawUrl: input['raw_url'],
      contentsUrl: input['contents_url'],
      patch: input['patch'],
    );
  }
}
