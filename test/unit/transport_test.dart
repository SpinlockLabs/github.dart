import 'dart:convert';
import 'package:github/github.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('HttpTransport URI and Query Resolution', () {
    late GitHub github;

    setUp(() {
      github = GitHub();
    });

    tearDown(() {
      github.dispose();
    });

    test('resolves relative path against default endpoint', () {
      final uri = github.transport.resolveUri('/user');
      expect(uri.toString(), equals('https://api.github.com/user'));
    });

    test('preserves absolute URLs', () {
      final uri = github.transport
          .resolveUri('https://uploads.github.com/repos/o/r/releases/1/assets');
      expect(uri.toString(),
          equals('https://uploads.github.com/repos/o/r/releases/1/assets'));
    });

    test('expands standard and multi-segment path parameters', () {
      final uri = github.transport.resolveUri(
        '/repos/{owner}/{repo}/contents/{+path}',
        pathParams: {
          'owner': 'octocat',
          'repo': 'hello-world',
          'path': 'src/nested/file.txt',
        },
        multiSegmentParams: {'path'},
      );
      expect(
        uri.toString(),
        equals(
            'https://api.github.com/repos/octocat/hello-world/contents/src/nested/file.txt'),
      );
    });

    test('encodes query parameters, skipping nulls and expanding lists', () {
      final uri = github.transport.resolveUri(
        '/repos/o/r/issues',
        params: {
          'state': 'open',
          'labels': ['bug', 'help wanted'],
          'sort': null,
          'page': 2,
        },
      );
      expect(
        uri.toString(),
        equals(
            'https://api.github.com/repos/o/r/issues?state=open&labels=bug&labels=help+wanted&page=2'),
      );
    });

    test('merges params with existing query without duplicate ?', () {
      final uri = github.transport.resolveUri(
        '/repos/o/r/issues?direction=asc',
        params: {'page': 1},
      );
      expect(
        uri.toString(),
        equals('https://api.github.com/repos/o/r/issues?direction=asc&page=1'),
      );
    });
  });

  group('buildQueryString', () {
    test('handles empty or all-null map', () {
      expect(buildQueryString({}), equals(''));
      expect(buildQueryString({'a': null, 'b': null}), equals(''));
    });

    test('properly encodes keys and values', () {
      expect(
        buildQueryString({'user name': 'john doe', 'q': 'a&b=c'}),
        equals('?user+name=john+doe&q=a%26b%3Dc'),
      );
    });

    test('handles without leading question mark', () {
      expect(
        buildQueryString({'page': 1}, prefixQuestionMark: false),
        equals('page=1'),
      );
    });
  });

  group('HttpTransport Security Boundaries', () {
    test('disallows insecure HTTP auth when allowInsecureAuth is false',
        () async {
      final client = MockClient((request) async => http.Response('{}', 200));
      final gh = GitHub(
        auth: const Authentication.withToken('secret-token'),
        endpoint: 'http://insecure-api.local',
        client: client,
        allowInsecureAuth: false,
      );

      expect(
        () => gh.transport.execute(
          const ApiRequest(method: 'GET', path: '/user'),
        ),
        throwsA(isA<GitHubError>().having(
          (e) => e.message,
          'message',
          contains('Insecure HTTP authentication is disallowed'),
        )),
      );
      gh.dispose();
    });

    test('allows insecure HTTP auth when explicitly enabled', () async {
      final client = MockClient((request) async {
        expect(request.headers['Authorization'], equals('token secret-token'));
        return http.Response('{"login":"test"}', 200,
            headers: {'content-type': 'application/json'});
      });
      final gh = GitHub(
        auth: const Authentication.withToken('secret-token'),
        endpoint: 'http://insecure-api.local',
        client: client,
        allowInsecureAuth: true,
      );

      final res = await gh.transport.execute(
        const ApiRequest(method: 'GET', path: '/user'),
      );
      expect(res.statusCode, equals(200));
      gh.dispose();
    });

    test('strips authorization header when requesting untrusted origins',
        () async {
      String? sentAuth;
      final client = MockClient((request) async {
        sentAuth = request.headers['Authorization'];
        return http.Response('{}', 200);
      });
      final gh = GitHub(
        auth: const Authentication.withToken('secret-token'),
        client: client,
      );

      await gh.transport.execute(
        const ApiRequest(
            method: 'GET', path: 'https://attacker.com/leak-token'),
      );
      expect(sentAuth, isNull);
      gh.dispose();
    });
  });

  group('RetryPolicy and Retries', () {
    test('retries idempotent requests on 502/503/504 up to maxRetries',
        () async {
      var callCount = 0;
      final client = MockClient((request) async {
        callCount++;
        if (callCount < 3) {
          return http.Response('Bad Gateway', 502);
        }
        return http.Response('{"ok":true}', 200,
            headers: {'content-type': 'application/json'});
      });

      final delays = <Duration>[];
      final gh = GitHub(
        client: client,
        retryPolicy: RetryPolicy(
          maxRetries: 3,
          initialDelay: const Duration(milliseconds: 10),
          sleeper: (d) async => delays.add(d),
          random: () => 0.5,
        ),
      );

      final res = await gh.transport.execute(
        const ApiRequest(method: 'GET', path: '/repos/o/r'),
      );
      expect(res.statusCode, equals(200));
      expect(callCount, equals(3));
      expect(delays.length, equals(2));
      gh.dispose();
    });

    test('does NOT retry non-idempotent POST requests on 502', () async {
      var callCount = 0;
      final client = MockClient((request) async {
        callCount++;
        return http.Response('Bad Gateway', 502);
      });

      final gh = GitHub(
        client: client,
        retryPolicy: const RetryPolicy(maxRetries: 3),
      );

      await expectLater(
        () => gh.transport.execute(
          const ApiRequest(method: 'POST', path: '/repos/o/r/issues'),
        ),
        throwsA(isA<ServerError>()),
      );
      expect(callCount, equals(1));
      gh.dispose();
    });

    test('honors Retry-After integer header', () {
      const policy = RetryPolicy();
      final res = http.Response('Too many requests', 429, headers: {
        'retry-after': '5',
      });
      final delay = policy.delayFor(attempt: 0, response: res);
      expect(delay, equals(const Duration(seconds: 5)));
    });

    test('honors Retry-After HTTP-Date header', () {
      final now = DateTime.utc(2026, 9, 15, 12, 0, 0);
      final policy = RetryPolicy(clock: () => now);
      final res = http.Response('Too many requests', 429, headers: {
        'retry-after': 'Tue, 15 Sep 2026 12:00:10 GMT',
      });
      final delay = policy.delayFor(attempt: 0, response: res);
      expect(delay, equals(const Duration(seconds: 10)));
    });
  });

  group('ErrorDecoder and Redaction', () {
    late GitHub github;

    setUp(() {
      github = GitHub();
    });

    tearDown(() {
      github.dispose();
    });

    test('redacts classic tokens and fine-grained PATs in messages and body',
        () {
      const raw =
          'Error with token ghp_ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 and pat github_pat_11AAAAAAA0123456789abcdef_0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdef';
      final redacted = ErrorDecoder.redact(raw);
      expect(redacted, isNot(contains('ghp_')));
      expect(redacted, isNot(contains('github_pat_')));
      expect(redacted, contains('[REDACTED_TOKEN]'));
    });

    test('redacts Bearer authorization header values', () {
      const raw =
          'Failed request with Authorization: Bearer secret_bearer_token';
      final redacted = ErrorDecoder.redact(raw);
      expect(redacted, contains('Bearer [REDACTED]'));
      expect(redacted, isNot(contains('secret_bearer_token')));
    });

    test('safely truncates long bodies over 2000 characters', () {
      final longBody = 'A' * 3000;
      final sanitized = ErrorDecoder.sanitizeBody(longBody);
      expect(sanitized.length, lessThan(2100));
      expect(sanitized, contains('... [TRUNCATED]'));
    });

    test('decodes 401 as NotAuthenticated', () {
      final res = http.Response(
        jsonEncode({'message': 'Bad credentials'}),
        401,
        headers: {'content-type': 'application/json'},
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<NotAuthenticated>()
            .having((e) => e.statusCode, 'statusCode', 401)
            .having((e) => e.message, 'message', contains('Bad credentials'))),
      );
    });

    test('decodes 403 secondary rate limit as RateLimitHit', () {
      final res = http.Response(
        jsonEncode({
          'message':
              'You have exceeded a secondary rate limit. Please wait a few minutes.',
        }),
        403,
        headers: {
          'content-type': 'application/json',
          'x-ratelimit-remaining': '0',
          'x-ratelimit-reset': '1700000000',
        },
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<RateLimitHit>()
            .having((e) => e.remaining, 'remaining', 0)
            .having((e) => e.reset, 'reset', isNotNull)),
      );
    });

    test('decodes 403 standard as AccessForbidden', () {
      final res = http.Response(
        jsonEncode({'message': 'Resource not accessible by integration'}),
        403,
        headers: {'content-type': 'application/json'},
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<AccessForbidden>()),
      );
    });

    test('decodes 404 as NotFound', () {
      final res = http.Response(
        jsonEncode({'message': 'Not Found'}),
        404,
        headers: {'content-type': 'application/json'},
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<NotFound>()),
      );
    });

    test('decodes 409 as Conflict', () {
      final res = http.Response(
        jsonEncode({'message': 'Merge conflict'}),
        409,
        headers: {'content-type': 'application/json'},
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<Conflict>()),
      );
    });

    test('decodes 422 as ValidationFailed with structured errors', () {
      final res = http.Response(
        jsonEncode({
          'message': 'Validation Failed',
          'errors': [
            {
              'resource': 'Issue',
              'field': 'title',
              'code': 'missing_field',
            }
          ]
        }),
        422,
        headers: {'content-type': 'application/json'},
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<ValidationFailed>()
            .having((e) => e.errors, 'errors', isNotEmpty)
            .having((e) => e.message, 'message', contains('Field: title'))),
      );
    });

    test('decodes 503 as ServiceUnavailable', () {
      final res = http.Response(
        'Service Unavailable',
        503,
        headers: {'content-type': 'text/plain'},
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<ServiceUnavailable>()),
      );
    });

    test('safely handles missing content-type and HTML error bodies', () {
      final res = http.Response(
        '<html><body>500 Internal Server Error</body></html>',
        500,
      );
      expect(
        () => ErrorDecoder.decode(github, res),
        throwsA(isA<ServerError>()),
      );
    });
  });

  group('GitHub Compatibility Wrappers', () {
    test(
        'request with statusCode: null returns response without throwing on 404',
        () async {
      final client = MockClient((request) async {
        return http.Response('Not Found', 404);
      });
      final gh = GitHub(client: client);
      final response = await gh.request('GET', '/user/following/nonexistent');
      expect(response.statusCode, equals(404));
      gh.dispose();
    });

    test(
        'requestJson handles 204 No Content returning null without FormatException',
        () async {
      final client = MockClient((request) async {
        return http.Response('', 204);
      });
      final gh = GitHub(client: client);
      final result = await gh.requestJson<Map<String, dynamic>, dynamic>(
          'DELETE', '/repos/o/r');
      expect(result, isNull);
      gh.dispose();
    });

    test('getJSON and postJSON execute through transport', () async {
      final client = MockClient((request) async {
        if (request.method == 'GET') {
          return http.Response('{"name":"repo"}', 200,
              headers: {'content-type': 'application/json'});
        } else if (request.method == 'POST') {
          return http.Response('{"created":true}', 201,
              headers: {'content-type': 'application/json'});
        }
        return http.Response('Not Found', 404);
      });
      final gh = GitHub(client: client);

      final getResult = await gh.getJSON<Map<String, dynamic>, String>(
          '/repos/o/r',
          convert: (m) => m['name'] as String);
      expect(getResult, equals('repo'));

      final postResult = await gh.postJSON<Map<String, dynamic>, bool>(
          '/repos/o/r/issues',
          statusCode: 201,
          body: {'title': 'New Issue'},
          convert: (m) => m['created'] as bool);
      expect(postResult, isTrue);
      gh.dispose();
    });
  });
}
