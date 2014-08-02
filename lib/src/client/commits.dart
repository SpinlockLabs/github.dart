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
  
  DateTime authoredAt;
  DateTime committedAt;
  
  Commit(this.github);
  
  static Commit fromJSON(GitHub github, input) {
    var commit = new Commit(github);
    commit.url = input['html_url'];
    commit.author = User.fromJSON(github, input['author']);
    commit.committer = User.fromJSON(github, input['committer']);
    commit.message = input['commit']['message'];
    
    commit.authoredAt = parse_date(input['commit']['author']['date']);
    commit.committedAt = parse_date(input['commit']['committer']['date']);
    
    if (input['stats'] != null) {
      commit.additionsCount = input['stats']['additions'];
      commit.deletionsCount = input['stats']['deletions'];
      commit.commentsCount = input['commit']['comments_count'];
    }
    
    return commit;
  }
}
