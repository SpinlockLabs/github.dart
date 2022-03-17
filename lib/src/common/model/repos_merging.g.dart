// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'repos_merging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMerge _$CreateMergeFromJson(Map<String, dynamic> json) => CreateMerge(
      json['base'] as String?,
      json['head'] as String?,
      commitMessage: json['commit_message'] as String?,
    );

Map<String, dynamic> _$CreateMergeToJson(CreateMerge instance) =>
    <String, dynamic>{
      'base': instance.base,
      'head': instance.head,
      'commit_message': instance.commitMessage,
    };
