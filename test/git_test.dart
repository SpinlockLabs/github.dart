library github.test.git_test;

import 'dart:async';
import 'dart:convert' show JSON;

import 'package:github/src/common.dart';
import 'package:github/src/util.dart';
import "package:http/http.dart" as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'helper.dart';

//class MockGitHub extends MockWithNamedArgs implements GitHub {}

class MockGitHub extends Mock implements GitHub {}

void main() {
  MockGitHub github;
  GitService git;
  RepositorySlug repo;
  var someSha = 'someSHA';

  setUp(() {
    github = new MockGitHub();
    git = new GitService(github);
    repo = new RepositorySlug('o', 'n');
  });

  group('getBlob()', () {
    test('constructs correct path', () {
      git.getBlob(repo, 'sh');

      verify(github.getJSON('/repos/o/n/git/blobs/sh',
          convert: GitBlob.fromJSON, statusCode: StatusCodes.OK));
    });
  });

  group('createBlob()', () {
    test('constructs correct path', () {
      CreateGitBlob blob = new CreateGitBlob('bbb', 'utf-8');
      git.createBlob(repo, blob);

      verify(github.postJSON('/repos/o/n/git/blobs',
          convert: GitBlob.fromJSON,
          statusCode: StatusCodes.CREATED,
          body: blob.toJSON()));
    });

    test('creates valid JSON body', () {
      CreateGitBlob blob = new CreateGitBlob('bbb', 'utf-8');

      git.createBlob(repo, blob);
      var body = captureSentBody(github);
      expect(body['content'], equals('bbb'));
      expect(body['encoding'], equals('utf-8'));
    });
  });

  group('getCommit()', () {
    test('constructs correct path', () {
      git.getCommit(repo, 'sh');

      verify(github.getJSON('/repos/o/n/git/commits/sh',
          convert: GitCommit.fromJSON, statusCode: StatusCodes.OK));
    });
  });

  group('createCommit()', () {
    test('constructs correct path', () {
      CreateGitCommit commit = new CreateGitCommit('aMessage', 'aTreeSha');
      git.createCommit(repo, commit);

      verify(github.postJSON('/repos/o/n/git/commits',
          convert: GitCommit.fromJSON,
          statusCode: StatusCodes.CREATED,
          body: commit.toJSON()));
    });

    test('creates valid JSON body', () {
      // given
      String date = '2014-10-02T15:21:29Z';

      CreateGitCommit commit = new CreateGitCommit('aMessage', 'aTreeSha')
        ..parents = ['parentSha1', 'parentSha2']
        ..committer = new GitCommitUser('cName', 'cEmail', parseDateTime(date))
        ..author = new GitCommitUser('aName', 'aEmail', parseDateTime(date));

      // when
      git.createCommit(repo, commit);

      // then
      var body = captureSentBody(github);
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
          convert: GitReference.fromJSON, statusCode: StatusCodes.OK));
    });
  });

  group('createReference()', () {
    var someRef = 'refs/heads/b';
    test('constructs correct path', () {
      git.createReference(repo, someRef, someSha);

      verify(github.postJSON('/repos/o/n/git/refs',
          convert: GitReference.fromJSON,
          statusCode: StatusCodes.CREATED,
          body: JSON.encode({'ref': someRef, 'sha': someSha})));
    });

    test('creates valid JSON body', () {
      git.createReference(repo, someRef, someSha);

      var body = captureSentBody(github);
      expect(body['ref'], equals(someRef));
      expect(body['sha'], equals(someSha));
    });
  });

  group('editReference()', () {
    test('constructs correct path', () {
      // given
      http.Response expectedResponse = new http.Response('{}', 200);

      when(github.request(any, any,
              body: any, headers: typed(any, named: 'headers')))
          .thenReturn(new Future.value(expectedResponse));

      // when
      git.editReference(repo, 'heads/b', someSha);

      // then
      verify(github.request('PATCH', '/repos/o/n/git/refs/heads/b',
          headers: typed(any, named: 'headers'), body: any));
    });

    test('creates valid JSON body', () {
      // given
      http.Response res = new http.Response('{}', 200);
      github
          .when(callsTo('request', anything, anything))
          .alwaysReturn(new Future.value(res));

      // when
      git.editReference(repo, 'heads/b', someSha, force: true);

      // then
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);
      Map headers = entry.namedArgs[#headers];

      expect(body['sha'], equals(someSha));
      expect(body['force'], equals(true));
      expect(headers['content-length'], equals('30'));
    });
  });

  group('deleteReference()', () {
    test('constructs correct path', () {
      // given
      http.Response res = new http.Response('{}', 200);
      github
          .when(callsTo('request', anything, anything))
          .alwaysReturn(new Future.value(res));

      // when
      git.deleteReference(repo, 'heads/b');

      // then
      github
          .getLogs(callsTo('request', 'DELETE', '/repos/o/n/git/refs/heads/b'))
          .verify(happenedOnce);
    });
  });

  group('getTag()', () {
    test('constructs correct path', () {
      git.getTag(repo, someSha);

      github
          .getLogs(callsTo('getJSON', '/repos/o/n/git/tags/someSHA'))
          .verify(happenedOnce);
    });
  });

  group('createTag()', () {
    test('constructs correct path', () {
      git.createTag(
          repo,
          new CreateGitTag('v0.0.1', 'a message', someSha, 'commit',
              new GitCommitUser('aName', 'aEmail', new DateTime.now())));

      github
          .getLogs(callsTo('postJSON', '/repos/o/n/git/tags'))
          .verify(happenedOnce);
    });

    test('creates valid JSON body', () {
      git.createTag(
          repo,
          new CreateGitTag('v0.0.1', 'a message', someSha, 'commit',
              new GitCommitUser('aName', 'aEmail', new DateTime.now())));

      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);

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

      github
          .getLogs(callsTo('getJSON', '/repos/o/n/git/trees/sh'))
          .verify(happenedOnce);
    });
  });

  group('getTree(recursive: true)', () {
    test('constructs correct path', () {
      git.getTree(repo, 'sh', recursive: true);

      github
          .getLogs(callsTo('getJSON', '/repos/o/n/git/trees/sh?recursive=1'))
          .verify(happenedOnce);
    });
  });

  group('createTree()', () {
    test('constructs correct path', () {
      git.createTree(repo, new CreateGitTree([]));

      github
          .getLogs(callsTo('postJSON', '/repos/o/n/git/trees'))
          .verify(happenedOnce);
    });

    test('with sha creates valid JSON body', () {
      // given
      var treeEntry = new CreateGitTreeEntry('file.rb', '100644', 'blob',
          sha: '44b4fc6d56897b048c772eb4087f854f46256132');

      var tree = new CreateGitTree([treeEntry]);

      // when
      git.createTree(repo, tree);

      // then
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);

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
      var treeEntry = new CreateGitTreeEntry('file.rb', '100644', 'blob',
          content: 'some file content');

      var tree = new CreateGitTree([treeEntry]);

      // when
      git.createTree(repo, tree);

      // then
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);

      expect(body['tree'], isNotNull);
      expect(body['tree'][0]['path'], equals('file.rb'));
      expect(body['tree'][0]['mode'], equals('100644'));
      expect(body['tree'][0]['type'], equals('blob'));
      expect(body['tree'][0]['sha'], isNull);
      expect(body['tree'][0]['content'], equals('some file content'));
    });
  });
}

captureSentBody(MockGitHub github) {
  var bodyString = verify(
          github.postJSON(any, convert: any, statusCode: any, body: captureAny))
      .captured
      .single;

  var body = JSON.decode(bodyString);
  return body;
}
