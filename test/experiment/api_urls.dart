import 'package:github/src/common.dart';

void main() {
  print(slugFromAPIUrl('https://api.github.com/repos/SpinlockLabs/irc.dart'));
  print(slugFromAPIUrl('https://api.github.com/repos/SpinlockLabs/irc.dart/'));
  print(slugFromAPIUrl(
      'https://api.github.com/repos/SpinlockLabs/irc.dart/issues'));
  print(slugFromAPIUrl(
      'https://api.github.com/repos/SpinlockLabs/irc.dart/issues/1'));
}
