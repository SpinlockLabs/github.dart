import "package:github/src/common.dart";

void main() {
  print(slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart"));
  print(slugFromAPIUrl("https://api.github.com/repos/DirectMyFile/irc.dart/"));
  print(slugFromAPIUrl(
      "https://api.github.com/repos/DirectMyFile/irc.dart/issues"));
  print(slugFromAPIUrl(
      "https://api.github.com/repos/DirectMyFile/irc.dart/issues/1"));
}
