library github.test.util_test;

import "package:unittest/unittest.dart";
import "helper.dart";

import "package:github/common.dart";

main() {
  group("slugFromAPIUrl()", () {
    test("https://api.github.com/repos/DirectMyFile/irc.dart slug is correct",
        () {
      expectSlug(
          slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart"),
          "DirectMyFile",
          "irc.dart");
    });
  });
}
