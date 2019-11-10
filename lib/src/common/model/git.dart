import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'git.g.dart';

/// Model class for a blob.
@JsonSerializable(fieldRename: FieldRename.snake)
class GitBlob {
  GitBlob({
    this.content,
    this.encoding,
    this.url,
    this.sha,
    this.size,
  });
  String content;
  String encoding;
  String url;
  String sha;
  int size;

  factory GitBlob.fromJson(Map<String, dynamic> input) =>
      _$GitBlobFromJson(input);
  Map<String, dynamic> toJson() => _$GitBlobToJson(this);
}

/// Model class for a new blob to be created.
///
/// The [encoding] can be either 'utf-8' or 'base64'.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGitBlob {
  CreateGitBlob(this.content, this.encoding);

  String content;
  String encoding;

  factory CreateGitBlob.fromJson(Map<String, dynamic> input) =>
      _$CreateGitBlobFromJson(input);
  Map<String, dynamic> toJson() => _$CreateGitBlobToJson(this);
}

/// Model class for a git commit.
///
/// Note: This is the raw [GitCommit]. The [RepositoryCommit] is a repository
/// commit containing GitHub-specific information.
@JsonSerializable(fieldRename: FieldRename.snake)
class GitCommit {
  GitCommit({
    this.sha,
    this.url,
    this.author,
    this.committer,
    this.message,
    this.tree,
    this.parents,
    this.commentCount,
  });
  String sha;
  String url;
  GitCommitUser author;
  GitCommitUser committer;
  String message;
  GitTree tree;
  List<GitCommit> parents;

  @JsonKey(name: 'comment_count')
  int commentCount;

  factory GitCommit.fromJson(Map<String, dynamic> input) =>
      _$GitCommitFromJson(input);
  Map<String, dynamic> toJson() => _$GitCommitToJson(this);
}

/// Model class for a new commit to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGitCommit {
  CreateGitCommit(this.message, this.tree,
      {this.parents, this.committer, this.author});

  /// The commit message.
  String message;

  /// The SHA of the tree object this commit points to.
  String tree;

  /// The SHAs of the commits that were the parents of this commit. If omitted
  /// or empty, the commit will be written as a root commit.
  List<String> parents;

  /// Info about the committer.
  GitCommitUser committer;

  /// Info about the author.
  GitCommitUser author;

  factory CreateGitCommit.fromJson(Map<String, dynamic> input) =>
      _$CreateGitCommitFromJson(input);
  Map<String, dynamic> toJson() => _$CreateGitCommitToJson(this);
}

/// Model class for an author or committer of a commit. The [GitCommitUser] may
/// not correspond to a GitHub [User].
@JsonSerializable(includeIfNull: false)
class GitCommitUser {
  GitCommitUser(this.name, this.email, this.date);

  String name;
  String email;
  @JsonKey(toJson: dateToGitHubIso8601)
  DateTime date;

  factory GitCommitUser.fromJson(Map<String, dynamic> json) =>
      _$GitCommitUserFromJson(json);

  Map<String, dynamic> toJson() => _$GitCommitUserToJson(this);
}

/// Model class for a GitHub tree.
@JsonSerializable(fieldRename: FieldRename.snake)
class GitTree {
  String sha;
  String url;

  /// If truncated is true, the number of items in the tree array exceeded
  /// GitHub's maximum limit.
  bool truncated;

  @JsonKey(name: 'tree')
  List<GitTreeEntry> entries;

  GitTree(this.sha, this.url, this.truncated, this.entries);

  factory GitTree.fromJson(Map<String, dynamic> input) =>
      _$GitTreeFromJson(input);
  Map<String, dynamic> toJson() => _$GitTreeToJson(this);
}

/// Model class for the contents of a tree structure. [GitTreeEntry] can
/// represent either a blog, a commit (in the case of a submodule), or another
/// tree.
@JsonSerializable(fieldRename: FieldRename.snake)
class GitTreeEntry {
  String path;
  String mode;
  String type;
  int size;
  String sha;
  String url;

  GitTreeEntry(this.path, this.mode, this.type, this.size, this.sha, this.url);

  factory GitTreeEntry.fromJson(Map<String, dynamic> input) =>
      _$GitTreeEntryFromJson(input);
  Map<String, dynamic> toJson() => _$GitTreeEntryToJson(this);
}

/// Model class for a new tree to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGitTree {
  CreateGitTree(this.entries, {this.baseTree});

  /// The SHA1 of the tree you want to update with new data.
  /// If you don’t set this, the commit will be created on top of everything;
  /// however, it will only contain your change, the rest of your files will
  /// show up as deleted.
  String baseTree;

  /// The Objects specifying a tree structure.
  @JsonKey(name: 'tree')
  List<CreateGitTreeEntry> entries;

  factory CreateGitTree.fromJson(Map<String, dynamic> input) =>
      _$CreateGitTreeFromJson(input);
  Map<String, dynamic> toJson() => _$CreateGitTreeToJson(this);
}

/// Model class for a new tree entry to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGitTreeEntry {
  /// Constructor.
  /// Either [sha] or [content] must be defined.
  CreateGitTreeEntry(
    this.path,
    this.mode,
    this.type, {
    this.sha,
    this.content,
  });
  String path;
  String mode;
  String type;
  String sha;
  String content;

  factory CreateGitTreeEntry.fromJson(Map<String, dynamic> input) =>
      _$CreateGitTreeEntryFromJson(input);
  Map<String, dynamic> toJson() => _$CreateGitTreeEntryToJson(this);
}

/// Model class for a reference.
@JsonSerializable(fieldRename: FieldRename.snake)
class GitReference {
  GitReference({
    this.ref,
    this.url,
    this.object,
  });
  String ref;
  String url;
  GitObject object;

  factory GitReference.fromJson(Map<String, dynamic> input) =>
      _$GitReferenceFromJson(input);
  Map<String, dynamic> toJson() => _$GitReferenceToJson(this);
}

/// Model class for a tag.
@JsonSerializable(fieldRename: FieldRename.snake)
class GitTag {
  GitTag({
    this.tag,
    this.sha,
    this.url,
    this.message,
    this.tagger,
    this.object,
  });
  String tag;
  String sha;
  String url;
  String message;
  GitCommitUser tagger;
  GitObject object;

  factory GitTag.fromJson(Map<String, dynamic> input) =>
      _$GitTagFromJson(input);
  Map<String, dynamic> toJson() => _$GitTagToJson(this);
}

/// Model class for a new tag to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGitTag {
  CreateGitTag(this.tag, this.message, this.object, this.type, this.tagger);

  String tag;
  String message;
  String object;
  String type;
  GitCommitUser tagger;

  factory CreateGitTag.fromJson(Map<String, dynamic> input) =>
      _$CreateGitTagFromJson(input);
  Map<String, dynamic> toJson() => _$CreateGitTagToJson(this);
}

/// Model class for an object referenced by [GitReference] and [GitTag].
@JsonSerializable(fieldRename: FieldRename.snake)
class GitObject {
  GitObject(this.type, this.sha, this.url);
  String type;
  String sha;
  String url;

  factory GitObject.fromJson(Map<String, dynamic> input) =>
      _$GitObjectFromJson(input);
  Map<String, dynamic> toJson() => _$GitObjectToJson(this);
}
