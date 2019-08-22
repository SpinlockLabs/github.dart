part of github.common;

abstract class SearchResults<T> {
  int totalCount;
  bool incompleteResults;
  List<T> items;
}

@JsonSerializable(createToJson: false)
class CodeSearchResults implements SearchResults<CodeSearchItem> {
  @JsonKey(name: "total_count")
  int totalCount;

  @JsonKey(name: "incomplete_results")
  bool incompleteResults;

  @JsonKey(fromJson: CodeSearchItem.fromJsonList)
  List<CodeSearchItem> items;

  static CodeSearchResults fromJson(Map<String, dynamic> input) =>
      _$CodeSearchResultsFromJson(input);
}

@JsonSerializable(createToJson: false)
class CodeSearchItem {
  @JsonKey()
  String name;

  @JsonKey()
  String path;

  @JsonKey()
  String sha;

  @JsonKey(fromJson: Uri.parse)
  Uri url;

  @JsonKey(name: 'git_url', fromJson: Uri.parse)
  Uri gitUrl;

  @JsonKey(name: 'html_url', fromJson: Uri.parse)
  Uri htmlUrl;

  @JsonKey(fromJson: Repository.fromJSON)
  Repository repository;

  static CodeSearchItem fromJson(Map<String, dynamic> input) {
    return _$CodeSearchItemFromJson(input);
  }

  static List<CodeSearchItem> fromJsonList(List<dynamic> input) {
    var result = <CodeSearchItem>[];
    for (var item in input) {
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
