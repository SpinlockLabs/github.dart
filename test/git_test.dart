import 'dart:async';
import 'dart:convert';

import 'package:github/src/common.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockGitHub extends Mock implements GitHub {}

void main() {
  MockGitHub github;
  GitService git;
  RepositorySlug repo;
  const someSha = 'someSHA';

  setUp(() {
    github = MockGitHub();
    git = GitService(github);
    repo = RepositorySlug('o', 'n');
  });

  group('getBlob()', () {
    test('constructs correct path', () {
      git.getBlob(repo, 'sh');

      verify(github.getJSON('/repos/o/n/git/blobs/sh',
          convert: (i) => GitBlob.fromJson(i), statusCode: StatusCodes.OK));
    });
  });

  group('createBlob()', () {
    test('constructs correct path', () {
      var blob = CreateGitBlob('bbb', 'utf-8');
      git.createBlob(repo, blob);

      verify(github.postJSON(
        '/repos/o/n/git/blobs',
        convert: (i) => GitBlob.fromJson(i),
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode(blob),
      ));
    });

    test('creates valid JSON body', () {
      var blob = CreateGitBlob('bbb', 'utf-8');

      git.createBlob(repo, blob);
      final body = captureSentBody(github);
      expect(body['content'], equals('bbb'));
      expect(body['encoding'], equals('utf-8'));
    });
  });

  group('getCommit()', () {
    test('constructs correct path', () {
      git.getCommit(repo, 'sh');

      verify(github.getJSON('/repos/o/n/git/commits/sh',
          convert: (i) => GitCommit.fromJson(i), statusCode: StatusCodes.OK));
    });
  });

  group('createCommit()', () {
    test('constructs correct path', () {
      final commit = CreateGitCommit('aMessage', 'aTreeSha');
      git.createCommit(repo, commit);

      verify(github.postJSON(
        '/repos/o/n/git/commits',
        convert: (i) => GitCommit.fromJson(i),
        statusCode: StatusCodes.CREATED,
        body: GitHubJson.encode(commit),
      ));
    });

    test('creates valid JSON body', () {
      // given
      const date = '2014-10-02T15:21:29Z';

      final commit = CreateGitCommit('aMessage', 'aTreeSha')
        ..parents = ['parentSha1', 'parentSha2']
        ..committer = GitCommitUser('cName', 'cEmail', parseDateTime(date))
        ..author = GitCommitUser('aName', 'aEmail', parseDateTime(date));

      // when
      git.createCommit(repo, commit);

      // then
      final body = captureSentBody(github);
      expect(body['message'], equals('aMessage'));
      expect(body['tree'], equals('aTreeSha'));
      expect(body['parents'], equals(['parentSha1', 'parentSha2']));
      expect(body['committer']['name'], equals('cName'));
      expect(body['committer']['email'], equals('cEmail'));
      expect(body['committer']['date'], equals(date));
      expect(body['author']['name'], equals('aName'));
      expect(body['author']['email'], equals('aEmail'));
      expect(body['author']['date'], equals(date));
    });
  });

  group('getReference()', () {
    test('constructs correct path', () {
      git.getReference(repo, 'heads/b');

      verify(github.getJSON('/repos/o/n/git/refs/heads/b',
          convert: (i) => GitReference.fromJson(i),
          statusCode: StatusCodes.OK));
    });
  });

  group('createReference()', () {
    const someRef = 'refs/heads/b';
    test('constructs correct path', () {
      git.createReference(repo, someRef, someSha);

      verify(github.postJSON('/repos/o/n/git/refs',
          convert: (i) => GitReference.fromJson(i),
          statusCode: StatusCodes.CREATED,
          body: GitHubJson.encode({'ref': someRef, 'sha': someSha})));
    });

    test('creates valid JSON body', () {
      git.createReference(repo, someRef, someSha);

      final body = captureSentBody(github);
      expect(body['ref'], equals(someRef));
      expect(body['sha'], equals(someSha));
    });
  });

  group('editReference()', () {
    test('constructs correct path', () {
      // given
      final expectedResponse = http.Response('{}', 200);

      when(github.request(any, any, body: any, headers: any))
          .thenReturn(Future.value(expectedResponse));

      // when
      git.editReference(repo, 'heads/b', someSha);

      // then
      verify(github.request('PATCH', '/repos/o/n/git/refs/heads/b',
          headers: any, body: any));
    });

    test('creates valid JSON body', () {
      // given
      final expectedResponse = http.Response('{}', 200);
      when(github.request(any, any, body: any, headers: any))
          .thenReturn(Future.value(expectedResponse));

      // when
      git.editReference(repo, 'heads/b', someSha, force: true);

      // then
      final captured = verify(github.request(
        any,
        any,
        body: captureAny,
        headers: captureAny,
      )).captured;

      final body = jsonDecode(captured[0]);
      final headers = captured[1];

      expect(body['sha'], equals(someSha));
      expect(body['force'], equals(true));
      expect(headers['content-length'], equals('30'));
    });
  });

  group('deleteReference()', () {
    test('constructs correct path', () {
      // given
      final expectedResponse = http.Response('{}', 200);
      when(github.request(any, any)).thenReturn(Future.value(expectedResponse));

      // when
      git.deleteReference(repo, 'heads/b');

      // then
      verify(github.request('DELETE', '/repos/o/n/git/refs/heads/b'));
    });
  });

  group('getTag()', () {
    test('constructs correct path', () {
      git.getTag(repo, someSha);

      verify(github.getJSON('/repos/o/n/git/tags/someSHA',
          convert: (i) => GitTag.fromJson(i), statusCode: StatusCodes.OK));
    });
  });

  group('createTag()', () {
    final createGitTag = CreateGitTag('v0.0.1', 'a message', someSha, 'commit',
        GitCommitUser('aName', 'aEmail', DateTime.now()));

    test('constructs correct path', () {
      git.createTag(repo, createGitTag);

      verify(github.postJSON('/repos/o/n/git/tags',
          convert: (i) => GitTag.fromJson(i),
          statusCode: StatusCodes.CREATED,
          body: GitHubJson.encode(createGitTag)));
    });

    test('creates valid JSON body', () {
      git.createTag(repo, createGitTag);

      final body = captureSentBody(github);
      expect(body['tag'], equals('v0.0.1'));
      expect(body['message'], equals('a message'));
      expect(body['object'], equals(someSha));
      expect(body['type'], equals('commit'));
      expect(body['tagger']['name'], equals('aName'));
    });
  });

  group('getTree()', () {
    test('constructs correct path', () {
      git.getTree(repo, 'sh');

      verify(github.getJSON('/repos/o/n/git/trees/sh',
          convert: (j) => GitTree.fromJson(j), statusCode: StatusCodes.OK));
    });
  });

  group('getTree(recursive: true)', () {
    test('constructs correct path', () {
      git.getTree(repo, 'sh', recursive: true);

      verify(github.getJSON('/repos/o/n/git/trees/sh?recursive=1',
          convert: (j) => GitTree.fromJson(j), statusCode: StatusCodes.OK));
    });
  });

  group('createTree()', () {
    test('constructs correct path', () {
      final createGitTree = CreateGitTree([]);
      git.createTree(repo, createGitTree);

      verify(github.postJSON('/repos/o/n/git/trees',
          convert: (j) => GitTree.fromJson(j),
          statusCode: StatusCodes.CREATED,
          body: GitHubJson.encode(createGitTree)));
    });

    test('with sha creates valid JSON body', () {
      // given
      var treeEntry = CreateGitTreeEntry('file.rb', '100644', 'blob',
          sha: '44b4fc6d56897b048c772eb4087f854f46256132');

      final tree = CreateGitTree([treeEntry]);

      // when
      git.createTree(repo, tree);

      // then
      final body = captureSentBody(github);
      expect(body['tree'], isNotNull);
      expect(body['tree'][0]['path'], equals('file.rb'));
      expect(body['tree'][0]['mode'], equals('100644'));
      expect(body['tree'][0]['type'], equals('blob'));
      expect(body['tree'][0]['sha'],
          equals('44b4fc6d56897b048c772eb4087f854f46256132'));
      expect(body['tree'][0]['content'], isNull);
    });

    test('with content creates valid JSON body', () {
      // given
      var treeEntry = CreateGitTreeEntry('file.rb', '100644', 'blob',
          content: 'some file content');

      final tree = CreateGitTree([treeEntry]);

      // when
      git.createTree(repo, tree);

      // then
      final body = captureSentBody(github);
      expect(body['tree'], isNotNull);
      expect(body['tree'][0]['path'], equals('file.rb'));
      expect(body['tree'][0]['mode'], equals('100644'));
      expect(body['tree'][0]['type'], equals('blob'));
      expect(body['tree'][0]['sha'], isNull);
      expect(body['tree'][0]['content'], equals('some file content'));
    });
  });
}

Map<String, dynamic> captureSentBody(MockGitHub github) {
  final bodyString = verify(github.postJSON(
    any,
    convert: any,
    statusCode: any,
    body: captureAny,
  )).captured.single;

  final body = jsonDecode(bodyString) as Map<String, dynamic>;
  return body;
}
