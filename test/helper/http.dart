import 'dart:convert';
import 'package:http/http.dart' as http;
import 'assets.dart';

final MockHTTPClient httpClient = MockHTTPClient();

typedef ResponseCreator = http.StreamedResponse Function(
    http.BaseRequest request);

class MockHTTPClient extends http.BaseClient {
  final Map<Pattern, ResponseCreator> responses = <Pattern, ResponseCreator>{};

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final matchingUrlCreatorKey = responses.keys.firstWhere(
        (it) => it.allMatches(request.url.toString()).isNotEmpty,
        orElse: () => null);
    final creator = responses[matchingUrlCreatorKey];
    if (creator == null) {
      throw Exception('No Response Configured');
    }

    return creator(request);
  }
}

class MockResponse extends http.Response {
  MockResponse(String body, Map<String, String> headers, int statusCode)
      : super(body, statusCode, headers: headers);

  factory MockResponse.fromAsset(String name) {
    final responseData =
        jsonDecode(asset('responses/$name.json').readAsStringSync())
            as Map<String, dynamic>;
    final headers = responseData['headers'] as Map<String, String>;
    final dynamic body = responseData['body'];
    final int statusCode = responseData['statusCode'];
    String actualBody;
    if (body is Map || body is List) {
      actualBody = jsonDecode(body);
    } else {
      actualBody = body.toString();
    }

    return MockResponse(actualBody, headers, statusCode);
  }
}
