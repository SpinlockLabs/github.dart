// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Release _$ReleaseFromJson(Map<String, dynamic> json) => Release(
      id: json['id'] as int?,
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
      tarballUrl: json['tarball_url'] as String?,
      uploadUrl: json['upload_url'] as String?,
      nodeId: json['node_id'] as String?,
      tagName: json['tag_name'] as String?,
      targetCommitish: json['target_commitish'] as String?,
      name: json['name'] as String?,
      body: json['body'] as String?,
      description: json['description'] as String?,
      isDraft: json['draft'] as bool?,
      isPrerelease: json['prerelease'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => ReleaseAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..zipballUrl = json['zipball_url'] as String?
      ..assetsUrl = json['assets_url'] as String?
      ..errors = json['errors'] as List<dynamic>?;

Map<String, dynamic> _$ReleaseToJson(Release instance) => <String, dynamic>{
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'tarball_url': instance.tarballUrl,
      'zipball_url': instance.zipballUrl,
      'upload_url': instance.uploadUrl,
      'assets_url': instance.assetsUrl,
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
      'errors': instance.errors,
    };

ReleaseAsset _$ReleaseAssetFromJson(Map<String, dynamic> json) => ReleaseAsset(
      id: json['id'] as int?,
      name: json['name'] as String?,
      label: json['label'] as String?,
      state: json['state'] as String?,
      contentType: json['content_type'] as String?,
      size: json['size'] as int?,
      downloadCount: json['download_count'] as int?,
      browserDownloadUrl: json['browser_download_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

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

CreateRelease _$CreateReleaseFromJson(Map<String, dynamic> json) =>
    CreateRelease(
      json['tag_name'] as String?,
    )
      ..targetCommitish = json['target_commitish'] as String?
      ..name = json['name'] as String?
      ..body = json['body'] as String?
      ..isDraft = json['draft'] as bool?
      ..isPrerelease = json['prerelease'] as bool?
      ..discussionCategoryName = json['discussion_category_name'] as String?
      ..generateReleaseNotes = json['generate_release_notes'] as bool? ?? false;

Map<String, dynamic> _$CreateReleaseToJson(CreateRelease instance) =>
    <String, dynamic>{
      'tag_name': instance.tagName,
      'target_commitish': instance.targetCommitish,
      'name': instance.name,
      'body': instance.body,
      'draft': instance.isDraft,
      'prerelease': instance.isPrerelease,
      'discussion_category_name': instance.discussionCategoryName,
      'generate_release_notes': instance.generateReleaseNotes,
    };

ReleaseNotes _$ReleaseNotesFromJson(Map<String, dynamic> json) => ReleaseNotes(
      json['name'] as String,
      json['body'] as String,
    );

Map<String, dynamic> _$ReleaseNotesToJson(ReleaseNotes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'body': instance.body,
    };

CreateReleaseNotes _$CreateReleaseNotesFromJson(Map<String, dynamic> json) =>
    CreateReleaseNotes(
      json['owner'] as String,
      json['repo'] as String,
      json['tag_name'] as String,
      targetCommitish: json['target_commitish'] as String?,
      previousTagName: json['previous_tag_name'] as String?,
      configurationFilePath: json['configuration_file_path'] as String?,
    );

Map<String, dynamic> _$CreateReleaseNotesToJson(CreateReleaseNotes instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'repo': instance.repo,
      'tag_name': instance.tagName,
      'target_commitish': instance.targetCommitish,
      'previous_tag_name': instance.previousTagName,
      'configuration_file_path': instance.configurationFilePath,
    };
