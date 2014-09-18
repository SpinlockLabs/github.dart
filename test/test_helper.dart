library test_helper;

import 'package:unittest/unittest.dart';

import 'package:github/server.dart';

import 'package:github/http.dart' as http;

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals("${user}/${repo}"));
}

class MockResponse extends http.Response {
  MockResponse(String body, Map<String, String> headers, int statusCode) : super(body, headers, statusCode);
}
