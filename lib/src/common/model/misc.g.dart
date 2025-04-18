// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitignoreTemplate _$GitignoreTemplateFromJson(Map<String, dynamic> json) =>
    GitignoreTemplate(
      name: json['name'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$GitignoreTemplateToJson(GitignoreTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
    };

RateLimit _$RateLimitFromJson(Map<String, dynamic> json) => RateLimit(
      (json['limit'] as num?)?.toInt(),
      (json['remaining'] as num?)?.toInt(),
      json['resets'] == null ? null : DateTime.parse(json['resets'] as String),
    );

Map<String, dynamic> _$RateLimitToJson(RateLimit instance) => <String, dynamic>{
      'limit': instance.limit,
      'remaining': instance.remaining,
      'resets': instance.resets?.toIso8601String(),
    };

APIStatus _$APIStatusFromJson(Map<String, dynamic> json) => APIStatus(
      page: json['page'] == null
          ? null
          : APIStatusPage.fromJson(json['page'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : APIStatusMessage.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APIStatusToJson(APIStatus instance) => <String, dynamic>{
      'page': instance.page,
      'status': instance.status,
    };

APIStatusPage _$APIStatusPageFromJson(Map<String, dynamic> json) =>
    APIStatusPage(
      id: json['id'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$APIStatusPageToJson(APIStatusPage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

APIStatusMessage _$APIStatusMessageFromJson(Map<String, dynamic> json) =>
    APIStatusMessage(
      description: json['description'] as String?,
      indicator: json['indicator'] as String?,
    );

Map<String, dynamic> _$APIStatusMessageToJson(APIStatusMessage instance) =>
    <String, dynamic>{
      'description': instance.description,
      'indicator': instance.indicator,
    };
