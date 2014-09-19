library github.tests;

import "package:unittest/unittest.dart";

import "package:github/src/common/util.dart";
import "helper.dart";

part "tests/utils.dart";

void main() {
  group("utilities", utilsTests);
}
