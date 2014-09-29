part of github.common;

class GitTree {
  final GitHub github;

  String sha;

  @ApiName("tree")
  List<GitTreeEntry> entries;

  Map<String, dynamic> json;

  GitTree(this.github);

  static GitTree fromJSON(GitHub github, input) {
    var tree = new GitTree(github)
        ..sha = input['sha']
        ..json = input;
    
    // There are not tree entries if it's a tree referenced from a GitCommit.
    if (input['tree'] != null) {
      tree.entries = input['tree'].map((Map<String, dynamic> it) 
          => GitTreeEntry.fromJSON(github, it));
    }
    return tree;
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
