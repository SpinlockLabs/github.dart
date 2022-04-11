import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search.g.dart';

abstract class SearchResults<T> {
  int? totalCount;
  bool? incompleteResults;
  List<T>? items;
}

@JsonSerializable()
class CodeSearchResults implements SearchResults<CodeSearchItem> {
  @JsonKey(name: 'total_count')
  @override
  int? totalCount;

  @JsonKey(name: 'incomplete_results')
  @override
  bool? incompleteResults;

  @JsonKey(fromJson: CodeSearchItem.fromJsonList)
  @override
  List<CodeSearchItem>? items;

  static CodeSearchResults fromJson(Map<String, dynamic> input) =>
      _$CodeSearchResultsFromJson(input);
  Map<String, dynamic> toJson() => _$CodeSearchResultsToJson(this);
}

@JsonSerializable()
class CodeSearchItem {
  String? name;
  String? path;
  String? sha;

  @JsonKey(fromJson: Uri.parse)
  Uri? url;

  @JsonKey(name: 'git_url', fromJson: Uri.parse)
  Uri? gitUrl;

  @JsonKey(name: 'html_url', fromJson: Uri.parse)
  Uri? htmlUrl;

  Repository? repository;

  static CodeSearchItem fromJson(Map<String, dynamic> input) {
    return _$CodeSearchItemFromJson(input);
  }

  static List<CodeSearchItem> fromJsonList(List<dynamic> input) {
    final result = <CodeSearchItem>[];
    for (final item in input) {
      if (item is Map<String, dynamic>) {
        result.add(CodeSearchItem.fromJson(item));
      }
    }
    return result;
  }

  Map<String, dynamic> toJson() => _$CodeSearchItemToJson(this);
}

// TODO: Issue Search
// @JsonSerializable()
// class IssueSearchResults extends SearchResults<IssueSearchItem> {}

// @JsonSerializable()
// class IssueSearchItem {}
