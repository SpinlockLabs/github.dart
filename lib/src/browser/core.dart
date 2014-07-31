part of github.browser;

class BrowserFetcher extends Fetcher {
  @override
  GitHub github;

  BrowserFetcher();

  @override
  Future<HttpResponse> get(String path, {Map<String, String> headers, Map<String, String> params}) {
    return request("GET", path, headers: headers, params: params);
  }
  
  Future<HttpResponse> request(String method, String path, {Map<String, String> headers, Map<String, String> params, String body}) {
    if (headers == null) {
      headers = {};
    }

    if (github.auth.token != null) {
      headers.putIfAbsent("Authorization", () => "token ${github.auth.token}");
    }

    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");

    var request = new HttpRequest();

    var queryString = "";

    if (params != null) {
      queryString = buildQueryString(params);
    }

    var url = new StringBuffer();

    if (path.startsWith("http")) {
      url.write(path);
      url.write(queryString);
    } else {
      url.write(github.endpoint);
      url.write(path);
      url.write(queryString);
    }

    request.open(method, url.toString());

    headers.forEach(request.setRequestHeader);

    var completer = new Completer();

    request.onReadyStateChange.listen((event) {
      if (request.readyState == HttpRequest.DONE) {
        completer.complete(new HttpResponse(request.status, request.responseText, request.responseHeaders));
      }
    });

    request.send(body);

    return completer.future;
  }

  @override
  Future<HttpResponse> post(String path, {Map<String, String> headers, Map<String, String> params, String body}) {
    return request("POST", path, headers: headers, params: params, body: body);
  }
}
