library github.test.util_test;

import "helper.dart";

import "package:github/src/common.dart";
import "package:test/test.dart";

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
