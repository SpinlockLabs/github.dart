part of github.common;

/// The [SearchService] handles communication with search related methods of
/// the GitHub API.
///
/// API docs: https://developer.github.com/v3/search/
class SearchService extends Service {
  SearchService(GitHub github) : super(github);

  /// Search for repositories using [query].
  /// Since the Search Rate Limit is small, this is a best effort implementation.
  ///
  /// API docs: https://developer.github.com/v3/search/#search-repositories
  Stream<Repository> repositories(String query, {String sort, int pages: 2}) {
    var params = {"q": query};
    if (sort != null) {
      params["sort"] = sort;
    }

    var controller = new StreamController<Repository>();

    var isFirst = true;

    new PaginationHelper(_github)
        .fetchStreamed("GET", "/search/repositories",
            params: params, pages: pages)
        .listen((response) {
      if (response.statusCode == 403 &&
          response.body.contains("rate limit") &&
          isFirst) {
        throw new RateLimitHit(_github);
      }

      isFirst = false;

      var input = jsonDecode(response.body);

      if (input['items'] == null) {
        return;
      }

      var items = input['items'] as List;

      items.map((item) => Repository.fromJSON(item)).forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }

  /// Search through code for a given [query]
  /// You can include any github qualifiers in the query directly
  /// or you can set some of the optional params to set the qualifiers
  /// For example, these do the same thing:
  /// code('awesome language:dart') and
  /// code('awesome', language: 'dart')
  ///
  /// https://developer.github.com/v3/search/#search-code
  Future<CodeSearchResults> code(String query,
      {String language,
      String filename,
      String extension,
      String user,
      String org,
      String repo,
      String fork,
      String path,
      String size,
      bool inFile: true,
      bool inPath: false,
      int pages: 2,
      int perPage: 30}) async {
    // Add qualifiers to the query
    // Known Issue: If a query already has a qualifier and the same
    // qualifier parameter is passed in, it will be duplicated.
    // Example: code('example repo:ex', repo: 'ex') will result in
    // a query of "example repo:ex repo:ex"
    query += _searchQualifier('language', language);
    query += _searchQualifier('filename', filename);
    query += _searchQualifier('extension', extension);
    query += _searchQualifier('user', user);
    query += _searchQualifier('org', org);
    query += _searchQualifier('repo', repo);
    query += _searchQualifier('fork', fork);
    query += _searchQualifier('path', path);
    query += _searchQualifier('size', size);

    // build up the in: qualifier based on the 2 booleans
    String _in = '';
    if (inFile) {
      _in = 'file';
    }
    if (inPath) {
      if (_in.isEmpty) {
        _in = 'path';
      } else {
        _in = 'file,path';
      }
    }
    if (_in.isNotEmpty) {
      query += ' in:$_in';
    }
    var params = <String, dynamic>{};
    params['q'] = query;
    params['per_page'] = perPage?.toString();

    var results = <CodeSearchResults>[];
    Completer<CodeSearchResults> c = new Completer<CodeSearchResults>();

    Stream<http.Response> responseStream = new PaginationHelper(_github)
        .fetchStreamed("GET", "/search/code", params: params, pages: pages);

    responseStream.handleError((err) {
      if (err != null && err.toString().contains('rate limit exceeded')) {
        throw new RateLimitHit(_github);
      }
    });

    responseStream.listen((response) {
      var input = json.decode(response.body);
      if (input['items'] == null) {
        return;
      }
      results.add(CodeSearchResults.fromJson(input));
    }).onDone(() {
      // Once we're done, combine all of the items from each page response
      // into the first CodeSearchResults and complete with the combined results
      if (results.length > 1) {
        for (int i = 1; i < results.length; i++) {
          results[0].items.addAll(results[i].items);
        }
      }
      c.complete(results.first);
    });

    return c.future;
  }

  String _searchQualifier(String key, String value) {
    if (value != null && value.isNotEmpty) {
      return ' $key:$value';
    }
    return '';
  }
  // TODO: Implement issues: https://developer.github.com/v3/search/#search-issues

  /// Search for users using [query].
  /// Since the Search Rate Limit is small, this is a best effort implementation.
  ///
  /// API docs: https://developer.github.com/v3/search/#search-users
  Stream<User> users(String query,
      {String sort, int pages: 2, int perPage: 30}) {
    var params = {"q": query};

    if (sort != null) {
      params["sort"] = sort;
    }

    params["per_page"] = perPage.toString();

    var controller = new StreamController<User>();

    var isFirst = true;

    new PaginationHelper(_github)
        .fetchStreamed("GET", "/search/users", params: params, pages: pages)
        .listen((response) {
      if (response.statusCode == 403 &&
          response.body.contains("rate limit") &&
          isFirst) {
        throw new RateLimitHit(_github);
      }

      isFirst = false;

      var input = jsonDecode(response.body);

      if (input['items'] == null) {
        return;
      }

      var items = input['items'] as List;

      items.map((item) => User.fromJson(item)).forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }
}
