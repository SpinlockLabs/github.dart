// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSearchResults _$CodeSearchResultsFromJson(Map<String, dynamic> json) =>
    CodeSearchResults()
      ..totalCount = (json['total_count'] as num?)?.toInt()
      ..incompleteResults = json['incomplete_results'] as bool?
      ..items = CodeSearchItem.fromJsonList(json['items'] as List);

Map<String, dynamic> _$CodeSearchResultsToJson(CodeSearchResults instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };

CodeSearchItem _$CodeSearchItemFromJson(Map<String, dynamic> json) =>
    CodeSearchItem()
      ..name = json['name'] as String?
      ..path = json['path'] as String?
      ..sha = json['sha'] as String?
      ..url = Uri.parse(json['url'] as String)
      ..gitUrl = Uri.parse(json['git_url'] as String)
      ..htmlUrl = Uri.parse(json['html_url'] as String)
      ..repository = json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>);

Map<String, dynamic> _$CodeSearchItemToJson(CodeSearchItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'sha': instance.sha,
      'url': instance.url?.toString(),
      'git_url': instance.gitUrl?.toString(),
      'html_url': instance.htmlUrl?.toString(),
      'repository': instance.repository,
    };
