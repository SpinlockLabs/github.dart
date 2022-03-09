import 'dart:convert';

import 'package:github/src/common/model/checks.dart';
import 'package:test/test.dart';

void main() {
  group('Check run', () {
    test('CheckRun fromJson', () {
      // This is a truncated version of the response
      const checkRunJson = '''{
        "id": 4,
        "head_sha": "ce587453ced02b1526dfb4cb910479d431683101",
        "external_id": "",
        "details_url": "https://example.com",
        "status": "completed",
        "conclusion": "neutral",
        "started_at": "2018-05-04T01:14:52Z",
        "name": "mighty_readme",
        "check_suite": {
          "id": 5
        }
      }''';
      final checkRun = CheckRun.fromJson(jsonDecode(checkRunJson));

      expect(checkRun.id, 4);
      expect(checkRun.name, 'mighty_readme');
      expect(checkRun.conclusion, CheckRunConclusion.neutral);
    });
  });
}
