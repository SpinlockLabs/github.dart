library utils_tests;

import 'package:unittest/unittest.dart';

import 'package:github/src/common/util.dart';
import 'test_helper.dart';

void main() {
  test("https://api.github.com/repos/DirectMyFile/irc.dart slug is correct", () {
    expectSlug(slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart"), "DirectMyFile", "irc.dart");
  });
}
