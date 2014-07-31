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
  
  Future<HttpResponse> get(String path, {Map<String, String> headers, Map<String, String> params});
  
  Future<dynamic> fetchJSON(String path, {JSONConverter convert, Map<String, String> headers, Map<String, String> params}) {
    
    if (convert == null) {
      convert = (github, it) => it;
    }
    
    return get(path, headers: headers, params: params).then((response) {
      var json = JSON.decode(response.body);
      return convert(github, json);
    });
  }
}