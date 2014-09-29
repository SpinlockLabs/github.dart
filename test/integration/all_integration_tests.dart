library github.test.integration.all_integration_tests;

import 'package:unittest/unittest.dart';

import 'git_integration_test.dart' as git_integration_test;

/// Runs all integration tests.
void main() {
  group('[git_integration_test]', git_integration_test.main);
}
