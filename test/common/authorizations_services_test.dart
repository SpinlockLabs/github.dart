import 'package:github/github.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockGitHub extends Mock implements GitHub {}

const method = 'GET';
const path = '/authorizations';
const headers = {'Accept': 'application/vnd.github.v3+json'};
const params = {'page': '1'};
const body = null;

void main() {
  late GitHub github;
  group('AuthorizationsService', () {
    setUp(() {
      github = MockGitHub();
    });
    test('can instantiate', () async {
      expect(
        AuthorizationsService(github).toString(),
        equals('Instance of \'AuthorizationsService\''),
      );
    });

    test('can listAuthorizations', () async {
      // TODO: Actually mock up a good call and response.
      when(
        () => github.request(
          any(),
          any(),
          headers: any(named: 'headers'),
          params: any(named: 'params'),
          body: any(named: 'body'),
          statusCode: any(named: 'statusCode'),
        ),
      ).thenAnswer(
        (_) async => Response('[{"test": true}]', 200),
      );

      final service = AuthorizationsService(github);
      final authorizationStream = service.listAuthorizations();
      final authorization = await authorizationStream.first;
      expect(authorization, isA<Authorization>());
    });

    test('can getAuthorization', () async {
      const testId = 1;
      when(
        () => github.getJSON(
          '/authorizations/$testId',
          statusCode: 200,
          convert: Authorization.fromJson,
        ),
      ).thenAnswer((_) async => Authorization(id: testId));

      final service = AuthorizationsService(github);

      final authorization = await service.getAuthorization(testId);

      expect(authorization.id, testId);
    });
  });
}
