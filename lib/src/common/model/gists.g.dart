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
