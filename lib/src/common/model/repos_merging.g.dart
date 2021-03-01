// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_merging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMerge _$CreateMergeFromJson(Map<String, dynamic> json) {
  return CreateMerge(
    json['base'] as String?,
    json['head'] as String?,
    commitMessage: json['commitMessage'] as String?,
  );
}

Map<String, dynamic> _$CreateMergeToJson(CreateMerge instance) =>
    <String, dynamic>{
      'base': instance.base,
      'head': instance.head,
      'commitMessage': instance.commitMessage,
    };
