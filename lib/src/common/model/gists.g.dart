// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gist _$GistFromJson(Map<String, dynamic> json) {
  return Gist(
    id: json['id'] as String,
    description: json['description'] as String,
    public: json['public'] as bool,
    owner: json['owner'] == null
        ? null
        : User.fromJson(json['owner'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    files: (json['files'] as List)
        ?.map((e) =>
            e == null ? null : GistFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    htmlUrl: json['html_url'] as String,
    commentsCount: json['comments'] as int,
    gitPullUrl: json['git_pull_url'] as String,
    gitPushUrl: json['git_push_url'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

GistFile _$GistFileFromJson(Map<String, dynamic> json) {
  return GistFile(
    name: json['name'] as String,
    size: json['size'] as int,
    rawUrl: json['raw_url'] as String,
    type: json['type'] as String,
    language: json['language'] as String,
    truncated: json['truncated'] as bool,
    content: json['content'] as String,
  );
}

GistFork _$GistForkFromJson(Map<String, dynamic> json) {
  return GistFork(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    id: json['id'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

GistHistoryEntry _$GistHistoryEntryFromJson(Map<String, dynamic> json) {
  return GistHistoryEntry(
    version: json['version'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    deletions: json['change_status/deletions'] as int,
    additions: json['change_status/additions'] as int,
    totalChanges: json['change_status/total'] as int,
    committedAt: json['committed_at'] == null
        ? null
        : DateTime.parse(json['committed_at'] as String),
  );
}

GistComment _$GistCommentFromJson(Map<String, dynamic> json) {
  return GistComment(
    id: json['id'] as int,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$GistCommentToJson(GistComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'body': instance.body,
    };

CreateGistComment _$CreateGistCommentFromJson(Map<String, dynamic> json) {
  return CreateGistComment(
    json['body'] as String,
  );
}

Map<String, dynamic> _$CreateGistCommentToJson(CreateGistComment instance) =>
    <String, dynamic>{
      'body': instance.body,
    };
