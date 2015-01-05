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
    return JSON.encode({"content": content, "encoding": encoding});
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

  @ApiName('comment_count')
  int commentCount;

  static GitCommit fromJSON(input) {
    if (input == null) return null;

    var commit = new GitCommit()
      ..sha = input['sha']
      ..url = input['url']
      ..message = input['message']
      ..commentCount = input['comment_count'];

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
      commit.parents = input['parents']
          .map((Map<String, dynamic> parent) => GitCommit.fromJSON(parent))
          .toList();
    }

    return commit;
  }
}

/// Model class for a new commit to be created.
class CreateGitCommit {
  /// The commit message.
  final String message;

  /// The SHA of the tree object this commit points to.
  final String tree;

  /// The SHAs of the commits that were the parents of this commit. If omitted
  /// or empty, the commit will be written as a root commit.
  List<String> parents;

  /// Info about the committer.
  GitCommitUser committer;

  /// Info about the author.
  GitCommitUser author;

  CreateGitCommit(this.message, this.tree);

  String toJSON() {
    var map = {};
    putValue('message', message, map);
    putValue('tree', tree, map);
    putValue('parents', parents, map);

    if (committer != null) {
      putValue('committer', committer.toMap(), map);
    }

    if (author != null) {
      putValue('author', author.toMap(), map);
    }

    return JSON.encode(map);
  }
}

/// Model class for an author or committer of a commit. The [GitCommitUser] may
/// not corresponsd to a GitHub [User].
class GitCommitUser {
  final String name;
  final String email;
  final DateTime date;

  GitCommitUser(this.name, this.email, this.date);

  static GitCommitUser fromJSON(input) {
    if (input == null) return null;

    return new GitCommitUser(
        input['name'], input['email'], parseDateTime(input['date']));
  }

  Map<String, dynamic> toMap() {
    var map = {};

    putValue('name', name, map);
    putValue('email', email, map);
    putValue('date', dateToGithubIso8601(date), map);

    return map;
  }
}

/// Model class for a GitHub tree.
class GitTree {
  String sha;
  String url;

  /// If truncated is true, the number of items in the tree array exceeded
  /// GitHub's maximum limit.
  bool truncated;

  @ApiName("tree")
  List<GitTreeEntry> entries;

  static GitTree fromJSON(input) {
    if (input == null) return null;

    var tree = new GitTree()
      ..sha = input['sha']
      ..url = input['url']
      ..truncated = input['truncated'];

    // There are no tree entries if it's a tree referenced from a GitCommit.
    if (input['tree'] != null) {
      tree.entries = input['tree']
          .map((Map<String, dynamic> it) => GitTreeEntry.fromJSON(it))
          .toList(growable: false);
    }
    return tree;
  }
}

/// Model class for the contentents of a tree structure. [GitTreeEntry] can
/// represent either a blog, a commit (in the case of a submodule), or another
/// tree.
class GitTreeEntry {
  String path;
  String mode;
  String type;
  int size;
  String sha;
  String url;

  static GitTreeEntry fromJSON(input) {
    if (input == null) return null;

    return new GitTreeEntry()
      ..path = input['path']
      ..mode = input['mode']
      ..type = input['type']
      ..size = input['size']
      ..sha = input['sha']
      ..url = input['url'];
  }
}

/// Model class for a new tree to be created.
class CreateGitTree {

  /// The SHA1 of the tree you want to update with new data.
  /// If you don’t set this, the commit will be created on top of everything;
  /// however, it will only contain your change, the rest of your files will
  /// show up as deleted.
  @ApiName("base_tree")
  String baseTree;

  /// The Objects specifying a tree structure.
  @ApiName("tree")
  final List<CreateGitTreeEntry> entries;

  CreateGitTree(this.entries);

  String toJSON() {
    var map = {};

    putValue('base_tree', baseTree, map);

    if (entries.isNotEmpty) {
      putValue(
          'tree', entries.map((e) => e.toMap()).toList(growable: false), map);
    }

    return JSON.encode(map);
  }
}

/// Model class for a new tree entry to be created.
class CreateGitTreeEntry {
  final String path;
  final String mode;
  final String type;
  final String sha;
  final String content;

  /// Constructor.
  /// Either [sha] or [content] must be defined.
  CreateGitTreeEntry(this.path, this.mode, this.type, {this.sha, this.content});

  Map<String, dynamic> toMap() {
    var map = {};

    putValue('path', path, map);
    putValue('mode', mode, map);
    putValue('type', type, map);
    putValue('sha', sha, map);
    putValue('content', content, map);

    return map;
  }
}

/// Model class for a reference.
class GitReference {
  String ref;
  String url;
  GitObject object;

  static GitReference fromJSON(input) {
    if (input == null) return null;

    return new GitReference()
      ..ref = input['ref']
      ..url = input['url']
      ..object = GitObject.fromJSON(input['object']);
  }
}

/// Model class for a tag.
class GitTag {
  String tag;
  String sha;
  String url;
  String message;
  GitCommitUser tagger;
  GitObject object;

  static GitTag fromJSON(input) {
    if (input == null) return null;

    return new GitTag()
      ..tag = input['tag']
      ..sha = input['sha']
      ..url = input['url']
      ..message = input['message']
      ..tagger = GitCommitUser.fromJSON(input['tagger'])
      ..object = GitObject.fromJSON(input['object']);
  }
}

/// Model class for a new tag to be created.
class CreateGitTag {
  final String tag;
  final String message;
  String object;
  String type;
  final GitCommitUser tagger;

  CreateGitTag(this.tag, this.message, this.object, this.type, this.tagger);

  String toJSON() {
    var map = {};

    putValue('tag', tag, map);
    putValue('message', message, map);
    putValue('object', object, map);
    putValue('type', type, map);
    putValue('tagger', tagger.toMap(), map);

    return JSON.encode(map);
  }
}

/// Model class for an object referenced by [GitReference] and [GitTag].
class GitObject {
  String type;
  String sha;
  String url;

  static GitObject fromJSON(input) {
    if (input == null) return null;

    return new GitObject()
      ..type = input['type']
      ..sha = input['sha']
      ..url = input['url'];
  }
}
