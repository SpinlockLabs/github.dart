import 'dart:io';

import 'package:github/src/common/github.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group(GitHub, () {  
    test('passes calendar version header', () async {
      Request? request;
      final client = MockClient((r) async {
        request = r;
        return Response('{}', HttpStatus.ok);
      });

      final github = GitHub(client: client);
      await github.getJSON(''); // Make HTTP request

      expect(request, isNotNull);
      expect(request!.headers.containsKey(GitHub.versionHeader), isTrue);
      final version = request!.headers[GitHub.versionHeader];
      expect(version, github.version);
    });
  });
}
