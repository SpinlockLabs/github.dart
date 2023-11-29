import 'dart:io';

import 'package:github/src/common.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  MiscService create(Future<Response> Function(Request) f) {
    final client = MockClient(f);
    final github = GitHub(client: client);
    return MiscService(github);
  }

  test('api status', () async {
    final miscService = create(
      (_) async => Response('''
{
  "page":{
    "id":"kctbh9vrtdwd",
    "name":"GitHub",
    "url":"https://www.githubstatus.com",
    "updated_at": "2023-11-29T08:03:04Z"
  },
  "status": {
    "description": "Partial System Outage",
    "indicator": "major"
  }
}''', HttpStatus.ok),
    );
    final status = await miscService.getApiStatus();
    expect(status.page, isNotNull);
    expect(status.page?.id, 'kctbh9vrtdwd');
    expect(status.status, isNotNull);
    expect(status.status?.indicator, 'major');
  });
}
