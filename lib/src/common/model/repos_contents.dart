import 'dart:convert';
import 'package:github/github.dart';
import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos_contents.g.dart';

/// Model class for a file on GitHub.
@JsonSerializable()
class GitHubFile {
  GitHubFile({
    this.type,
    this.encoding,
    this.size,
    this.name,
    this.path,
    this.content,
    this.sha,
    this.htmlUrl,
    this.gitUrl,
    this.downloadUrl,
    this.links,
    this.sourceRepository,
  });

  /// Type of File
  String type;

  /// File Encoding
  String encoding;

  /// File Size
  int size;

  /// File Name
  String name;

  /// File Path
  String path;

  /// Base-64 encoded file content with newlines.
  String content;

  /// SHA
  String sha;

  /// Url to file
  @JsonKey(name: 'html_url')
  String htmlUrl;

  /// Git Url
  @JsonKey(name: 'git_url')
  String gitUrl;

  /// Download Url
  @JsonKey(name: 'download_url')
  String downloadUrl;

  /// Links
  @JsonKey(name: '_links')
  Links links;

  /// The value in [content] Base-64 decoded.
  String get text {
    return _text ??=
        utf8.decode(base64Decode(LineSplitter.split(content).join()));
  }

  String _text;

  /// Source Repository
  RepositorySlug sourceRepository;

  factory GitHubFile.fromJson(Map<String, dynamic> input) =>
      _$GitHubFileFromJson(input);
  Map<String, dynamic> toJson() => _$GitHubFileToJson(this);
}

@JsonSerializable()
class Links {
  final Uri self;
  final Uri git;
  final Uri html;

  Links({this.git, this.self, this.html});

  factory Links.fromJson(Map<String, dynamic> input) => _$LinksFromJson(input);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

/// Model class for a file or directory.
@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryContents {
  RepositoryContents({
    this.file,
    this.tree,
  });
  GitHubFile file;
  List<GitHubFile> tree;

  bool get isFile => file != null;
  bool get isDirectory => tree != null;

  factory RepositoryContents.fromJson(Map<String, dynamic> json) =>
      _$RepositoryContentsFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryContentsToJson(this);
}

/// Model class for a new file to be created.

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateFile {
  CreateFile(
      {this.path, this.content, this.message, this.branch, this.committer});

  String path;
  String message;
  String content;
  String branch;
  CommitUser committer;

  factory CreateFile.fromJson(Map<String, dynamic> json) =>
      _$CreateFileFromJson(json);

  Map<String, dynamic> toJson() => _$CreateFileToJson(this);
}

/// Model class for a committer of a commit.
@JsonSerializable(fieldRename: FieldRename.snake)
class CommitUser {
  CommitUser(this.name, this.email);

  final String name;
  final String email;

  factory CommitUser.fromJson(Map<String, dynamic> input) =>
      _$CommitUserFromJson(input);

  Map<String, dynamic> toJson() => _$CommitUserToJson(this);
}

/// Model class for the response of a content creation.
@JsonSerializable()
class ContentCreation {
  final RepositoryCommit commit;
  final GitHubFile content;

  ContentCreation(this.commit, this.content);

  factory ContentCreation.fromJson(Map<String, dynamic> input) =>
      _$ContentCreationFromJson(input);
  Map<String, dynamic> toJson() => _$ContentCreationToJson(this);
}
