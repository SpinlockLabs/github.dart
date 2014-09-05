part of github.http;

abstract class Client {
  Future<Response> request(Request request);
  
  Future<Response> get(String url, {Map<String, String> headers}) {
    return request(new Request(url, method: "GET", headers: headers));
  }
}
