library github.tests.helper;

import 'package:unittest/unittest.dart';

import 'package:github/server.dart';

import 'package:github/http.dart' as http;

import 'dart:async';
import 'dart:io';
import 'dart:convert';

final MockHTTPClient httpClient = new MockHTTPClient();

GitHub createMockGitHub() {
  initGitHub();
  return new GitHub(client: httpClient);
}

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals("${user}/${repo}"));
}

typedef http.Response ResponseCreator(http.Request request);

class MockHTTPClient extends http.Client {
  final Map<Pattern, ResponseCreator> responses = {};
  
  @override
  Future<http.Response> request(http.Request request) {
    var creator = responses.keys.firstWhere((it) => it.allMatches(request.url).isNotEmpty, orElse: () => null);
    if (creator == null) {
      throw new Exception("No Response Configured");
    }
    return new Future.value(creator(request));
  }
}

class MockResponse extends http.Response {
  MockResponse(String body, Map<String, String> headers, int statusCode) : super(body, headers, statusCode);
  
  factory MockResponse.fromAsset(String name) {
    Map<String, dynamic> responseData = JSON.decode(asset("responses/${name}.json").readAsStringSync());
    Map<String, String> headers = responseData['headers'];
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

File asset(String id) => new File("test/assets/${id}");