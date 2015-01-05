part of github.common;

class SearchResults<T> {
  @ApiName("total_count")
  int totalCount;

  @ApiName("incomplete_results")
  bool incompleteResults;

  List<T> items;

  static SearchResults fromJSON(input, JSONConverter resultConverter) {
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

abstract class SearchResult {
  int score;
}

class RepositorySearchResult extends Repository with SearchResult {
  static RepositorySearchResult fromJSON(input) {
    var result = new RepositorySearchResult();
    Repository.fromJSON(input, result);
    result.score = input['score'];
    return result;
  }
}
