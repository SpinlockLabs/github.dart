import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search.g.dart';

abstract class SearchResults<T> {
  int totalCount;
  bool incompleteResults;
  List<T> items;
}

@JsonSerializable(createToJson: false)
class CodeSearchResults implements SearchResults<CodeSearchItem> {
  @JsonKey(name: 'total_count')
  @override
  int totalCount;

  @JsonKey(name: 'incomplete_results')
  @override
  bool incompleteResults;

  @JsonKey(fromJson: CodeSearchItem.fromJsonList)
  @override
  List<CodeSearchItem> items;

  static CodeSearchResults fromJson(Map<String, dynamic> input) =>
      _$CodeSearchResultsFromJson(input);
}

@JsonSerializable(createToJson: false)
class CodeSearchItem {
  String name;
  String path;
  String sha;

  @JsonKey(fromJson: Uri.parse)
  Uri url;

  @JsonKey(name: 'git_url', fromJson: Uri.parse)
  Uri gitUrl;

  @JsonKey(name: 'html_url', fromJson: Uri.parse)
  Uri htmlUrl;

  Repository repository;

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
}

// TODO: Issue Search
// @JsonSerializable(createToJson: false)
// class IssueSearchResults extends SearchResults<IssueSearchItem> {}

// @JsonSerializable(createToJson: false)
// class IssueSearchItem {}
