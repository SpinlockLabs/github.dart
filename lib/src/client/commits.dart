part of github.client;

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

  Commit(this.github);

  static Commit fromJSON(GitHub github, input) {
    var commit = new Commit(github)
        ..url = input['html_url']
        ..author = User.fromJSON(github, input['author'])
        ..committer = User.fromJSON(github, input['committer'])
        ..message = input['commit']['message']
        ..authoredAt = parseDateTime(input['commit']['author']['date'])
        ..committedAt = parseDateTime(input['commit']['committer']['date'])
        ..committerEmail = input['commit']['committer']['email']
        ..authorEmail = input['commit']['author']['email'];

    if (input['stats'] != null) {
      commit
          ..additionsCount = input['stats']['additions']
          ..deletionsCount = input['stats']['deletions']
          ..commentsCount = input['commit']['comments_count'];
    }

    return commit;
  }
}
