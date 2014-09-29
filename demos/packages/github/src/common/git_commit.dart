part of github.common;

/// Model class for a git commit.
/// 
/// TODO (marcojakob): This is the raw [GitCommit]. 
/// The existing [Commit] is probably a repository commit containing 
/// GitHub-specific information. We should rename it to RepositoryCommit. 
/// The RepositoryCommit should then provide access to this raw [GitCommit]. 
/// 
/// See: 
/// https://github.com/eclipse/egit-github/blob/master/org.eclipse.egit.github.core/src/org/eclipse/egit/github/core/RepositoryCommit.java
/// https://github.com/google/go-github/blob/master/github/git_commits.go
/// https://github.com/google/go-github/blob/master/github/repos_commits.go
class GitCommit {
  String sha;
  String url;
  GitCommitUser author;
  GitCommitUser committer;
  String message;
  GitTree tree;
  List<GitCommit> parents;
  
  static GitCommit fromJSON(GitHub github, input) {
    var commit = new GitCommit()
        ..sha = input['sha']
        ..url = input['url']
        ..message = input['message'];
    
    if (input['author'] != null) {
      commit.author = GitCommitUser.fromJSON(github, input['author']);
    }
    
    if (input['committer'] != null) {
      commit.committer = GitCommitUser.fromJSON(github, input['committer']);
    }
    
    if (input['tree'] != null) {
      commit.tree = GitTree.fromJSON(github, input['tree']);
    }
    
    if (input['parents'] != null) {
      commit.parents = input['parents'].map((Map<String, dynamic> parent) 
          => GitCommit.fromJSON(github, parent)).toList();
    }
    
    return commit;
  }
}

/// Model class for an author or committer of a commit. The [GitCommitUser] may
/// not corresponsd to a GitHub [User].
class GitCommitUser {
  DateTime date;
  String name;
  String email;
  
  static GitCommitUser fromJSON(GitHub github, input) {
    return new GitCommitUser()
        ..date = parseDateTime(input['date'])
        ..name = input['name']
        ..email = input['email'];
  }
}