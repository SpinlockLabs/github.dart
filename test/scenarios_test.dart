// ignore_for_file: unused_local_variable

@Tags(['scenarios'])
@TestOn('vm')

import 'dart:convert';

import 'package:github/github.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

final defaultFixtureServerUri = Uri.parse('http://localhost:3000/fixtures');

/// All folder names at @octokit/fixtures/scenarios/api.github.com
/// are valid values for [scenario].
Future<GitHub> createGithubWithScenario(String scenario,
    {Uri? fixtureServerUri}) async {
  fixtureServerUri ??= defaultFixtureServerUri;

  // send a request to the fixtures server to get load a fixture
  var resp = await http.post(fixtureServerUri,
      headers: {'Content-Type': 'application/json'},
      body: '{"scenario": "$scenario"}');
  if (resp.statusCode < 200 || resp.statusCode >= 300) {
    throw Exception(
        'Error loading scenario: $scenario\n${resp.statusCode}\n${resp.body}');
  }
  var j = json.decode(resp.body);
  return GitHub(
      endpoint: j['url'],
      auth:
          const Authentication.withToken('0000000000000000000000000000000000000001'));
}

/// Run scenario tests against ockokits fixtures-server
/// https://github.com/octokit/fixtures-server
///
/// These tests are a port of the rest.js ocktokit tests from
/// https://github.com/octokit/rest.js/tree/master/test/scenarios
///
/// The fixture server must be running before running these tests
/// The easiest way is to install node and then run
/// npx octokit-fixtures-server
///
/// TODO(robrbecker) Implement a fixture-server "light" in Dart
/// directly using nock so we can remove the dependency on node
/// and running a server in order to run tests
void main() {
  test('add-and-remove-repository-collaborator', () async {
    var gh = await createGithubWithScenario(
        'add-and-remove-repository-collaborator');
    // todo do test
  }, skip: true);
  test('add-labels-to-issue', () async {
    var gh = await createGithubWithScenario('add-labels-to-issue');
    // todo do test
  }, skip: true);
  test('branch-protection', () async {
    var gh = await createGithubWithScenario('branch-protection');
    // todo do test
  }, skip: true);
  test('create-file', () async {
    var gh = await createGithubWithScenario('create-file');
    // todo do test
  }, skip: true);

  test('create-status', () async {
    var gh = await createGithubWithScenario('create-status');
    // todo do test
  }, skip: true);
  test('errors', () async {
    var gh = await createGithubWithScenario('errors');
    // todo do test
  }, skip: true);
  test('get-archive', () async {
    var gh = await createGithubWithScenario('get-archive');
    // todo do test
  }, skip: true);
  test('get-content', () async {
    var gh = await createGithubWithScenario('get-content');
    // todo do test
  }, skip: true);

  test('get-organization', () async {
    var gh = await createGithubWithScenario('get-organization');
    var org = await gh.organizations.get('octokit-fixture-org');
    expect(org.login, 'octokit-fixture-org');
  });

  test('get-repository', () async {
    var gh = await createGithubWithScenario('get-repository');
    // todo do test
  }, skip: true);
  test('get-root', () async {
    var gh = await createGithubWithScenario('get-root');
    // todo do test
  }, skip: true);
  test('git-refs', () async {
    var gh = await createGithubWithScenario('git-refs');
    // todo do test
  }, skip: true);
  test('labels', () async {
    var gh = await createGithubWithScenario('labels');
    // todo do test
  }, skip: true);
  test('lock-issue', () async {
    var gh = await createGithubWithScenario('lock-issue');
    // todo do test
  }, skip: true);
  test('mark-notifications-as-read', () async {
    var gh = await createGithubWithScenario('mark-notifications-as-read');
    // todo do test
  }, skip: true);
  test('markdown', () async {
    var gh = await createGithubWithScenario('markdown');
    // todo do test
  }, skip: true);
  test('paginate-issues', () async {
    var gh = await createGithubWithScenario('paginate-issues');
    // todo do test
  }, skip: true);
  test('project-cards', () async {
    var gh = await createGithubWithScenario('project-cards');
    // todo do test
  }, skip: true);
  test('release-assets-conflict', () async {
    var gh = await createGithubWithScenario('release-assets-conflict');
    // todo do test
  }, skip: true);
  test('release-assets', () async {
    var gh = await createGithubWithScenario('release-assets');
    // todo do test
  }, skip: true);
  test('rename-repository', () async {
    var gh = await createGithubWithScenario('rename-repository');
    // todo do test
  }, skip: true);
  test('search-issues', () async {
    var gh = await createGithubWithScenario('search-issues');
    // todo do test
  }, skip: true);
}
