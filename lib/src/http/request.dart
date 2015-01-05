part of github.http;

class Request {
  final String url;
  final String method;
  final String body;
  final Map<String, String> headers;

  Request(this.url, {this.method: "GET", this.body, this.headers: const {}});
}
