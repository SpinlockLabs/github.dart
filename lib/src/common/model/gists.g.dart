// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gist _$GistFromJson(Map<String, dynamic> json) => Gist(
      id: json['id'] as String?,
      description: json['description'] as String?,
      public: json['public'] as bool?,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      files: (json['files'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, GistFile.fromJson(e as Map<String, dynamic>)),
      ),
      htmlUrl: json['html_url'] as String?,
      commentsCount: (json['comments'] as num?)?.toInt(),
      gitPullUrl: json['git_pull_url'] as String?,
      gitPushUrl: json['git_push_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$GistToJson(Gist instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'public': instance.public,
      'owner': instance.owner,
      'user': instance.user,
      'files': instance.files,
      'html_url': instance.htmlUrl,
      'comments': instance.commentsCount,
      'git_pull_url': instance.gitPullUrl,
      'git_push_url': instance.gitPushUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

GistFile _$GistFileFromJson(Map<String, dynamic> json) => GistFile(
      filename: json['filename'] as String?,
      size: (json['size'] as num?)?.toInt(),
      rawUrl: json['raw_url'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      truncated: json['truncated'] as bool?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$GistFileToJson(GistFile instance) => <String, dynamic>{
      'filename': instance.filename,
      'size': instance.size,
      'raw_url': instance.rawUrl,
      'type': instance.type,
      'language': instance.language,
      'truncated': instance.truncated,
      'content': instance.content,
    };

GistFork _$GistForkFromJson(Map<String, dynamic> json) => GistFork(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$GistForkToJson(GistFork instance) => <String, dynamic>{
      'user': instance.user,
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

GistHistoryEntry _$GistHistoryEntryFromJson(Map<String, dynamic> json) =>
    GistHistoryEntry(
      version: json['version'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      deletions: (json['change_status/deletions'] as num?)?.toInt(),
      additions: (json['change_status/additions'] as num?)?.toInt(),
      totalChanges: (json['change_status/total'] as num?)?.toInt(),
      committedAt: json['committed_at'] == null
          ? null
          : DateTime.parse(json['committed_at'] as String),
    );

Map<String, dynamic> _$GistHistoryEntryToJson(GistHistoryEntry instance) =>
    <String, dynamic>{
      'version': instance.version,
      'user': instance.user,
      'change_status/deletions': instance.deletions,
      'change_status/additions': instance.additions,
      'change_status/total': instance.totalChanges,
      'committed_at': instance.committedAt?.toIso8601String(),
    };

GistComment _$GistCommentFromJson(Map<String, dynamic> json) => GistComment(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      body: json['body'] as String?,
    );

Map<String, dynamic> _$GistCommentToJson(GistComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'body': instance.body,
    };

CreateGistComment _$CreateGistCommentFromJson(Map<String, dynamic> json) =>
    CreateGistComment(
      json['body'] as String?,
    );

Map<String, dynamic> _$CreateGistCommentToJson(CreateGistComment instance) =>
    <String, dynamic>{
      'body': instance.body,
    };
