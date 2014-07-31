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
    
    var url = new StringBuffer();

    if (path.startsWith("http")) {
      url.write(path);
      url.write(queryString);
    } else {
      url.write(github.endpoint);
      url.write(path);
      url.write(queryString);
    }
    
    return http.get(url.toString(), headers: headers).then((http.Response resp) {
      return new HttpResponse(resp.statusCode, resp.body, resp.headers);
    });
  }

  @override
  Future<HttpResponse> post(String path, {Map<String, String> headers, Map<String, String> params, String body}) {
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
    
    var url = new StringBuffer();

    if (path.startsWith("http")) {
      url.write(path);
      url.write(queryString);
    } else {
      url.write(github.endpoint);
      url.write(path);
      url.write(queryString);
    }
    
    return http.post(url.toString(), headers: headers, body: body).then((http.Response resp) {
      return new HttpResponse(resp.statusCode, resp.body, resp.headers);
    });
  }
}