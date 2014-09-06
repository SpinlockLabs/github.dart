library test_helper;

import 'package:unittest/unittest.dart';

import 'package:github/src/common/util.dart';

void main() {
  test("https://api.github.com/repos/DirectMyFile/irc.dart slug is correct", () {
    expectSlug(slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart"), "DirectMyFile", "irc.dart");
  });
}

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals("${user}/${repo}"));
}
