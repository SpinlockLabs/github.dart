library github.test.helper;

import 'package:unittest/unittest.dart';
import 'package:mock/mock.dart';

import 'package:github/server.dart';

import 'package:github/http.dart' as http;

import 'package:junitconfiguration/junitconfiguration.dart';

import 'dart:async';
import 'dart:io';
import 'dart:convert';

part 'helper/http.dart';
part 'helper/mock.dart';
part 'helper/expect.dart';
part 'helper/assets.dart';

GitHub github = _makeGitHubClient();

GitHub _makeGitHubClient() {
  GitHub g;

  if (Platform.environment.containsKey("GITHUB_TOKEN")) {
    g = createGitHubClient(
        auth: new Authentication.withToken(
            Platform.environment["GITHUB_TOKEN"]));
  } else {
    g = createGitHubClient();
  }

  return g;
}

void initUnitTests({bool junit: false}) {
  if (junit) {
    var dir = new Directory("build");

    if (!dir.existsSync()) dir.createSync();

    var file = new File("${dir.path}/tests.xml");

    if (file.existsSync()) file.deleteSync();

    JUnitConfiguration.install(output: file.openWrite());
  }
}
