import 'dart:convert';

import 'package:github/src/common/model/misc.dart';
import 'package:test/test.dart';

void main() {
  group('RateLimit', () {
    test('fromRateLimitResponse', () {
      const rateLimitJson = '''
{
  "resources": {
    "core": {
      "limit": 5000,
      "remaining": 4999,
      "reset": 1372700873,
      "used": 1
    },
    "search": {
      "limit": 30,
      "remaining": 18,
      "reset": 1372697452,
      "used": 12
    },
    "graphql": {
      "limit": 5000,
      "remaining": 4993,
      "reset": 1372700389,
      "used": 7
    },
    "integration_manifest": {
      "limit": 5000,
      "remaining": 4999,
      "reset": 1551806725,
      "used": 1
    },
    "code_scanning_upload": {
      "limit": 500,
      "remaining": 499,
      "reset": 1551806725,
      "used": 1
    }
  },
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
