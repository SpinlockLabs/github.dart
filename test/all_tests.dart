library github.test.all_tests;

import "dart:io";

import 'package:unittest/unittest.dart';

import 'helper.dart';

import 'util_test.dart' as util_test;
import 'git_test.dart' as git_test;

/// Runs all unit tests.
void main() {
  initUnitTests(junit: Platform.environment.containsKey("TEAMCITY_VERSION"));
  group('[Utilities]', util_test.main);
  group('[Git Service]', git_test.main);
}
