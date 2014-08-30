part of github.http;

abstract class Client {
  Future<Response> request(Request request);
}
