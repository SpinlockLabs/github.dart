import 'dart:io';

import 'package:github/github.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  const teamResponse = '''
  {
    "name": "flutter-hackers",
    "id": 1753404,
    "slug": "flutter-hackers",
    "permission": "pull",
    "members_count": 255,
    "repos_count": 34,
    "organization": {
      "login": "flutter",
      "id": 14101776,
      "url": "https://api.github.com/orgs/flutter",
      "avatar_url": "https://avatars.githubusercontent.com/u/14101776?v=4",
      "name": "Flutter",
      "company": null,
      "blog": "https://flutter.dev",
      "location": null,
      "email": null,
      "public_repos": 30,
      "public_gists": 0,
      "followers": 6642,
      "following": 0,
      "html_url": "https://github.com/flutter",
      "created_at": "2015-09-03T00:37:37Z",
      "updated_at": "2022-03-17T17:35:40Z"
    }
  }
''';

  const teamNotFoundResponse = '''
    {
      "message": "Not Found",
      "documentation_url": "https://docs.github.com/rest/reference/teams#list-teams"
    }
  ''';

  const activeMemberResponse = '''
    {
      "state": "active",
      "role": "member",
      "url": "https://api.github.com/organizations/14101776/team/1753404/memberships/ricardoamador"
    }
  ''';

  const pendingMemberResponse = '''
    {
      "state": "pending",
      "role": "member",
      "url": "https://api.github.com/organizations/14101776/team/1753404/memberships/ricardoamador"
    }
  ''';

  group(GitHub, () {
    test('getTeamByName is successful', () async {
      Request? request;

      final client = MockClient((r) async {
        request = r;
        return Response(teamResponse, HttpStatus.ok);
      });

      final github = GitHub(client: client);
      final organizationsService = OrganizationsService(github);

      final team = await organizationsService.getTeamByName(
          'flutter', 'flutter-hackers');
      expect(team.name, 'flutter-hackers');
      expect(team.id, 1753404);
      expect(team.organization!.login, 'flutter');
      expect(request, isNotNull);
    });

    test('getTeamByName not found', () async {
      Request? request;

      final headers = <String, String>{};
      headers['content-type'] = 'application/json';

      final client = MockClient((r) async {
        request = r;
        return Response(teamNotFoundResponse, HttpStatus.notFound,
            headers: headers);
      });

      final github = GitHub(client: client);
      final organizationsService = OrganizationsService(github);

      // ignore: omit_local_variable_types
      expect(
          () async => organizationsService.getTeamByName(
              'flutter', 'flutter-programmers'),
          throwsException);
      expect(request, isNull);
    });

    test('getTeamMembership using string name, active', () async {
      Request? request;

      final client = MockClient((r) async {
        request = r;
        return Response(activeMemberResponse, HttpStatus.ok);
      });

      final github = GitHub(client: client);
      final organizationsService = OrganizationsService(github);

      final teamMembershipState =
          await organizationsService.getTeamMembershipByName(
        'flutter',
        'flutter-hackers',
        'ricardoamador',
      );
      expect(teamMembershipState.isActive, isTrue);
      expect(request, isNotNull);
    });

    test('getTeamMembership using string name, pending', () async {
      Request? request;

      final client = MockClient((r) async {
        request = r;
        return Response(pendingMemberResponse, HttpStatus.ok);
      });

      final github = GitHub(client: client);
      final organizationsService = OrganizationsService(github);

      final teamMembershipState =
          await organizationsService.getTeamMembershipByName(
        'flutter',
        'flutter-hackers',
        'ricardoamador',
      );
      expect(teamMembershipState.isActive, isFalse);
      expect(teamMembershipState.isPending, isTrue);
      expect(request, isNotNull);
    });

    test('getTeamMembership using string name, null', () async {
      Request? request;

      final headers = <String, String>{};
      headers['content-type'] = 'application/json';

      final client = MockClient((r) async {
        request = r;
        return Response(
          teamNotFoundResponse,
          HttpStatus.notFound,
          headers: headers,
        );
      });

      final github = GitHub(client: client);
      final organizationsService = OrganizationsService(github);

      expect(
          () async => organizationsService.getTeamMembershipByName(
                'flutter',
                'flutter-hackers',
                'garfield',
              ),
          throwsException);
      expect(request, isNull);
    });
  });
}
