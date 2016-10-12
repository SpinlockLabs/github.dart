part of github.common;

/// Model class for a commit in a repository.
///
/// Note: The [RepositoryCommit] wraps a [GitCommit], so author/committer
/// information is in two places, but contain different details about them:
/// in [RepositoryCommit] "github details", in [GitCommit] "git details".
class RepositoryCommit {
  /// API url.
  String url;

  /// Commit SHA
  String sha;

  /// Url to Commit Page
  @ApiName("html_url")
  String htmlUrl;

  /// Comments url.
  @ApiName("comments_url")
  String commentsUrl;

  /// A reference to the raw [GitCommit].
  GitCommit commit;

  /// Commit Author
  User author;

  /// Commit Committer.
  User committer;

  /// Commit parents.
  List<GitCommit> parents;

  /// Commit statistics.
  CommitStats stats;

  /// The files changed in this commit.
  List<CommitFile> files;

  static RepositoryCommit fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    var commit = new RepositoryCommit()
      ..url = input['url']
      ..sha = input['sha']
      ..htmlUrl = input['html_url']
      ..commentsUrl = input['comments_url']
      ..commit = GitCommit.fromJSON(input['commit'] as Map<String, dynamic>)
      ..author = User.fromJSON(input['author'] as Map<String, dynamic>)
      ..committer = User.fromJSON(input['committer'] as Map<String, dynamic>)
      ..stats = CommitStats.fromJSON(input['stats'] as Map<String, dynamic>);

    if (input['parents'] != null) {
      commit.parents = (input['parents'] as List<Map<String, dynamic>>)
          .map((parent) => GitCommit.fromJSON(parent))
          .toList();
    }

    if (input['files'] != null) {
      commit.files = (input['files'] as List<Map<String, dynamic>>)
          .map((file) => CommitFile.fromJSON(file))
          .toList();
    }

    return commit;
  }
}

/// Model class for commit statistics.
class CommitStats {
  /// Number of Additions.
  int additions;

  /// Number of Deletions.
  int deletions;

  /// Total changes.
  int total;

  static CommitStats fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new CommitStats()
      ..additions = input['additions']
      ..deletions = input['deletions']
      ..total = input['total'];
  }
}

/// Model class of a file that was changed in a commit.
class CommitFile {
  @ApiName("filename")
  String name;

  int additions;
  int deletions;
  int changes;
  String status;

  @ApiName("raw_url")
  String rawUrl;

  @ApiName("blob_url")
  String blobUrl;

  String patch;

  Map<String, dynamic> json;

  static CommitFile fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new CommitFile()
      ..name = input['filename']
      ..additions = input['additions']
      ..deletions = input['deletions']
      ..changes = input['changes']
      ..status = input['status']
      ..rawUrl = input['raw_url']
      ..blobUrl = input['blob_url']
      ..patch = input['patch']
      ..json = input;
  }
}
