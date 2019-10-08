import "dart:async";
import "dart:convert" show jsonDecode;

import "package:http/http.dart" as http;

import '../../common.dart';

/// Internal Helper for dealing with GitHub Pagination.
class PaginationHelper {
  final GitHub github;

  PaginationHelper(this.github);

  Stream<http.Response> fetchStreamed(String method, String path,
      {int pages,
      Map<String, String> headers,
      Map<String, dynamic> params,
      String body,
      int statusCode = 200}) async* {
    int count = 0;
    const Duration serverErrorBackOff = Duration(seconds: 10);
    const int maxServerErrors = 10;
    int serverErrors = 0;

    if (params == null) {
      params = {};
    } else {
      params = Map.from(params);
    }
    assert(!params.containsKey('page'));

    do {
      http.Response response;
      try {
        response = await github.request(method, path,
            headers: headers,
            params: params,
            body: body,
            statusCode: statusCode);
      } on ServerError {
        serverErrors += 1;
        if (serverErrors >= maxServerErrors) {
          break;
        }
        await Future.delayed(serverErrorBackOff);
        continue;
      }

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

  Stream<T> jsonObjects<T>(String method, String path,
      {int pages,
      Map<String, String> headers,
      Map<String, dynamic> params,
      String body,
      int statusCode = 200,
      String preview}) async* {
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
      var json = jsonDecode(response.body) as List;

      for (var item in json) {
        yield item as T;
      }
    }
  }

  Stream<T> objects<S, T>(
      String method, String path, JSONConverter<S, T> converter,
      {int pages,
      Map<String, String> headers,
      Map<String, dynamic> params,
      String body,
      int statusCode = 200,
      String preview}) {
    return jsonObjects<S>(method, path,
            pages: pages,
            headers: headers,
            params: params,
            body: body,
            statusCode: statusCode,
            preview: preview)
        .map(converter);
  }
}

//TODO(kevmoo): use regex here.
Map<String, String> parseLinkHeader(String input) {
  var out = <String, String>{};
  var parts = input.split(", ");
  for (var part in parts) {
    if (part[0] != "<") {
      throw FormatException("Invalid Link Header");
    }
    var kv = part.split("; ");
    var url = kv[0].substring(1);
    url = url.substring(0, url.length - 1);
    var key = kv[1];
    key = key.replaceAll('"', "").substring(4);
    out[key] = url;
  }
  return out;
}
