import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gists.g.dart';

/// Model class for gists.
@JsonSerializable()
class Gist {
  Gist({
    this.id,
    this.description,
    this.public,
    this.owner,
    this.user,
    this.files,
    this.htmlUrl,
    this.commentsCount,
    this.gitPullUrl,
    this.gitPushUrl,
    this.createdAt,
    this.updatedAt,
  });
  String? id;
  String? description;
  bool? public;
  User? owner;
  User? user;
  Map<String, GistFile>? files;

  @JsonKey(name: 'html_url')
  String? htmlUrl;

  @JsonKey(name: 'comments')
  int? commentsCount;

  @JsonKey(name: 'git_pull_url')
  String? gitPullUrl;

  @JsonKey(name: 'git_push_url')
  String? gitPushUrl;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  factory Gist.fromJson(Map<String, dynamic> input) => _$GistFromJson(input);
  Map<String, dynamic> toJson() => _$GistToJson(this);
}

/// Model class for a gist file.
@JsonSerializable()
class GistFile {
  GistFile({
    this.filename,
    this.size,
    this.rawUrl,
    this.type,
    this.language,
    this.truncated,
    this.content,
  });

  String? filename;
  int? size;
  String? rawUrl;
  String? type;
  String? language;
  bool? truncated;
  String? content;

  factory GistFile.fromJson(Map<String, dynamic> input) =>
      _$GistFileFromJson(input);
  Map<String, dynamic> toJson() => _$GistFileToJson(this);
}

/// Model class for a gist fork.
@JsonSerializable()
class GistFork {
  GistFork({this.user, this.id, this.createdAt, this.updatedAt});
  User? user;
  int? id;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  factory GistFork.fromJson(Map<String, dynamic> input) =>
      _$GistForkFromJson(input);
  Map<String, dynamic> toJson() => _$GistForkToJson(this);
}

/// Model class for a gits history entry.
@JsonSerializable()
class GistHistoryEntry {
  GistHistoryEntry({
    this.version,
    this.user,
    this.deletions,
    this.additions,
    this.totalChanges,
    this.committedAt,
  });
  String? version;

  User? user;

  @JsonKey(name: 'change_status/deletions')
  int? deletions;

  @JsonKey(name: 'change_status/additions')
  int? additions;

  @JsonKey(name: 'change_status/total')
  int? totalChanges;

  @JsonKey(name: 'committed_at')
  DateTime? committedAt;

  factory GistHistoryEntry.fromJson(Map<String, dynamic> input) =>
      _$GistHistoryEntryFromJson(input);
  Map<String, dynamic> toJson() => _$GistHistoryEntryToJson(this);
}

/// Model class for gist comments.
@JsonSerializable()
class GistComment {
  GistComment({
    this.id,
    this.user,
    this.createdAt,
    this.updatedAt,
    this.body,
  });

  int? id;
  User? user;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? body;

  factory GistComment.fromJson(Map<String, dynamic> input) =>
      _$GistCommentFromJson(input);
  Map<String, dynamic> toJson() => _$GistCommentToJson(this);
}

/// Model class for a new gist comment to be created.
@JsonSerializable()
class CreateGistComment {
  CreateGistComment(this.body);
  String? body;

  factory CreateGistComment.fromJson(Map<String, dynamic> input) =>
      _$CreateGistCommentFromJson(input);
  Map<String, dynamic> toJson() => _$CreateGistCommentToJson(this);
}
