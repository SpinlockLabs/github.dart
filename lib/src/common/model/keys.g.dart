// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicKey _$PublicKeyFromJson(Map<String, dynamic> json) => PublicKey(
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PublicKeyToJson(PublicKey instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'title': instance.title,
    };

CreatePublicKey _$CreatePublicKeyFromJson(Map<String, dynamic> json) =>
    CreatePublicKey(
      json['title'] as String?,
      json['key'] as String?,
    );

Map<String, dynamic> _$CreatePublicKeyToJson(CreatePublicKey instance) =>
    <String, dynamic>{
      'title': instance.title,
      'key': instance.key,
    };
