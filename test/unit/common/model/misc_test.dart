import 'dart:convert';

import 'package:github/src/common/model/misc.dart';
import 'package:test/test.dart';

void main() {
  group('RateLimit', () {
    test('fromRateLimitResponse', () {
      // This is a truncated version of the response
      const rateLimitJson = '''{
        "resources": {
          "rate": {
            "limit": 5000,
            "remaining": 4999,
            "reset": 1372700873,
            "used": 1
          }
      }''';
      final rateLimit =
          RateLimit.fromRateLimitResponse(jsonDecode(rateLimitJson));

      expect(rateLimit.limit, 5000);
      expect(rateLimit.remaining, 4999);
      expect(rateLimit.resets, DateTime.fromMillisecondsSinceEpoch(1372700873));
    });
  });
}
