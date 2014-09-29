library github.test.git_test;

import 'dart:convert' show JSON;
import 'package:unittest/unittest.dart';
import 'package:mock/mock.dart';
import 'helper.dart';

import 'package:github/common.dart'; // git.dart is subject under test.

class MockGitHub extends MockWithNamedArgs implements GitHub {  
  // This removes the compiler warning.
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

main() {
  MockGitHub github;
  GitService git;
  RepositorySlug repo;
  
  setUp(() {
    github = new MockGitHub();
    git = new GitService(github);
    repo = new RepositorySlug('o', 'n');
  });
  
  group('getBlob()', () {
    test('constructs correct path', () {
      git.getBlob(repo, 'sh');
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/blobs/sh')).verify(happenedOnce);
    });
  });
  
  group('createBlob()', () {
    test('constructs correct path', () {
      CreateGitBlob blob = new CreateGitBlob('bbb', 'utf-8');
      git.createBlob(repo, blob);
      
      github.getLogs(callsTo('postJSON', '/repos/o/n/git/blobs')).verify(happenedOnce);
    });
    
    test('creates valid JSON body', () {
      CreateGitBlob blob = new CreateGitBlob('bbb', 'utf-8');
      git.createBlob(repo, blob);
      
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);
      
      expect(body['content'], equals('bbb'));
      expect(body['encoding'], equals('utf-8'));
    });
  });
  
  group('getCommit()', () {
    test('constructs correct path', () {
      git.getCommit(repo, 'sh');
      
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/commits/sh')).verify(happenedOnce);
    });
  });
}