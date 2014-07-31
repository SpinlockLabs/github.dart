part of github.browser;

class BrowserFetcher extends Fetcher {
  @override
  GitHub github;
  
  BrowserFetcher();
  
  @override
  Future<HttpResponse> get(String path, {Map<String, String> headers, Map<String, String> params}) {
    
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
    
    request.open("GET", url.toString());
    
    headers.forEach(request.setRequestHeader);
    
    var completer = new Completer();
    
    request.onReadyStateChange.listen((event) {
      if (request.readyState == HttpRequest.DONE) {
        completer.complete(new HttpResponse(request.status, request.responseText, request.responseHeaders));
      }
    });
    
    request.send();
    
    return completer.future;
  }
}
