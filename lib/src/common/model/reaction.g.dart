// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) => Reaction(
      id: json['id'] as int?,
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
      plusOne: json['+1'] as int?,
      minusOne: json['-1'] as int?,
      confused: json['confused'] as int?,
      eyes: json['eyes'] as int?,
      heart: json['heart'] as int?,
      hooray: json['hooray'] as int?,
      laugh: json['laugh'] as int?,
      rocket: json['rocket'] as int?,
      totalCount: json['total_count'] as int?,
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
