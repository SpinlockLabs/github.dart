// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_statuses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CombinedRepositoryStatus _$CombinedRepositoryStatusFromJson(
    Map<String, dynamic> json) {
  return CombinedRepositoryStatus(
    state: json['state'] as String?,
    sha: json['sha'] as String?,
    totalCount: json['totalCount'] as int?,
    statuses: (json['statuses'] as List<dynamic>?)
        ?.map((e) => RepositoryStatus.fromJson(e as Map<String, dynamic>))
        .toList(),
    repository: json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CombinedRepositoryStatusToJson(
        CombinedRepositoryStatus instance) =>
    <String, dynamic>{
      'state': instance.state,
      'sha': instance.sha,
      'totalCount': instance.totalCount,
      'statuses': instance.statuses,
      'repository': instance.repository,
    };

RepositoryStatus _$RepositoryStatusFromJson(Map<String, dynamic> json) {
  return RepositoryStatus(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    state: json['state'] as String?,
    targetUrl: json['targetUrl'] as String?,
    description: json['description'] as String?,
    context: json['context'] as String?,
  );
}

Map<String, dynamic> _$RepositoryStatusToJson(RepositoryStatus instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'state': instance.state,
      'targetUrl': instance.targetUrl,
      'description': instance.description,
      'context': instance.context,
    };

CreateStatus _$CreateStatusFromJson(Map<String, dynamic> json) {
  return CreateStatus(
    json['state'] as String?,
    targetUrl: json['target_url'] as String?,
    description: json['description'] as String?,
    context: json['context'] as String?,
  );
}

Map<String, dynamic> _$CreateStatusToJson(CreateStatus instance) =>
    <String, dynamic>{
      'state': instance.state,
      'description': instance.description,
      'context': instance.context,
      'target_url': instance.targetUrl,
    };
