library github.test.util_test;

import "package:unittest/unittest.dart";
import "helper.dart";

import "package:github/src/common/util.dart"; // Subject under test.

main() {
  group("slugFromAPIUrl()", () {
    test("https://api.github.com/repos/DirectMyFile/irc.dart slug is correct", () {
      expectSlug(slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart"), "DirectMyFile", "irc.dart");
    });
  });
}

