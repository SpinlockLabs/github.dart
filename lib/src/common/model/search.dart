part of github.common;

class SearchResults<T> {
  @JsonKey(name: "total_count")
  int totalCount;

  @JsonKey(name: "incomplete_results")
  bool incompleteResults;

  List<T> items = <T>[];

  static SearchResults fromJSON(
      Map<String, dynamic> input, JSONConverter resultConverter) {
    var results = new SearchResults();
    results
      ..totalCount = input['total_count']
      ..incompleteResults = input['incomplete_results'];

    var itemList = input['items'];

    results.items = [];

    for (var item in itemList) {
      results.items.add(resultConverter(item));
    }

    return results;
  }
}
