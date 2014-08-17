part of github.client;

class Commit {
  final GitHub github;

  @ApiName("html_url")
  String url;
  String sha;

  @ApiName("commit/message")
  String message;
  
  User author;
  User committer;

  @ApiName("stats/additions")
  int additionsCount;

  @ApiName("stats/deletions")
  int deletionsCount;

  @ApiName("commit/comments_count")
  int commentsCount;

  @ApiName("commit/author/date")
  DateTime authoredAt;
  
  @ApiName("commit/commiter/email")
  DateTime committedAt;

  @ApiName("commit/commiter/email")
  String committerEmail;
  
  @ApiName("commit/author/email")
  String authorEmail;

  Commit(this.github);

  static Commit fromJSON(GitHub github, input) {
    var commit = new Commit(github)
        ..url = input['html_url']
        ..author = User.fromJSON(github, input['author'])
        ..committer = User.fromJSON(github, input['committer'])
        ..message = input['commit']['message']
        ..authoredAt = parse_date(input['commit']['author']['date'])
        ..committedAt = parse_date(input['commit']['committer']['date'])
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
