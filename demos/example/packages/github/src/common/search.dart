part of github.common;

class SearchResults<T> {
  final GitHub github;
  @ApiName("total_count")
  int totalCount;
  
  @ApiName("incomplete_results")
  bool incompleteResults;
  
  List<T> items;
  
  SearchResults(this.github);
  
  static SearchResults fromJSON(GitHub github, input, JSONConverter resultConverter) {
    var results = new SearchResults(github);
    results
      ..totalCount = input['total_count']
      ..incompleteResults = input['incomplete_results'];
    
    var itemz = input['items'];
    
    results.items = [];
    
    for (var item in itemz) {
      results.items.add(resultConverter(github, item));
    }
    
    return results;
  }
}

abstract class SearchResult {
  int score;
}

class RepositorySearchResult extends Repository with SearchResult {
  RepositorySearchResult(GitHub github) : super(github);
  
  static RepositorySearchResult fromJSON(GitHub github, input) {
    var result = new RepositorySearchResult(github);
    Repository.fromJSON(github, input, result);
    result.score = input['score'];
    return result;
  }
}