import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:github/src/util.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'gists.g.dart';

/// Model class for gists.
@immutable
@JsonSerializable(createToJson: false)
class Gist {
  const Gist({
    @required this.id,
    @required this.description,
    @required this.public,
    @required this.owner,
    @required this.user,
    @required this.files,
    @required this.htmlUrl,
    @required this.commentsCount,
    @required this.gitPullUrl,
    @required this.gitPushUrl,
    @required this.createdAt,
    @required this.updatedAt,
  });
  final String id;
  final String description;
  final bool public;
  final User owner;
  final User user;
  final List<GistFile> files;

  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @JsonKey(name: 'comments')
  final int commentsCount;

  @JsonKey(name: 'git_pull_url')
  final String gitPullUrl;

  @JsonKey(name: 'git_push_url')
  final String gitPushUrl;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  factory Gist.fromJson(Map<String, dynamic> input) => _$GistFromJson(input);
}

/// Model class for a gist file.
@immutable
@JsonSerializable(createToJson: false)
class GistFile {
  const GistFile({
    @required this.name,
    @required this.size,
    @required this.rawUrl,
    @required this.type,
    @required this.language,
    @required this.truncated,
    @required this.content,
  });
  final String name;
  final int size;

  @JsonKey(name: 'raw_url')
  final String rawUrl;
  final String type;
  final String language;
  final bool truncated;
  final String content;

  factory GistFile.fromJson(Map<String, dynamic> input) =>
      _$GistFileFromJson(input);
}

/// Model class for a gist fork.
@immutable
@JsonSerializable(createToJson: false)
class GistFork {
  const GistFork(
      {@required this.user,
      @required this.id,
      @required this.createdAt,
      @required this.updatedAt});
  final User user;
  final int id;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  factory GistFork.fromJson(Map<String, dynamic> input) =>
      _$GistForkFromJson(input);
}

/// Model class for a gits history entry.
class GistHistoryEntry {
  String version;

  User user;

  @JsonKey(name: 'change_status/deletions')
  int deletions;

  @JsonKey(name: 'change_status/additions')
  int additions;

  @JsonKey(name: 'change_status/total')
  int totalChanges;

  @JsonKey(name: 'committed_at')
  DateTime committedAt;

  static GistHistoryEntry fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GistHistoryEntry()
      ..version = input['version']
      ..user = User.fromJson(input['user'] as Map<String, dynamic>)
      ..deletions = input['change_status']['deletions']
      ..additions = input['change_status']['additions']
      ..totalChanges = input['change_status']['total']
      ..committedAt = parseDateTime(input['committed_at']);
  }
}

/// Model class for gist comments.
class GistComment {
  int id;
  User user;

  @JsonKey(name: 'created_at')
  DateTime createdAt;

  @JsonKey(name: 'updated_at')
  DateTime updatedAt;

  String body;

  static GistComment fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GistComment()
      ..id = input['id']
      ..user = User.fromJson(input['user'] as Map<String, dynamic>)
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..body = input['body'];
  }
}

/// Model class for a new gist comment to be created.
class CreateGistComment {
  final String body;

  CreateGistComment(this.body);

  String toJSON() {
    final map = <String, dynamic>{'body': body};
    return jsonEncode(map);
  }
}
