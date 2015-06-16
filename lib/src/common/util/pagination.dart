part of github.common;

/// Internal Helper for dealing with GitHub Pagination.
class PaginationHelper<T> {
  final GitHub github;

  PaginationHelper(this.github);

  Stream<http.Response> fetchStreamed(String method, String path, {int pages,
      bool reverse: false, int start, Map<String, String> headers,
      Map<String, dynamic> params, String body, int statusCode: 200}) {
    if (headers == null) headers = {};
    var controller = new StreamController.broadcast();

    Future<http.Response> actualFetch(String realPath, [bool first = false]) {
      var p = params;

      if (first && start != null) {
        p = new Map.from(params);
        p['page'] = start;
      } else if (!first) {
        p = null;
      }

      return github.request(method, realPath,
          headers: headers, params: p, body: body, statusCode: statusCode);
    }

    var count = 0;

    handleResponse(http.Response response) {
      count++;
      controller.add(response);

      if (!response.headers.containsKey("link")) {
        controller.close();
        return;
      }

      var info = parseLinkHeader(response.headers['link']);

      if (!info.containsKey(reverse ? "prev" : "next")) {
        controller.close();
        return;
      }

      if (pages != null && count == pages) {
        controller.close();
        return;
      }

      var nextUrl = reverse ? info['prev'] : info['next'];

      actualFetch(nextUrl).then(handleResponse);
    }

    actualFetch(path, true).then((response) {
      if (count == 0 && reverse) {
        var info = parseLinkHeader(response.headers['link']);
        if (!info.containsKey("last")) {
          controller.close();
          return;
        }
        actualFetch(info['last'], true);
      } else {
        handleResponse(response);
      }
    }).catchError((e, s) {
      controller.addError(e, s);
      controller.close();
    });

    return controller.stream;
  }

  Stream<T> objects(String method, String path, JSONConverter converter,
      {int pages, bool reverse: false, int start, Map<String, String> headers,
      Map<String, dynamic> params, String body, int statusCode: 200,
      String preview}) {
    if (headers == null) headers = {};
    if (preview != null) {
      headers["Accept"] = preview;
    }
    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");
    return fetchStreamed(method, path,
        pages: pages,
        start: start,
        reverse: reverse,
        headers: headers,
        params: params,
        body: body,
        statusCode: statusCode).expand((response) {
      var json = response.asJSON();
      return (json as List).map(converter).toList(growable: false);
    });
  }
}
