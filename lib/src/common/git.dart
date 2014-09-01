part of github.common;

class GitBlob {
  final GitHub github;

  String content;
  String sha;
  String encoding;
  int size;

  GitBlob(this.github);

  static GitBlob fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new GitBlob(github)
        ..content = input['content']
        ..sha = input['sha']
        ..encoding = input['encoding']
        ..size = input['size'];
  }
}

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

class GitTree {
  final GitHub github;

  String sha;

  @ApiName("tree")
  List<GitTreeEntry> entries;

  Map<String, dynamic> json;

  GitTree(this.github);

  static GitTree fromJSON(GitHub github, input) {
    return new GitTree(github)
        ..sha = input['sha']
        ..entries = input['tree'].map((Map<String, dynamic> it) => GitTreeEntry.fromJSON(github, it))
        ..json = input;
  }
}

class GitTreeEntry {
  final GitHub github;

  String path;
  String mode;
  String type;
  int size;
  String sha;

  GitTreeEntry(this.github);

  Map<String, dynamic> json;

  static GitTreeEntry fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new GitTreeEntry(github)
        ..path = input['path']
        ..mode = input['mode']
        ..type = input['type']
        ..size = input['size']
        ..sha = input['sha']
        ..json = input;
  }
}
