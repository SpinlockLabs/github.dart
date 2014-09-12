part of github.tests;

void utilsTests() {
  test("https://api.github.com/repos/DirectMyFile/irc.dart slug is correct", () {
    expectSlug(slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart"), "DirectMyFile", "irc.dart");
  });
}
