import 'dart:convert';
import 'dart:js_util';
import 'package:github/github.dart';
import 'package:github/hooks.dart';
import 'package:test/test.dart';

import 'hooks_test_data.dart';

void main() {
  group('CheckSuiteEvent', () {
    test('deserialize', () async {
      final checkSuiteEvent = CheckSuiteEvent.fromJson(
          json.decode(checkSuiteString) as Map<String, dynamic>);
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
      final checkRunEvent = CheckRunEvent.fromJson(
          json.decode(checkRunString) as Map<String, dynamic>);
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

  group('CreateEvent', () {
    test('deserialize', () async {
      final createEvent = CreateEvent.fromJson(
          json.decode(createString) as Map<String, dynamic>);
      expect(createEvent.ref, 'simple-branch');
      expect(createEvent.refType, 'branch');
      expect(createEvent.pusherType, 'user');

      final repo = createEvent.repository!;
      expect(repo.slug().fullName, 'Codertocat/Hello-World');
      expect(repo.id, 186853002);

      final sender = createEvent.sender!;
      expect(sender.login, "Codertocat");
      expect(sender.htmlUrl, "https://github.com/Codertocat");
    });
  });

  group('EditedPullRequest', () {
    test('deserialize with body edit', () {
      final pullRequestEditedEvent = PullRequestEvent.fromJson(jsonDecode(prBodyEditedEvent) as Map<String, dynamic>);
      final changes = pullRequestEditedEvent.changes;
      expect(changes, isNotNull);
      expect(changes!.body!.from, isNotNull);
      assert(changes.body!.from == '**This should not land until https://github.com/flutter/buildroot/pull/790');
    });

    test('deserialize with base edit', () {
      final pullRequestEditedEvent = PullRequestEvent.fromJson(jsonDecode(prBaseEditedEvent) as Map<String, dynamic>);
      final changes = pullRequestEditedEvent.changes;
      expect(changes, isNotNull);
      expect(changes!.body, isNull);
      expect(changes.base, isNotNull);
      expect(changes.base!.ref, isNotNull);
      assert(changes.base!.ref!.from == 'main');
      assert(changes.base!.sha!.from == 'b3af5d64d3e6e2110b07d71909fc432537339659');
    });
  });
}
