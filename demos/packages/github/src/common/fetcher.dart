part of github.common;

class HttpResponse {
  final int statusCode;
  final String body;
  final Map<String, String> headers;
  
  HttpResponse(this.statusCode, this.body, this.headers);
}

typedef T JSONConverter<T>(GitHub github, input);

abstract class Fetcher {
  GitHub get github;
  void set github(GitHub github);
  
  Future<HttpResponse> get(String path);
  
  Future<dynamic> fetchJSON(String path, [JSONConverter convert]) {
    
    if (convert == null) {
      convert = (github, it) => it;
    }
    
    return get(path).then((response) {
      var json = JSON.decode(response.body);
      return convert(github, json);
    });
  }
}