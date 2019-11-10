// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitignoreTemplate _$GitignoreTemplateFromJson(Map<String, dynamic> json) {
  return GitignoreTemplate(
    name: json['name'] as String,
    source: json['source'] as String,
  );
}

RateLimit _$RateLimitFromJson(Map<String, dynamic> json) {
  return RateLimit(
    json['limit'] as int,
    json['remaining'] as int,
    json['resets'] == null ? null : DateTime.parse(json['resets'] as String),
  );
}

Map<String, dynamic> _$RateLimitToJson(RateLimit instance) => <String, dynamic>{
      'limit': instance.limit,
      'remaining': instance.remaining,
      'resets': instance.resets?.toIso8601String(),
    };

APIStatus _$APIStatusFromJson(Map<String, dynamic> json) {
  return APIStatus(
    status: json['status'] as String,
    lastUpdatedAt: json['last_updated'] == null
        ? null
        : DateTime.parse(json['last_updated'] as String),
    createdOn: json['created_on'] == null
        ? null
        : DateTime.parse(json['created_on'] as String),
    message: json['body'] as String,
  );
}

Map<String, dynamic> _$APIStatusToJson(APIStatus instance) => <String, dynamic>{
      'status': instance.status,
      'last_updated': instance.lastUpdatedAt?.toIso8601String(),
      'created_on': instance.createdOn?.toIso8601String(),
      'body': instance.message,
    };
