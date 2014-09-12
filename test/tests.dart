library github.tests;

import "package:unittest/unittest.dart";

import "package:github/src/common/util.dart";
import "test_helper.dart";

part "tests/utils.dart";

void main() {
  group("utilities", utilsTests);
}
