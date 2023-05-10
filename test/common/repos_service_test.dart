import 'package:github/src/common.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

import 'data/repos_json.dart';

void main() {
  final slug = RepositorySlug('SpinlockLabs', 'github.dart');
  RepositoriesService create(Future<Response> Function(Request) f) {
    final client = MockClient(f);
    final github = GitHub(client: client);
    return RepositoriesService(github);
  }

  test('listCommits', () async {
    final repositories = create((request) async {
      expect(request.url.path, '/repos/${slug.fullName}/commits');
      expect(request.url.query, 'page=1');

      return Response(listCommits, StatusCodes.OK);
    });
    final commits = await repositories.listCommits(slug).toList();
    expect(commits, hasLength(1));
  });

  test('listCommits with query params', () async {
    final repositories = create((request) async {
      expect(request.url.path, '/repos/${slug.fullName}/commits');
      expect(
        request.url.query,
        'author=octocat&committer=octodog&sha=abc&path=%2Fpath&since=2022-02-22T00%3A00%3A00.000&until=2023-02-22T00%3A00%3A00.000&page=1',
      );
      return Response(listCommits, StatusCodes.OK);
    });
    final commits = await repositories
        .listCommits(
          slug,
          sha: 'abc',
          path: '/path',
          author: 'octocat',
          committer: 'octodog',
          since: DateTime(2022, 2, 22),
          until: DateTime(2023, 2, 22),
        )
        .toList();
    expect(commits, hasLength(1));
  });
}
