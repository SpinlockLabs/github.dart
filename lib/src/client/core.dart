part of github.client;

class ClientFetcher extends Fetcher {
  @override
  GitHub github;
  
  ClientFetcher();
  
  @override
  Future<HttpResponse> get(String path) {
    var headers = {};
    
    if (github.auth.token != null) {
      headers['Authorization'] = "token ${github.auth.token}";
    }
    
    return http.get(path, headers: headers).then((http.Response resp) {
      return new HttpResponse(resp.statusCode, resp.body, resp.headers);
    });
  }
}