import 'dart:convert';
import 'package:github/github.dart';
import 'package:github/hooks.dart';
import 'package:test/test.dart';

import 'hooks_test_data.dart';

void main() {
  group('CheckSuiteEvent', () {
    test('deserialize', () async {
      final checkSuiteEvent =
          CheckSuiteEvent.fromJson(json.decode(checkSuiteString) as Map<String, dynamic>);
      // Top level properties.
      expect(checkSuiteEvent.action, 'requested');
      expect(checkSuiteEvent.checkSuite, isA<CheckSuite>());
      // CheckSuite properties.
      final suite = checkSuiteEvent.checkSuite!;
      expect(suite.headSha, 'ec26c3e57ca3a959ca5aad62de7213c562f8c821');
      expect(suite.id, 118578147);
      expect(suite.conclusion, CheckRunConclusion.success);
    });
  });
  group('CheckRunEvent', () {
    test('deserialize', () async {
      final checkRunEvent = CheckRunEvent.fromJson(json.decode(checkRunString) as Map<String, dynamic>);
      // Top level properties.
      expect(checkRunEvent.action, 'created');
      expect(checkRunEvent.checkRun, isA<CheckRun>());
      // CheckSuite properties.
      final checkRun = checkRunEvent.checkRun!;
      expect(checkRun.headSha, 'ec26c3e57ca3a959ca5aad62de7213c562f8c821');
      expect(checkRun.checkSuiteId, 118578147);
      expect(checkRun.detailsUrl, 'https://octocoders.io');
      expect(checkRun.externalId, '');
      expect(checkRun.id, 128620228);
      expect(checkRun.name, 'Octocoders-linter');
      expect(checkRun.startedAt, DateTime.utc(2019, 05, 15, 15, 21, 12));
      expect(checkRun.status, CheckRunStatus.queued);
    });
  });
}
