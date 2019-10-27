import 'package:github/src/common.dart';
import 'package:test/test.dart';
import 'helper/expect.dart';

void main() {
  group('slugFromAPIUrl()', () {
    test('https://api.github.com/repos/SpinlockLabs/irc.dart slug is correct',
        () {
      expectSlug(
          slugFromAPIUrl('https://api.github.com/repos/SpinlockLabs/irc.dart'),
          'SpinlockLabs',
          'irc.dart');
    });
  });
}
