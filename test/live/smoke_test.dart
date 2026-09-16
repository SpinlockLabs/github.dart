import 'dart:io';

import 'package:github/github.dart';
import 'package:test/test.dart';

/// Opt-in safe live smoke test suite.
///
/// Runs only when GITHUB_TOKEN or GITHUB_LIVE_SMOKE=1 is set in the environment.
/// Executes only safe, non-destructive read operations against public GitHub endpoints.
void main() {
  final hasToken = Platform.environment.containsKey('GITHUB_TOKEN') ||
      Platform.environment['GITHUB_LIVE_SMOKE'] == '1';

  group('Live GitHub API Smoke Tests (Read-Only)', () {
    late GitHub github;

    setUp(() {
      final token = Platform.environment['GITHUB_TOKEN'];
      github = GitHub(
        auth: token != null
            ? Authentication.withToken(token)
            : const Authentication.anonymous(),
      );
    });

    tearDown(() {
      github.dispose();
    });

    test('fetches public repository metadata', () async {
      final repo = await github.repositories
          .getRepository(RepositorySlug('octocat', 'Hello-World'));

      expect(repo.name, equals('Hello-World'));
      expect(repo.owner?.login, equals('octocat'));
    });

    test('fetches API status from status endpoint', () async {
      final status = await github.misc.getApiStatus();
      expect(status.status, isNotNull);
      expect(status.status?.indicator, isNotNull);
    });

    test('fetches zen message', () async {
      final zen = await github.misc.getZen();
      expect(zen, isNotEmpty);
    });

    test('fetches gitignore templates list', () async {
      final templates = await github.misc.listGitignoreTemplates();
      expect(templates, contains('Dart'));
    });
  },
      skip: !hasToken
          ? 'Skipped: Set GITHUB_TOKEN or GITHUB_LIVE_SMOKE=1 to run safe live tests.'
          : null);
}
