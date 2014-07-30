part of github.common;

class HttpResponse {
  final int statusCode;
  final String body;
  final Map<String, String> headers;
  
  HttpResponse(this.statusCode, this.body, this.headers);
}

abstract class Fetcher {
  void set github(GitHub github);
  
  Future<HttpResponse> get(String path);
  
  Future<dynamic> fetchJSON(String path, [dynamic convert(input)]) {
    
    if (convert == null) {
      convert = (it) => it;
    }
    
    return get(path).then((response) {
      var json = JSON.decode(response.body);
      return convert(json);
    });
  }
}