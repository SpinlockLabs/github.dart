import 'dart:convert';
import 'dart:io';

import 'package:github/github.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('OpenAPI Bindings Manifest Integrity', () {
    test('all bindings in bindings.yaml resolve to valid RestContracts', () {
      final file = File('tool/spec/bindings.yaml');
      expect(file.existsSync(), isTrue);

      final yaml = loadYaml(file.readAsStringSync()) as Map;
      final bindings = yaml['bindings'] as List;
      expect(bindings, isNotEmpty);

      for (final binding in bindings) {
        final opId = binding['operationId'] as String;
        final contract = RestContracts.all[opId];
        expect(
          contract,
          isNotNull,
          reason: 'Binding operationId "$opId" must exist in RestContracts.all',
        );
      }
    });
  });

  group('Service Method Contract Conformance', () {
    late http.Request lastRequest;
    late GitHub github;

    void interceptWithResponse(http.Response response) {
      github = GitHub(
        client: MockClient((req) async {
          lastRequest = req;
          return response;
        }),
      );
    }

    tearDown(() {
      github.dispose();
    });

    test('activity star conforms to activity/star-repo-for-authenticated-user',
        () async {
      final contract =
          RestContracts.all['activity/star-repo-for-authenticated-user']!;
      interceptWithResponse(http.Response('', 204));

      await github.activity.star(RepositorySlug('octocat', 'hello-world'));

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/user/starred/octocat/hello-world'));
      expect(contract.successStatuses, contains(204));
    });

    test(
        'activity unstar conforms to activity/unstar-repo-for-authenticated-user',
        () async {
      final contract =
          RestContracts.all['activity/unstar-repo-for-authenticated-user']!;
      interceptWithResponse(http.Response('', 204));

      await github.activity.unstar(RepositorySlug('octocat', 'hello-world'));

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/user/starred/octocat/hello-world'));
    });

    test('activity getThread conforms to activity/get-thread', () async {
      final contract = RestContracts.all['activity/get-thread']!;
      interceptWithResponse(http.Response(
        jsonEncode({'id': '123', 'unread': false}),
        200,
        headers: {'content-type': 'application/json'},
      ));

      await github.activity.getThread('123');

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/notifications/threads/123'));
    });

    test('gists star conforms to gists/star', () async {
      final contract = RestContracts.all['gists/star']!;
      interceptWithResponse(http.Response('', 204));

      final res = await github.gists.starGist('g123');
      expect(res, isTrue);

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/gists/g123/star'));
    });

    test('gists update conforms to gists/update (PATCH)', () async {
      final contract = RestContracts.all['gists/update']!;
      interceptWithResponse(http.Response(
        jsonEncode({'id': 'g123', 'description': 'Updated'}),
        200,
        headers: {'content-type': 'application/json'},
      ));

      await github.gists.editGist('g123', description: 'Updated');

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PATCH'));
      expect(lastRequest.url.path, equals('/gists/g123'));
    });

    test('gists createComment conforms to gists/create-comment (201)',
        () async {
      final contract = RestContracts.all['gists/create-comment']!;
      interceptWithResponse(http.Response(
        jsonEncode({'id': 1, 'body': 'test comment'}),
        201,
        headers: {'content-type': 'application/json'},
      ));

      await github.gists
          .createComment('g123', CreateGistComment('test comment'));

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/gists/g123/comments'));
      expect(contract.successStatuses, contains(201));
    });

    test('git updateRef conforms to git/update-ref (PATCH)', () async {
      final contract = RestContracts.all['git/update-ref']!;
      interceptWithResponse(http.Response(
        jsonEncode({
          'ref': 'refs/heads/master',
          'object': {'sha': 'abc'}
        }),
        200,
        headers: {'content-type': 'application/json'},
      ));

      await github.git.editReference(
        RepositorySlug('octocat', 'hello-world'),
        'refs/heads/master',
        'abc',
      );

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PATCH'));
      expect(lastRequest.url.path,
          equals('/repos/octocat/hello-world/git/refs/heads/master'));
    });

    test('git getTree with recursive query conforms to git/get-tree', () async {
      final contract = RestContracts.all['git/get-tree']!;
      interceptWithResponse(http.Response(
        jsonEncode({'sha': 'sha123', 'tree': <dynamic>[], 'truncated': false}),
        200,
        headers: {'content-type': 'application/json'},
      ));

      await github.git.getTree(
        RepositorySlug('octocat', 'hello-world'),
        'sha123',
        recursive: true,
      );

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path,
          equals('/repos/octocat/hello-world/git/trees/sha123'));
      expect(lastRequest.url.queryParameters['recursive'], equals('1'));
    });

    test('issues lock conforms to issues/lock (PUT / lock reason)', () async {
      final contract = RestContracts.all['issues/lock']!;
      interceptWithResponse(http.Response('', 204));

      await github.issues.lock(
        RepositorySlug('octocat', 'hello-world'),
        42,
        lockReason: 'resolved',
      );

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PUT'));
      expect(lastRequest.url.path,
          equals('/repos/octocat/hello-world/issues/42/lock'));
      final body = jsonDecode(lastRequest.body) as Map<String, dynamic>;
      expect(body['lock_reason'], equals('resolved'));
    });

    test('issues isAssignee conforms to issues/check-user-can-be-assigned',
        () async {
      final contract = RestContracts.all['issues/check-user-can-be-assigned']!;
      interceptWithResponse(http.Response('', 204));

      final res = await github.issues
          .isAssignee(RepositorySlug('octocat', 'hello-world'), 'octocat');
      expect(res, isTrue);

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path,
          equals('/repos/octocat/hello-world/assignees/octocat'));
    });

    test('issues replaceLabelsForIssue returns List<IssueLabel>', () async {
      final contract = RestContracts.all['issues/set-labels']!;
      interceptWithResponse(http.Response(
        jsonEncode([
          {'name': 'bug', 'color': 'f29513'}
        ]),
        200,
        headers: {'content-type': 'application/json'},
      ));

      final labels = await github.issues.replaceLabelsForIssue(
        RepositorySlug('octocat', 'hello-world'),
        42,
        ['bug'],
      );

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PUT'));
      expect(lastRequest.url.path,
          equals('/repos/octocat/hello-world/issues/42/labels'));
      expect(labels, isA<List<IssueLabel>>());
      expect(labels.length, equals(1));
      expect(labels.first.name, equals('bug'));
    });

    test('teams editTeam conforms to teams/update-legacy (PATCH)', () async {
      final contract = RestContracts.all['teams/update-legacy']!;
      interceptWithResponse(http.Response(
        jsonEncode({'id': 123, 'name': 'Core Team'}),
        200,
        headers: {'content-type': 'application/json'},
      ));

      await github.organizations.editTeam(123, 'Core Team');

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PATCH'));
      expect(lastRequest.url.path, equals('/teams/123'));
    });

    test('teams editTeamInOrg conforms to teams/update-in-org (PATCH)',
        () async {
      final contract = RestContracts.all['teams/update-in-org']!;
      interceptWithResponse(http.Response(
        jsonEncode({'id': 123, 'name': 'Core Team', 'slug': 'core-team'}),
        200,
        headers: {'content-type': 'application/json'},
      ));

      await github.organizations
          .editTeamInOrg('my-org', 'core-team', name: 'Core Team');

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PATCH'));
      expect(lastRequest.url.path, equals('/orgs/my-org/teams/core-team'));
    });

    test(
        'repos createDispatchEvent conforms to repos/create-dispatch-event (204)',
        () async {
      final contract = RestContracts.all['repos/create-dispatch-event']!;
      interceptWithResponse(http.Response('', 204));

      await github.repositories.createDispatchEvent(
        RepositorySlug('octocat', 'hello-world'),
        'custom_event',
        clientPayload: {'run_id': 123},
      );

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path,
          equals('/repos/octocat/hello-world/dispatches'));
      final body = jsonDecode(lastRequest.body) as Map<String, dynamic>;
      expect(body['event_type'], equals('custom_event'));
      expect(body['client_payload']['run_id'], equals(123));
    });

    test('repos listTopics conforms to repos/get-all-topics', () async {
      final contract = RestContracts.all['repos/get-all-topics']!;
      interceptWithResponse(http.Response(
        jsonEncode({
          'names': ['dart', 'github-api']
        }),
        200,
        headers: {'content-type': 'application/json'},
      ));

      final topics = await github.repositories
          .listTopics(RepositorySlug('octocat', 'hello-world'));

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/repos/octocat/hello-world/topics'));
      expect(topics, equals(['dart', 'github-api']));
    });

    test('repos replaceTopics conforms to repos/replace-all-topics', () async {
      final contract = RestContracts.all['repos/replace-all-topics']!;
      interceptWithResponse(http.Response(
        jsonEncode({
          'names': ['dart', 'api']
        }),
        200,
        headers: {'content-type': 'application/json'},
      ));

      final topics = await github.repositories.replaceTopics(
        RepositorySlug('octocat', 'hello-world'),
        ['dart', 'api'],
      );

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.method, equals('PUT'));
      expect(lastRequest.url.path, equals('/repos/octocat/hello-world/topics'));
      expect(topics, equals(['dart', 'api']));
    });

    test('misc listGitignoreTemplates conforms to gitignore/get-all-templates',
        () async {
      final contract = RestContracts.all['gitignore/get-all-templates']!;
      interceptWithResponse(http.Response(
        jsonEncode(['Dart', 'Go', 'Rust']),
        200,
        headers: {'content-type': 'application/json'},
      ));

      final templates = await github.misc.listGitignoreTemplates();

      expect(lastRequest.method, equals(contract.method));
      expect(lastRequest.url.path, equals('/gitignore/templates'));
      expect(templates, equals(['Dart', 'Go', 'Rust']));
    });
  });
}
