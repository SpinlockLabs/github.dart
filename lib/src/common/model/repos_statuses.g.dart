// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_statuses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CombinedRepositoryStatus _$CombinedRepositoryStatusFromJson(
    Map<String, dynamic> json) {
  return CombinedRepositoryStatus(
    state: json['state'] as String,
    sha: json['sha'] as String,
    totalCount: json['total_count'] as int,
    statuses: (json['statuses'] as List)
        ?.map((e) => e == null
            ? null
            : RepositoryStatus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
      'total_count': instance.totalCount,
      'statuses': instance.statuses,
      'repository': instance.repository,
    };

RepositoryStatus _$RepositoryStatusFromJson(Map<String, dynamic> json) {
  return RepositoryStatus(
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    state: json['state'] as String,
    targetUrl: json['target_url'] as String,
    description: json['description'] as String,
    context: json['context'] as String,
  );
}

Map<String, dynamic> _$RepositoryStatusToJson(RepositoryStatus instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'state': instance.state,
      'target_url': instance.targetUrl,
      'description': instance.description,
      'context': instance.context,
    };

CreateStatus _$CreateStatusFromJson(Map<String, dynamic> json) {
  return CreateStatus(
    json['state'] as String,
    targetUrl: json['target_url'] as String,
    description: json['description'] as String,
    context: json['context'] as String,
  );
}

Map<String, dynamic> _$CreateStatusToJson(CreateStatus instance) =>
    <String, dynamic>{
      'state': instance.state,
      'description': instance.description,
      'context': instance.context,
      'target_url': instance.targetUrl,
    };
