// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    git: json['git'] == null ? null : Uri.parse(json['git'] as String),
    self: json['self'] == null ? null : Uri.parse(json['self'] as String),
    html: json['html'] == null ? null : Uri.parse(json['html'] as String),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self?.toString(),
      'git': instance.git?.toString(),
      'html': instance.html?.toString(),
    };
