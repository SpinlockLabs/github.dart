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

      var input = JSON.decode(response.body);

      if (input['items'] == null) {
        return;
      }

      List<dynamic> items = input['items'];

      items
          .map((Map<String, dynamic> item) => Repository.fromJSON(item))
          .forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }

  Stream code(String query, {String language, String filename, String user,
    int pages: 2, int perPage: 30}) {

    var params = {"q": query};

    if (language != null) {
      params['language'] = language;
    }

    if (filename != null) {
      params['filename'] = filename;
    }

    if (user != null) {
      params['user'] = user;
    }

    params["per_page"] = perPage;

    var controller = new StreamController();

    var isFirst = true;

    new PaginationHelper(_github)
        .fetchStreamed("GET", "/search/code", params: params, pages: pages)
        .listen((response) {
      if (response.statusCode == 403 &&
          response.body.contains("rate limit") &&
          isFirst) {
        throw new RateLimitHit(_github);
      }

      isFirst = false;

      var input = JSON.decode(response.body);

      if (input['items'] == null) {
        return;
      }

      List<dynamic> items = input['items'];

      items.forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }

  // TODO: Implement code: https://developer.github.com/v3/search/#search-code
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

      var input = JSON.decode(response.body);

      if (input['items'] == null) {
        return;
      }

      List<dynamic> items = input['items'];

      items
          .map((Map<String, dynamic> item) => User.fromJSON(item))
          .forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }
}
