part of github.common;

/// Internal Helper for dealing with GitHub Pagination.
class PaginationHelper<T> {
  final GitHub github;

  PaginationHelper(this.github);

  Stream<http.Response> fetchStreamed(String method, String path, {int pages,
      Map<String, String> headers, Map<String, dynamic> params, String body,
      int statusCode: 200}) async* {
    int count = 0;

    if (params == null) {
      params = {};
    } else {
      params = new Map.from(params);
    }
    assert(!params.containsKey('page'));

    do {
      var response = await github.request(method, path,
          headers: headers, params: params, body: body, statusCode: statusCode);

      yield response;

      count++;

      if (pages != null && count >= pages) {
        break;
      }

      var link = response.headers['link'];

      if (link == null) {
        break;
      }

      var info = parseLinkHeader(link);
      if (info == null) {
        break;
      }

      var next = info['next'];

      if (next == null) {
        break;
      }

      var nextUrl = Uri.parse(next);
      var nextPageArg = nextUrl.queryParameters['page'];
      assert(nextPageArg != null);
      params['page'] = nextPageArg;
    } while (true);
  }

  Stream<T> objects(String method, String path, JSONConverter converter,
      {int pages, Map<String, String> headers, Map<String, dynamic> params,
      String body, int statusCode: 200, String preview}) async* {
    if (headers == null) headers = {};
    if (preview != null) {
      headers["Accept"] = preview;
    }
    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    await for (var response in fetchStreamed(method, path,
        pages: pages,
        headers: headers,
        params: params,
        body: body,
        statusCode: statusCode)) {
      var json = response.asJSON();

      for (var item in (json as List).map(converter)) {
        yield item;
      }
    }
  }
}
