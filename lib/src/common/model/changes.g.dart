// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ref _$RefFromJson(Map<String, dynamic> json) => Ref(
      json['from'] as String?,
    );

Map<String, dynamic> _$RefToJson(Ref instance) => <String, dynamic>{
      'from': instance.from,
    };

Sha _$ShaFromJson(Map<String, dynamic> json) => Sha(
      json['from'] as String?,
    );

Map<String, dynamic> _$ShaToJson(Sha instance) => <String, dynamic>{
      'from': instance.from,
    };

Base _$BaseFromJson(Map<String, dynamic> json) => Base(
      json['ref'] == null
          ? null
          : Ref.fromJson(json['ref'] as Map<String, dynamic>),
      json['sha'] == null
          ? null
          : Sha.fromJson(json['sha'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseToJson(Base instance) => <String, dynamic>{
      'ref': instance.ref,
      'sha': instance.sha,
    };

Body _$BodyFromJson(Map<String, dynamic> json) => Body(
      json['from'] as String?,
    );

Map<String, dynamic> _$BodyToJson(Body instance) => <String, dynamic>{
      'from': instance.from,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      from: json['from'] as String?,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'from': instance.from,
    };

Changes _$ChangesFromJson(Map<String, dynamic> json) => Changes(
      json['base'] == null
          ? null
          : Base.fromJson(json['base'] as Map<String, dynamic>),
      json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
      json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangesToJson(Changes instance) => <String, dynamic>{
      'base': instance.base,
      'body': instance.body,
      'title': instance.title,
    };
