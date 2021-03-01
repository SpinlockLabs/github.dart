// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_pages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryPages _$RepositoryPagesFromJson(Map<String, dynamic> json) {
  return RepositoryPages(
    cname: json['cname'] as String?,
    status: json['status'] as String?,
    hasCustom404: json['custom_404'] as bool?,
  );
}

Map<String, dynamic> _$RepositoryPagesToJson(RepositoryPages instance) =>
    <String, dynamic>{
      'cname': instance.cname,
      'status': instance.status,
      'custom_404': instance.hasCustom404,
    };

PageBuild _$PageBuildFromJson(Map<String, dynamic> json) {
  return PageBuild(
    url: json['url'] as String?,
    status: json['status'] as String?,
    error: json['error'] == null
        ? null
        : PageBuildError.fromJson(json['error'] as Map<String, dynamic>),
    pusher: json['pusher'] == null
        ? null
        : PageBuildPusher.fromJson(json['pusher'] as Map<String, dynamic>),
    commit: json['commit'] as String?,
    duration: json['duration'] as int?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$PageBuildToJson(PageBuild instance) => <String, dynamic>{
      'url': instance.url,
      'status': instance.status,
      'error': instance.error,
      'pusher': instance.pusher,
      'commit': instance.commit,
      'duration': instance.duration,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

PageBuildPusher _$PageBuildPusherFromJson(Map<String, dynamic> json) {
  return PageBuildPusher(
    login: json['login'] as String?,
    id: json['id'] as int?,
    apiUrl: json['url'] as String?,
    htmlUrl: json['htmlUrl'] as String?,
    type: json['type'] as String?,
    siteAdmin: json['siteAdmin'] as bool?,
  );
}

Map<String, dynamic> _$PageBuildPusherToJson(PageBuildPusher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'url': instance.apiUrl,
      'htmlUrl': instance.htmlUrl,
      'type': instance.type,
      'siteAdmin': instance.siteAdmin,
    };

PageBuildError _$PageBuildErrorFromJson(Map<String, dynamic> json) {
  return PageBuildError(
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$PageBuildErrorToJson(PageBuildError instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
