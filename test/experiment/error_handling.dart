import 'package:github/server.dart';

import '../test_helper.dart';

import 'dart:io';
import 'dart:convert';

void main() {
  initGitHub();
  var response = new MockResponse(JSON.encode({
    "message": "Invalid Entity",
    "errors": [
      {
        "resource": "Issue",
        "field": "body",
        "code": "not_found"
      }
    ]
  }), {}, 422);
  
  var github = new GitHub();
  
  try {
    github.handleStatusCode(response);
  } on ValidationFailed catch (e) {
    print(e);
    exit(0);
  }
  
  print("Invalid Entity Error Handling Failed");
  
  exit(1);
}