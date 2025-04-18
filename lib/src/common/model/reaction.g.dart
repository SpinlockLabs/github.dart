// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) => Reaction(
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ReactionToJson(Reaction instance) => <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'user': instance.user,
      'content': instance.content,
      'created_at': instance.createdAt?.toIso8601String(),
    };

ReactionRollup _$ReactionRollupFromJson(Map<String, dynamic> json) =>
    ReactionRollup(
      plusOne: (json['+1'] as num?)?.toInt(),
      minusOne: (json['-1'] as num?)?.toInt(),
      confused: (json['confused'] as num?)?.toInt(),
      eyes: (json['eyes'] as num?)?.toInt(),
      heart: (json['heart'] as num?)?.toInt(),
      hooray: (json['hooray'] as num?)?.toInt(),
      laugh: (json['laugh'] as num?)?.toInt(),
      rocket: (json['rocket'] as num?)?.toInt(),
      totalCount: (json['total_count'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ReactionRollupToJson(ReactionRollup instance) =>
    <String, dynamic>{
      '+1': instance.plusOne,
      '-1': instance.minusOne,
      'confused': instance.confused,
      'eyes': instance.eyes,
      'heart': instance.heart,
      'hooray': instance.hooray,
      'laugh': instance.laugh,
      'rocket': instance.rocket,
      'total_count': instance.totalCount,
      'url': instance.url,
    };
