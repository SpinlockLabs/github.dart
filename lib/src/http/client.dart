part of github.http;

abstract class Client {
  Future<Response> request(Request request);

  Future<Response> get(String url, {Map<String, String> headers}) {
    return request(new Request(url, method: "GET", headers: headers));
  }

  Future<Response> post(String url, {body, Map<String, String> headers}) {
    return request(
        new Request(url, method: "POST", headers: headers, body: body));
  }

  Future<Response> put(String url, {body, Map<String, String> headers}) {
    return request(
        new Request(url, method: "PUT", headers: headers, body: body));
  }

  Future<Response> delete(String url, {Map<String, String> headers}) {
    return request(new Request(url, method: "DELETE", headers: headers));
  }

  Future<Response> head(String url, {Map<String, String> headers}) {
    return request(new Request(url, method: "HEAD", headers: headers));
  }

  void close() => null;
}
