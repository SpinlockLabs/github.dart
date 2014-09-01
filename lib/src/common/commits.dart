part of github.common;

/**
 * A GitHub Commit
 */
class Commit {
  final GitHub github;

  /**
   * Url to Commit Page
   */
  @ApiName("html_url")
  String url;

  /**
   * Commit SHA
   */
  String sha;

  String treeSha;


  /**
   * Commit Message
   */
  @ApiName("commit/message")
  String message;

  /**
   * Commit Author
   */
  User author;

  /**
   * Commit Commiter
   */
  User committer;

  /**
   * Number of Additions
   */
  @ApiName("stats/additions")
  int additionsCount;

  /**
   * Number of Deletions
   */
  @ApiName("stats/deletions")
  int deletionsCount;

  /**
   * Number of Comments
   */
  @ApiName("commit/comments_count")
  int commentsCount;

  /**
   * Time this commit was authored at
   */
  @ApiName("commit/author/date")
  DateTime authoredAt;

  /**
   * Time this commit was committed at
   */
  @ApiName("commit/commiter/email")
  DateTime committedAt;

  /**
   * Commiter Email
   */
  @ApiName("commit/commiter/email")
  String committerEmail;

  /**
   * Author Email
   */
  @ApiName("commit/author/email")
  String authorEmail;

  List<ChangedFile> files;

  Commit(this.github);

  Map<String, dynamic> json;

  static Commit fromJSON(GitHub github, input) {
    var commit = new Commit(github)
        ..url = input['html_url']
        ..author = User.fromJSON(github, input['author'])
        ..committer = User.fromJSON(github, input['committer'])
        ..message = input['commit']['message']
        ..authoredAt = parseDateTime(input['commit']['author']['date'])
        ..committedAt = parseDateTime(input['commit']['committer']['date'])
        ..committerEmail = input['commit']['committer']['email']
        ..authorEmail = input['commit']['author']['email']
        ..treeSha = input['tree']['sha'];

    commit.json = input;

    if (input['stats'] != null) {
      commit
          ..additionsCount = input['stats']['additions']
          ..deletionsCount = input['stats']['deletions']
          ..commentsCount = input['commit']['comments_count'];
    }

    if (input['files'] != null) {
      commit.files = input['files'].map((it) => ChangedFile.fromJSON(github, it)).toList();
    }

    return commit;
  }
}

class ChangedFile {
  final GitHub github;

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

  ChangedFile(this.github);

  static ChangedFile fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new ChangedFile(github)
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
