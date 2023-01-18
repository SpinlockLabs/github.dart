import 'dart:convert';

import 'package:github/src/common/model/checks.dart';
import 'package:test/test.dart';

/// The checkSuite Json is composed from multiple GitHub examples
///
/// See https://docs.github.com/en/rest/checks/runs?apiVersion=2022-11-28
/// See https://docs.github.com/en/rest/checks/suites?apiVersion=2022-11-28
const checkSuiteJson = '''{
  "id": 5,
  "head_branch": "main",
  "head_sha": "d6fde92930d4715a2b49857d24b940956b26d2d3",
  "conclusion": "neutral",
  "pull_requests": [
    {
      "url": "https://api.github.com/repos/github/hello-world/pulls/1",
      "id": 1934,
      "number": 3956,
      "head": {
        "ref": "say-hello",
        "sha": "3dca65fa3e8d4b3da3f3d056c59aee1c50f41390",
        "repo": {
          "id": 526,
          "url": "https://api.github.com/repos/github/hello-world",
          "name": "hello-world"
        }
      },
      "base": {
        "ref": "master",
        "sha": "e7fdf7640066d71ad16a86fbcbb9c6a10a18af4f",
        "repo": {
          "id": 526,
          "url": "https://api.github.com/repos/github/hello-world",
          "name": "hello-world"
        }
      }
    }
  ]
}''';

const String expectedToString =
    '{"name":"mighty_readme","id":4,"external_id":"","status":"completed","head_sha":"","check_suite":{"id":5},"details_url":"https://example.com","started_at":"2018-05-04T01:14:52.000Z","conclusion":"neutral"}';

void main() {
  group('Check suite', () {
    test('CheckSuite fromJson', () {
      final checkSuite = CheckSuite.fromJson(jsonDecode(checkSuiteJson));

      expect(checkSuite.id, 5);
      expect(checkSuite.headBranch, 'main');
      expect(checkSuite.headSha, 'd6fde92930d4715a2b49857d24b940956b26d2d3');
      expect(checkSuite.conclusion, CheckRunConclusion.neutral);
    });

    test('CheckSuite fromJson for skipped conclusion', () {
      /// The checkSuite Json is composed from multiple GitHub examples
      ///
      /// See https://docs.github.com/en/rest/checks/runs?apiVersion=2022-11-28
      /// See https://docs.github.com/en/rest/checks/suites?apiVersion=2022-11-28
      const checkSuiteJson = '''{
        "id": 10,
        "head_branch": "master",
        "head_sha": "ce587453ced02b1526dfb4cb910479d431683101",
        "conclusion": "skipped",
        "pull_requests": [
          {
            "url": "https://api.github.com/repos/github/hello-world/pulls/1",
            "id": 1934,
            "number": 3956,
            "head": {
              "ref": "say-hello",
              "sha": "3dca65fa3e8d4b3da3f3d056c59aee1c50f41390",
              "repo": {
                "id": 526,
                "url": "https://api.github.com/repos/github/hello-world",
                "name": "hello-world"
              }
            },
            "base": {
              "ref": "master",
              "sha": "e7fdf7640066d71ad16a86fbcbb9c6a10a18af4f",
              "repo": {
                "id": 526,
                "url": "https://api.github.com/repos/github/hello-world",
                "name": "hello-world"
              }
            }
          }
        ]
      }''';
      final checkSuite = CheckSuite.fromJson(jsonDecode(checkSuiteJson));

      expect(checkSuite.id, 10);
      expect(checkSuite.headBranch, 'master');
      expect(checkSuite.headSha, 'ce587453ced02b1526dfb4cb910479d431683101');
      expect(checkSuite.conclusion, CheckRunConclusion.skipped);
    });
  });
}
