/**
 * GitHub for the Server
 */
library github.server;

import "dart:async";
import "dart:io";
import "dart:convert";

import 'common.dart';
export 'common.dart';

import 'http.dart' as http;

part "src/server/hooks.dart";

void initGitHub() {
  GitHub.defaultClient = () => new _IOClient();
}

/**
 * Creates a GitHub Client
 */
GitHub createGitHubClient(
    {Authentication auth, String endpoint: "https://api.github.com"}) {
  initGitHub();
  return new GitHub(auth: auth, endpoint: endpoint);
}

class _IOClient extends http.Client {
  final HttpClient client;

  _IOClient() : client = new HttpClient();

  @override
  Future<http.Response> request(http.Request request) {
    var completer = new Completer<http.Response>();
    client.openUrl(request.method, Uri.parse(request.url)).then((req) {
      request.headers.forEach(req.headers.set);
      // TODO (marcojakob): The DateTime.timeZoneName is currently not correctly
      // implemented: https://code.google.com/p/dart/issues/detail?id=17085
      // Once this issue is resolved, we can reenable setting this header.
      // req.headers.set("Time-Zone", timezoneName);

      if (request.body != null) {
        req.write(request.body);
      }
      return req.close();
    }).then((response) {
      response.transform(UTF8.decoder).join().then((value) {
        var map = {};

        response.headers.forEach((key, value) => map[key] = value.first);

        var resp = new http.Response(value, map, response.statusCode);
        completer.complete(resp);
      });
    });

    return completer.future;
  }

  @override
  void close() => client.close();
}
