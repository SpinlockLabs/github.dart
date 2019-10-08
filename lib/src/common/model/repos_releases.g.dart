// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Release _$ReleaseFromJson(Map<String, dynamic> json) {
  return Release()
    ..htmlUrl = json['html_url'] as String
    ..tarballUrl = json['tarball_url'] as String
    ..zipballUrl = json['zipball_url'] as String
    ..uploadUrl = json['upload_url'] as String
    ..id = json['id'] as int
    ..nodeId = json['node_id'] as String
    ..tagName = json['tag_name'] as String
    ..targetCommitish = json['target_commitish'] as String
    ..name = json['name'] as String
    ..body = json['body'] as String
    ..description = json['description'] as String
    ..isDraft = json['draft'] as bool
    ..isPrerelease = json['prerelease'] as bool
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..publishedAt = json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String)
    ..author = json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>)
    ..assets = (json['assets'] as List)
        ?.map((e) =>
            e == null ? null : ReleaseAsset.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReleaseToJson(Release instance) => <String, dynamic>{
      'html_url': instance.htmlUrl,
      'tarball_url': instance.tarballUrl,
      'zipball_url': instance.zipballUrl,
      'upload_url': instance.uploadUrl,
      'id': instance.id,
      'node_id': instance.nodeId,
      'tag_name': instance.tagName,
      'target_commitish': instance.targetCommitish,
      'name': instance.name,
      'body': instance.body,
      'description': instance.description,
      'draft': instance.isDraft,
      'prerelease': instance.isPrerelease,
      'created_at': instance.createdAt?.toIso8601String(),
      'published_at': instance.publishedAt?.toIso8601String(),
      'author': instance.author,
      'assets': instance.assets,
    };

ReleaseAsset _$ReleaseAssetFromJson(Map<String, dynamic> json) {
  return ReleaseAsset()
    ..browserDownloadUrl = json['browser_download_url'] as String
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..label = json['label'] as String
    ..state = json['state'] as String
    ..contentType = json['content_type'] as String
    ..size = json['size'] as int
    ..downloadCount = json['download_count'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
}

Map<String, dynamic> _$ReleaseAssetToJson(ReleaseAsset instance) =>
    <String, dynamic>{
      'browser_download_url': instance.browserDownloadUrl,
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'state': instance.state,
      'content_type': instance.contentType,
      'size': instance.size,
      'download_count': instance.downloadCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CreateRelease _$CreateReleaseFromJson(Map<String, dynamic> json) {
  return CreateRelease(
    json['tag_name'] as String,
  )
    ..json = json['json'] as Map<String, dynamic>
    ..targetCommitish = json['target_commitish'] as String
    ..name = json['name'] as String
    ..body = json['body'] as String
    ..isDraft = json['isDraft'] as bool
    ..isPrerelease = json['isPrerelease'] as bool;
}

Map<String, dynamic> _$CreateReleaseToJson(CreateRelease instance) =>
    <String, dynamic>{
      'json': instance.json,
      'tag_name': instance.tagName,
      'target_commitish': instance.targetCommitish,
      'name': instance.name,
      'body': instance.body,
      'isDraft': instance.isDraft,
      'isPrerelease': instance.isPrerelease,
    };
