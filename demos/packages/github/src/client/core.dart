part of github.client;

class ClientFetcher extends Fetcher {
  @override
  GitHub github;
  
  ClientFetcher();
  
  @override
  Future<HttpResponse> get(String path, {Map<String, String> headers, Map<String, String> params}) {
    if (headers == null) {
      headers = {};
    }
    
    if (github.auth.token != null) {
      headers['Authorization'] = "token ${github.auth.token}";
    }
    
    headers.putIfAbsent("Accept", () => "application/vnd.github.v3+json");
    
    var queryString = "";
    
    if (params != null) {
      queryString = buildQueryString(params);
    }
    
    return http.get("https://api.github.com${path}${queryString}", headers: headers).then((http.Response resp) {
      return new HttpResponse(resp.statusCode, resp.body, resp.headers);
    });
  }
}