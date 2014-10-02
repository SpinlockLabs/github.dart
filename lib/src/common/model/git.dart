part of github.common;

/// Model class for a blob. 
class GitBlob {
  String content;
  String encoding;
  String url;
  String sha;
  int size;
  
  static GitBlob fromJSON(input) {
    if (input == null) return null;
    
    return new GitBlob()
        ..content = input['content']
        ..encoding = input['encoding']
        ..url = input['url']
        ..sha = input['sha']
        ..size = input['size'];
  }
}

/// Model class for a new blob to be created.
/// 
/// The [encoding] can be either 'utf-8' or 'base64'.
class CreateGitBlob {
  final String content;
  final String encoding;

  CreateGitBlob(this.content, this.encoding);

  String toJSON() {
    return JSON.encode({
      "content": content,
      "encoding": encoding
    });
  }
}

/// Model class for a git commit.
/// 
/// Note: This is the raw [GitCommit]. The [RepositoryCommit] is a repository 
/// commit containing GitHub-specific information. 
class GitCommit {
  String sha;
  String url;
  GitCommitUser author;
  GitCommitUser committer;
  String message;
  GitTree tree;
  List<GitCommit> parents;
  
  static GitCommit fromJSON(input) {
    if (input == null) return null;
    
    var commit = new GitCommit()
        ..sha = input['sha']
        ..url = input['url']
        ..message = input['message'];
    
    if (input['author'] != null) {
      commit.author = GitCommitUser.fromJSON(input['author']);
    }
    
    if (input['committer'] != null) {
      commit.committer = GitCommitUser.fromJSON(input['committer']);
    }
    
    if (input['tree'] != null) {
      commit.tree = GitTree.fromJSON(input['tree']);
    }
    
    if (input['parents'] != null) {
      commit.parents = input['parents'].map((Map<String, dynamic> parent) 
          => GitCommit.fromJSON(parent)).toList();
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
  
  static GitCommitUser fromJSON(input) {
    if (input == null) return null;
    
    return new GitCommitUser()
        ..date = parseDateTime(input['date'])
        ..name = input['name']
        ..email = input['email'];
  }
}

class GitTree {
  String sha;

  @ApiName("tree")
  List<GitTreeEntry> entries;

  static GitTree fromJSON(input) {
    if (input == null) return null;
    
    var tree = new GitTree()
        ..sha = input['sha'];
    
    // There are not tree entries if it's a tree referenced from a GitCommit.
    if (input['tree'] != null) {
      tree.entries = input['tree'].map((Map<String, dynamic> it) 
          => GitTreeEntry.fromJSON(it));
    }
    return tree;
  }
}

class GitTreeEntry {
  String path;
  String mode;
  String type;
  int size;
  String sha;

  static GitTreeEntry fromJSON(input) {
    if (input == null) return null;
    
    return new GitTreeEntry()
        ..path = input['path']
        ..mode = input['mode']
        ..type = input['type']
        ..size = input['size']
        ..sha = input['sha'];
  }
}
