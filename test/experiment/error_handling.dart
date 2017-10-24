import 'dart:convert';
import 'dart:io';

import 'package:github/server.dart';

import '../helper.dart';

void main() {
  var github = createGitHubClient();
  var response = new MockResponse(
      JSON.encode({
        "message": "Invalid Entity",
        "errors": [
          {"resource": "Issue", "field": "body", "code": "not_found"}
        ]
      }),
      {},
      422);

  try {
    github.handleStatusCode(response);
  } on ValidationFailed catch (e) {
    print(e);
    exit(0);
  }

  print("Invalid Entity Error Handling Failed");

  exit(1);
}
