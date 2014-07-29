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
  
  Future<dynamic> fetchJSON(String path, Type objType) {
    return get(path).then((response) {
      
      if (response.statusCode != 200) {
        return null;
      }
      
      var content = response.body;
      
      return jsonx.decode(content, type: objType);
    });
  }
}