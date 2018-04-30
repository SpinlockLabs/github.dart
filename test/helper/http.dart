part of github.test.helper;

final MockHTTPClient httpClient = new MockHTTPClient();

typedef http.Response ResponseCreator(http.BaseRequest request);

class MockHTTPClient extends http.BaseClient {
  final Map<Pattern, ResponseCreator> responses = <Pattern, ResponseCreator>{};

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    var matchingUrlCreatorKey = responses.keys.firstWhere(
        (it) => it.allMatches(request.url.toString()).isNotEmpty,
        orElse: () => null);
    var creator = responses[matchingUrlCreatorKey];
    if (creator == null) {
      throw new Exception("No Response Configured");
    }

    return new Future.value(creator(request));
  }
}

class MockResponse extends http.Response {
  MockResponse(String body, Map<String, String> headers, int statusCode)
      : super(body, statusCode, headers: headers);

  factory MockResponse.fromAsset(String name) {
    Map<String, dynamic> responseData =
        JSON.decode(asset("responses/$name.json").readAsStringSync())
            as Map<String, dynamic>;
    Map<String, String> headers =
        responseData['headers'] as Map<String, String>;
    dynamic body = responseData['body'];
    int statusCode = responseData['statusCode'];
    String actualBody;
    if (body is Map || body is List) {
      actualBody = JSON.decode(body);
    } else {
      actualBody = body.toString();
    }

    return new MockResponse(actualBody, headers, statusCode);
  }
}
