part of github.browser;

class BrowserFetcher extends Fetcher {
  @override
  GitHub github;
  
  BrowserFetcher();
  
  @override
  Future<HttpResponse> get(String path) {
    var headers = {};
    
    if (github.auth.token != null) {
      headers['Authorization'] = "token ${github.auth.token}";
    }
    
    var request = new HttpRequest();
    
    request.open("GET", "${github.endpoint}${path}");
    
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
