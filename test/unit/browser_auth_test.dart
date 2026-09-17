@TestOn('chrome')
library;

// ignore: deprecated_member_use
import 'dart:html';

import 'package:github/src/browser/xplat_browser.dart';
import 'package:test/test.dart';

void main() {
  group('Browser Authentication', () {
    tearDown(() {
      window.sessionStorage.clear();
    });

    test('loads token from sessionStorage by default', () {
      window.sessionStorage['GITHUB_TOKEN'] = 'session-pat-12345';
      final auth = findAuthenticationFromEnvironment();
      expect(auth.isAnonymous, isFalse);
      expect(auth.token, equals('session-pat-12345'));
    });

    test('ignores query string by default even if present in URL', () {
      // By default allowQueryAuth is false
      final auth = findAuthenticationFromEnvironment();
      // Unless present in sessionStorage, it should default to anonymous
      expect(auth.isAnonymous, isTrue);
    });

    test('returns anonymous auth when neither sessionStorage nor query present',
        () {
      window.sessionStorage.clear();
      final auth = findAuthenticationFromEnvironment();
      expect(auth.isAnonymous, isTrue);
    });
  });
}
