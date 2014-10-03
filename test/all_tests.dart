library github.test.all_tests;

import 'package:unittest/unittest.dart';

import 'helper.dart';

import 'util_test.dart' as util_test;
import 'git_test.dart' as git_test;

/// Runs all unit tests.
void main() {
  initUnitTests();
  group('[util_test]', util_test.main);
  group('[git_test]', git_test.main);
}
