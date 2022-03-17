// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

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
      json['limit'] as int?,
      json['remaining'] as int?,
      json['resets'] == null ? null : DateTime.parse(json['resets'] as String),
    );

Map<String, dynamic> _$RateLimitToJson(RateLimit instance) => <String, dynamic>{
      'limit': instance.limit,
      'remaining': instance.remaining,
      'resets': instance.resets?.toIso8601String(),
    };

APIStatus _$APIStatusFromJson(Map<String, dynamic> json) => APIStatus(
      status: json['status'] as String?,
      lastUpdatedAt: json['last_updated'] == null
          ? null
          : DateTime.parse(json['last_updated'] as String),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      message: json['body'] as String?,
    );

Map<String, dynamic> _$APIStatusToJson(APIStatus instance) => <String, dynamic>{
      'status': instance.status,
      'last_updated': instance.lastUpdatedAt?.toIso8601String(),
      'created_on': instance.createdOn?.toIso8601String(),
      'body': instance.message,
    };
