import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:github/src/util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'git.g.dart';

/// Model class for a blob.
class GitBlob {
  String content;
  String encoding;
  String url;
  String sha;
  int size;

  static GitBlob fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GitBlob()
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
@JsonSerializable(createFactory: false)
class CreateGitBlob {
  final String content;
  final String encoding;

  const CreateGitBlob(this.content, this.encoding);

  Map<String, dynamic> toJson() => _$CreateGitBlobToJson(this);
}

/// Model class for a git commit.
///
/// Note: This is the raw [GitCommit]. The [RepositoryCommit] is a repository
/// commit containing GitHub-specific information.
@JsonSerializable(createToJson: false)
class GitCommit {
  String sha;
  String url;
  GitCommitUser author;
  GitCommitUser committer;
  String message;
  GitTree tree;
  List<GitCommit> parents;

  @JsonKey(name: 'comment_count')
  int commentCount;

  GitCommit();

  factory GitCommit.fromJson(Map<String, dynamic> json) =>
      _$GitCommitFromJson(json);

  static GitCommit fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GitCommit.fromJson(input);
  }
}

/// Model class for a new commit to be created.
@JsonSerializable(includeIfNull: false, createFactory: false)
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

  Map<String, dynamic> toJson() => _$CreateGitCommitToJson(this);
}

/// Model class for an author or committer of a commit. The [GitCommitUser] may
/// not correspond to a GitHub [User].
@JsonSerializable(includeIfNull: false)
class GitCommitUser {
  final String name;
  final String email;

  @JsonKey(toJson: dateToGitHubIso8601)
  final DateTime date;

  const GitCommitUser(this.name, this.email, this.date);

  factory GitCommitUser.fromJson(Map<String, dynamic> json) =>
      _$GitCommitUserFromJson(json);

  Map<String, dynamic> toJson() => _$GitCommitUserToJson(this);
}

/// Model class for a GitHub tree.
@JsonSerializable(createToJson: false)
class GitTree {
  final String sha;
  final String url;

  /// If truncated is true, the number of items in the tree array exceeded
  /// GitHub's maximum limit.
  final bool truncated;

  @JsonKey(name: 'tree')
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
  @JsonKey(name: 'base_tree')
  String baseTree;

  /// The Objects specifying a tree structure.
  @JsonKey(name: 'tree')
  final List<CreateGitTreeEntry> entries;

  CreateGitTree(this.entries);

  String toJSON() {
    final map = <String, dynamic>{};

    putValue('base_tree', baseTree, map);

    if (entries.isNotEmpty) {
      putValue(
          'tree', entries.map((e) => e.toMap()).toList(growable: false), map);
    }

    return jsonEncode(map);
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
  const CreateGitTreeEntry(
    this.path,
    this.mode,
    this.type, {
    this.sha,
    this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    putValue('path', path, map);
    putValue('mode', mode, map);
    putValue('type', type, map);
    putValue('sha', sha, map);
    putValue('content', content, map);

    return map;
  }
}

/// Model class for a reference.
@JsonSerializable(createToJson: false)
class GitReference {
  String ref;
  String url;
  GitObject object;

  static GitReference fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    return _$GitReferenceFromJson(input);
  }
}

/// Model class for a tag.
@JsonSerializable(createToJson: false)
class GitTag {
  String tag;
  String sha;
  String url;
  String message;
  GitCommitUser tagger;
  GitObject object;

  static GitTag fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    return _$GitTagFromJson(input);
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
    final map = <String, dynamic>{};

    putValue('tag', tag, map);
    putValue('message', message, map);
    putValue('object', object, map);
    putValue('type', type, map);
    putValue('tagger', tagger.toJson(), map);

    return jsonEncode(map);
  }
}

/// Model class for an object referenced by [GitReference] and [GitTag].
@JsonSerializable(createToJson: false)
class GitObject {
  final String type;
  final String sha;
  final String url;

  GitObject(this.type, this.sha, this.url);

  factory GitObject.fromJson(Map<String, dynamic> json) =>
      _$GitObjectFromJson(json);
}
