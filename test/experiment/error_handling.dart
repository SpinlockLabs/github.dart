import 'dart:io';

import 'package:github/github.dart';

import '../helper/http.dart';

void main() {
  final github = GitHub();
  final response = MockResponse(
    GitHubJson.encode(<String, dynamic>{
      'message': 'Invalid Entity',
      'errors': [
        {
          'resource': 'Issue',
          'field': 'body',
          'code': 'not_found',
        }
      ]
    }),
    {},
    422,
  );

  try {
    github.handleStatusCode(response);
  } on ValidationFailed catch (e) {
    print(e);
    exit(0);
  }
}
