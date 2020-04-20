import 'dart:async';
import 'dart:convert' show jsonDecode;

import 'package:http/http.dart' as http;

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
    var count = 0;
    const serverErrorBackOff = Duration(seconds: 10);
    const maxServerErrors = 10;
    var serverErrors = 0;

    if (params == null) {
      params = {};
    } else {
      params = Map.from(params);
    }
    assert(!params.containsKey('page'));

    // ignore: literal_only_boolean_expressions
    while (true) {
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

      final link = response.headers['link'];

      if (link == null) {
        break;
      }

      final info = parseLinkHeader(link);
      if (info == null) {
        break;
      }

      final next = info['next'];

      if (next == null) {
        break;
      }

      final nextUrl = Uri.parse(next);
      final nextPageArg = nextUrl.queryParameters['page'];
      assert(nextPageArg != null);
      params['page'] = nextPageArg;
    }
  }

  Stream<T> jsonObjects<T>(
    String method,
    String path, {
    int pages,
    Map<String, String> headers,
    Map<String, dynamic> params,
    String body,
    int statusCode = 200,
    String preview,
    String arrayKey,
  }) async* {
    headers ??= {};
    if (preview != null) {
      headers['Accept'] = preview;
    }
    headers.putIfAbsent('Accept', () => v3ApiMimeType);

    await for (final response in fetchStreamed(
      method,
      path,
      pages: pages,
      headers: headers,
      params: params,
      body: body,
      statusCode: statusCode,
    )) {
      final json = arrayKey == null
          ? jsonDecode(response.body) as List
          : (jsonDecode(response.body) as Map)[arrayKey];

      for (final item in json) {
        yield item as T;
      }
    }
  }

  /// If the response body is a JSONObject (and not a JSONArray),
  /// use [arrayKey] to specify the key under which the array is stored.
  Stream<T> objects<S, T>(
    String method,
    String path,
    JSONConverter<S, T> converter, {
    int pages,
    Map<String, String> headers,
    Map<String, dynamic> params,
    String body,
    int statusCode = 200,
    String preview,
    String arrayKey,
  }) {
    return jsonObjects<S>(
      method,
      path,
      pages: pages,
      headers: headers,
      params: params,
      body: body,
      statusCode: statusCode,
      preview: preview,
      arrayKey: arrayKey,
    ).map(converter);
  }
}

//TODO(kevmoo): use regex here.
Map<String, String> parseLinkHeader(String input) {
  final out = <String, String>{};
  final parts = input.split(', ');
  for (final part in parts) {
    if (part[0] != '<') {
      throw const FormatException('Invalid Link Header');
    }
    final kv = part.split('; ');
    var url = kv[0].substring(1);
    url = url.substring(0, url.length - 1);
    var key = kv[1];
    key = key.replaceAll('"', '').substring(4);
    out[key] = url;
  }
  return out;
}
