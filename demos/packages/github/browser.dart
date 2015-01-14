/**
 * GitHub for the Browser
 * 
 * This contains a few utilities that are browser specific.
 * See [GitHubBrowserHelper] for more information.
 */
library github.browser;

import 'dart:async';
import 'dart:html';

import 'common.dart';
import 'http.dart' as http;
export 'common.dart';

part 'src/browser/helper.dart';

class _BrowserHttpClient extends http.Client {
  @override
  Future<http.Response> request(http.Request request) {
    var req = new HttpRequest();
    var completer = new Completer<http.Response>();

    req.open(request.method, request.url);

    if (request.headers != null) {
      for (var header in request.headers.keys) {
        req.setRequestHeader(header, request.headers[header]);
      }
    }

    req.onLoadEnd.listen((event) {
      completer.complete(
          new http.Response(req.responseText, req.responseHeaders, req.status));
    });

    req.send(request.body);

    return completer.future;
  }
}

void initGitHub() {
  GitHub.defaultClient = () => new _BrowserHttpClient();
}

/**
 * Creates a GitHub Client
 */
GitHub createGitHubClient(
    {Authentication auth, String endpoint: "https://api.github.com"}) {
  initGitHub();
  return new GitHub(auth: auth, endpoint: endpoint);
}
