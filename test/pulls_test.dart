import 'dart:async';

import 'package:github/src/common.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'src/mocks.mocks.dart';

void main() {
  late MockGitHub github;
  late PullRequestsService pulls;
  late RepositorySlug repo;
  const someSha = 'someSHA';

  setUp(() {
    github = MockGitHub();
    pulls = PullRequestsService(github);
    repo = RepositorySlug('o', 'n');
  });

  group('Merge', () {
    test('Merge() normal', () async {
      const expectedMessage = 'Pull Request successfully merged';
      const expectedMerge = true;

      when(github.request(any, any, headers: anyNamed("headers"), body: anyNamed("body")))
          .thenAnswer((_) => Future.value(
        http.Response('''{
          "sha": "$someSha",
          "merged": $expectedMerge,
          "message": "$expectedMessage"
        }''', 200)
      ));
      
      var pullRequestMerge = await pulls.merge(repo, 1);

      verify(github.request('PUT', '/repos/o/n/pulls/1/merge', 
          headers: anyNamed("headers"), body: '''{"merge_method":"merge"}'''));

      expect(pullRequestMerge.merged, isTrue);
      expect(pullRequestMerge.message, expectedMessage);
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with squash', () async {
      const expectedMessage = 'Pull Request successfully merged';
      const expectedMerge = true;

      when(github.request(any, any, headers: anyNamed("headers"), body: anyNamed("body")))
          .thenAnswer((_) => Future.value(
        http.Response('''{
          "sha": "$someSha",
          "merged": $expectedMerge,
          "message": "$expectedMessage"
        }''', 200)
      ));
      
      var pullRequestMerge = await pulls.merge(repo, 1, mergeMethod: MergeMethod.squash);

      verify(github.request('PUT', '/repos/o/n/pulls/1/merge', 
          headers: anyNamed("headers"), body: '''{"merge_method":"squash"}'''));

      expect(pullRequestMerge.merged, isTrue);
      expect(pullRequestMerge.message, expectedMessage);
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with rebase', () async {
      const expectedMessage = 'Pull Request successfully merged';
      const expectedMerge = true;

      when(github.request(any, any, headers: anyNamed("headers"), body: anyNamed("body")))
          .thenAnswer((_) => Future.value(
        http.Response('''{
          "sha": "$someSha",
          "merged": $expectedMerge,
          "message": "$expectedMessage"
        }''', 200)
      ));
      
      var pullRequestMerge = await pulls.merge(repo, 1, mergeMethod: MergeMethod.rebase);

      verify(github.request('PUT', '/repos/o/n/pulls/1/merge', 
          headers: anyNamed("headers"), body: '''{"merge_method":"rebase"}'''));

      expect(pullRequestMerge.merged, isTrue);
      expect(pullRequestMerge.message, expectedMessage);
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with commitMessage', () async {
      const expectedMessage = 'Pull Request successfully merged';
      const expectedMerge = true;
      const commitMessage = 'Some message';

      when(github.request(any, any, headers: anyNamed("headers"), body: anyNamed("body")))
          .thenAnswer((_) => Future.value(
        http.Response('''{
          "sha": "$someSha",
          "merged": $expectedMerge,
          "message": "$expectedMessage"
        }''', 200)
      ));
      
      var pullRequestMerge = await pulls.merge(repo, 1, message: commitMessage, mergeMethod: MergeMethod.squash);

      verify(github.request('PUT', '/repos/o/n/pulls/1/merge', 
          headers: anyNamed("headers"), body: '''{"commit_message":"$commitMessage","merge_method":"squash"}'''));

      expect(pullRequestMerge.merged, isTrue);
      expect(pullRequestMerge.message, expectedMessage);
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with commitMessage, with sha', () async {
      const expectedMessage = 'Pull Request successfully merged';
      const expectedMerge = true;
      const commitMessage = 'Some message';
      const commitSha = 'commitSha';

      when(github.request(any, any, headers: anyNamed("headers"), body: anyNamed("body")))
          .thenAnswer((_) => Future.value(
        http.Response('''{
          "sha": "$someSha",
          "merged": $expectedMerge,
          "message": "$expectedMessage"
        }''', 200)
      ));
      
      var pullRequestMerge = await pulls.merge(repo, 1, message: commitMessage, 
          mergeMethod: MergeMethod.squash, requestSha: commitSha);

      verify(github.request('PUT', '/repos/o/n/pulls/1/merge', 
          headers: anyNamed("headers"), 
          body: '''{"commit_message":"$commitMessage","sha":"$commitSha","merge_method":"squash"}'''));

      expect(pullRequestMerge.merged, isTrue);
      expect(pullRequestMerge.message, expectedMessage);
      expect(pullRequestMerge.sha, someSha);
    });
  });
}