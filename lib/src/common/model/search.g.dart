// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSearchResults _$CodeSearchResultsFromJson(Map<String, dynamic> json) {
  return CodeSearchResults()
    ..totalCount = json['total_count'] as int
    ..incompleteResults = json['incomplete_results'] as bool
    ..items = CodeSearchItem.fromJsonList(json['items'] as List);
}

CodeSearchItem _$CodeSearchItemFromJson(Map<String, dynamic> json) {
  return CodeSearchItem()
    ..name = json['name'] as String
    ..path = json['path'] as String
    ..sha = json['sha'] as String
    ..url = Uri.parse(json['url'] as String)
    ..gitUrl = Uri.parse(json['git_url'] as String)
    ..htmlUrl = Uri.parse(json['html_url'] as String)
    ..repository = json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>);
}
