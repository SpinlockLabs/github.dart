// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Release _$ReleaseFromJson(Map<String, dynamic> json) {
  return Release(
    id: json['id'] as int?,
    url: json['url'] as String?,
    htmlUrl: json['htmlUrl'] as String?,
    tarballUrl: json['tarballUrl'] as String?,
    uploadUrl: json['uploadUrl'] as String?,
    nodeId: json['nodeId'] as String?,
    tagName: json['tagName'] as String?,
    targetCommitish: json['targetCommitish'] as String?,
    name: json['name'] as String?,
    body: json['body'] as String?,
    description: json['description'] as String?,
    isDraft: json['draft'] as bool?,
    isPrerelease: json['prerelease'] as bool?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    publishedAt: json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String),
    author: json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    assets: (json['assets'] as List<dynamic>?)
        ?.map((e) => ReleaseAsset.fromJson(e as Map<String, dynamic>))
        .toList(),
  )
    ..zipballUrl = json['zipballUrl'] as String?
    ..assetsUrl = json['assetsUrl'] as String?
    ..errors = json['errors'] as List<dynamic>?;
}

Map<String, dynamic> _$ReleaseToJson(Release instance) => <String, dynamic>{
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'tarballUrl': instance.tarballUrl,
      'zipballUrl': instance.zipballUrl,
      'uploadUrl': instance.uploadUrl,
      'assetsUrl': instance.assetsUrl,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'tagName': instance.tagName,
      'targetCommitish': instance.targetCommitish,
      'name': instance.name,
      'body': instance.body,
      'description': instance.description,
      'draft': instance.isDraft,
      'prerelease': instance.isPrerelease,
      'createdAt': instance.createdAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'author': instance.author,
      'assets': instance.assets,
      'errors': instance.errors,
    };

ReleaseAsset _$ReleaseAssetFromJson(Map<String, dynamic> json) {
  return ReleaseAsset(
    id: json['id'] as int?,
    name: json['name'] as String?,
    label: json['label'] as String?,
    state: json['state'] as String?,
    contentType: json['contentType'] as String?,
    size: json['size'] as int?,
    downloadCount: json['downloadCount'] as int?,
    browserDownloadUrl: json['browserDownloadUrl'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$ReleaseAssetToJson(ReleaseAsset instance) =>
    <String, dynamic>{
      'browserDownloadUrl': instance.browserDownloadUrl,
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'state': instance.state,
      'contentType': instance.contentType,
      'size': instance.size,
      'downloadCount': instance.downloadCount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

CreateRelease _$CreateReleaseFromJson(Map<String, dynamic> json) {
  return CreateRelease(
    json['tagName'] as String?,
  )
    ..targetCommitish = json['targetCommitish'] as String?
    ..name = json['name'] as String?
    ..body = json['body'] as String?
    ..isDraft = json['draft'] as bool?
    ..isPrerelease = json['prerelease'] as bool?;
}

Map<String, dynamic> _$CreateReleaseToJson(CreateRelease instance) =>
    <String, dynamic>{
      'tagName': instance.tagName,
      'targetCommitish': instance.targetCommitish,
      'name': instance.name,
      'body': instance.body,
      'draft': instance.isDraft,
      'prerelease': instance.isPrerelease,
    };
