part of github.http;

class Response {
  final String body;
  final Map<String, String> headers;
  final int statusCode;

  Response(this.body, this.headers, this.statusCode);

  dynamic asJSON() => JSON.decode(body);
}
