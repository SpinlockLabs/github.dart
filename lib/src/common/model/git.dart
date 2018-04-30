part of github.common;

/// Model class for a blob.
class GitBlob {
  String content;
  String encoding;
  String url;
  String sha;
  int size;

  static GitBlob fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GitBlob()
      ..content = (input['content'] as String)?.trim() // includes newline?
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

  GitCommit();

  factory GitCommit.fromJson(input) {
    var commit = new GitCommit()
      ..sha = input['sha']
      ..url = input['url']
      ..message = input['message']
      ..commentCount = input['comment_count'];

    if (input['author'] != null) {
      commit.author =
          GitCommitUser.fromJSON(input['author'] as Map<String, dynamic>);
    }

    if (input['committer'] != null) {
      commit.committer =
          GitCommitUser.fromJSON(input['committer'] as Map<String, dynamic>);
    }

    if (input['tree'] != null) {
      commit.tree = new GitTree.fromJson(input['tree'] as Map<String, dynamic>);
    }

    if (input['parents'] != null) {
      commit.parents = (input['parents'] as List<Map<String, dynamic>>)
          .map((Map<String, dynamic> parent) => GitCommit.fromJSON(parent))
          .toList();
    }

    return commit;
  }

  static GitCommit fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GitCommit.fromJson(input);
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
    var map = <String, dynamic>{};
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
/// not correspond to a GitHub [User].
class GitCommitUser {
  final String name;
  final String email;
  final DateTime date;

  GitCommitUser(this.name, this.email, this.date);

  static GitCommitUser fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GitCommitUser(
        input['name'], input['email'], parseDateTime(input['date']));
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};

    putValue('name', name, map);
    putValue('email', email, map);
    putValue('date', dateToGitHubIso8601(date), map);

    return map;
  }
}

/// Model class for a GitHub tree.
@JsonSerializable(createToJson: false)
class GitTree {
  final String sha;
  final String url;

  /// If truncated is true, the number of items in the tree array exceeded
  /// GitHub's maximum limit.
  final bool truncated;

  @JsonKey(name: "tree")
  final List<GitTreeEntry> entries;

  GitTree(this.sha, this.url, this.truncated, this.entries);

  factory GitTree.fromJson(Map<String, dynamic> json) =>
      json == null ? null : _$GitTreeFromJson(json);
}

/// Model class for the contents of a tree structure. [GitTreeEntry] can
/// represent either a blog, a commit (in the case of a submodule), or another
/// tree.
@JsonSerializable(createToJson: false)
class GitTreeEntry {
  final String path;
  final String mode;
  final String type;
  final int size;
  final String sha;
  final String url;

  GitTreeEntry(this.path, this.mode, this.type, this.size, this.sha, this.url);

  factory GitTreeEntry.fromJson(Map<String, dynamic> json) =>
      _$GitTreeEntryFromJson(json);
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
    var map = <String, dynamic>{};

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
    var map = <String, dynamic>{};

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

  static GitReference fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GitReference()
      ..ref = input['ref']
      ..url = input['url']
      ..object = GitObject.fromJSON(input['object'] as Map<String, dynamic>);
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

  static GitTag fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GitTag()
      ..tag = input['tag']
      ..sha = input['sha']
      ..url = input['url']
      ..message = input['message']
      ..tagger = GitCommitUser.fromJSON(input['tagger'] as Map<String, dynamic>)
      ..object = GitObject.fromJSON(input['object'] as Map<String, dynamic>);
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
    var map = <String, dynamic>{};

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

  static GitObject fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GitObject()
      ..type = input['type']
      ..sha = input['sha']
      ..url = input['url'];
  }
}
