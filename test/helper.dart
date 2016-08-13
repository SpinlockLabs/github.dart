library github.test.helper;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import "package:http/http.dart" as http;
import 'package:github/server.dart';
import 'package:mock/mock.dart';
import 'package:test/test.dart';

part 'helper/assets.dart';
part 'helper/expect.dart';
part 'helper/http.dart';
part 'helper/mock.dart';

GitHub github = _makeGitHubClient();

GitHub _makeGitHubClient() {
  GitHub g;

  if (Platform.environment.containsKey("GITHUB_TOKEN")) {
    g = createGitHubClient(
        auth:
            new Authentication.withToken(Platform.environment["GITHUB_TOKEN"]));
  } else {
    g = createGitHubClient();
  }

  return g;
}
