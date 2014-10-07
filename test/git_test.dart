library github.test.git_test;

import 'dart:convert' show JSON;
import 'dart:async';
import 'package:unittest/unittest.dart';
import 'package:mock/mock.dart';
import 'helper.dart';
import 'package:github/http.dart' as http;

// Subject Under Test: git_service.dart.
import 'package:github/common.dart'; 

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
  
  //
  // BLOB
  //
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
  
  
  //
  // COMMIT
  //
  group('getCommit()', () {
    test('constructs correct path', () {
      git.getCommit(repo, 'sh');
      
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/commits/sh')).verify(happenedOnce);
    });
  });
  
  group('createCommit()', () {
    test('constructs correct path', () {
      CreateGitCommit commit = new CreateGitCommit('aMessage', 'aTreeSha');
      git.createCommit(repo, commit);
      
      github.getLogs(callsTo('postJSON', '/repos/o/n/git/commits')).verify(happenedOnce);
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
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);
      
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
  
  
  //
  // REFERENCE
  //
  group('getReference()', () {
    test('constructs correct path', () {
      git.getReference(repo, 'heads/b');
      
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/refs/heads/b')).verify(happenedOnce);
    });
  });
  
  group('createReference()', () {
    test('constructs correct path', () {
      git.createReference(repo, 'refs/heads/b', 'someSHA');
      
      github.getLogs(callsTo('postJSON', '/repos/o/n/git/refs')).verify(happenedOnce);
    });
    
    test('creates valid JSON body', () {
      git.createReference(repo, 'refs/heads/b', 'someSHA');
      
      // then
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);
      
      expect(body['ref'], equals('refs/heads/b'));
      expect(body['sha'], equals('someSHA'));
    });
  });
  
  group('editReference()', () {
    test('constructs correct path', () {
      // given
      http.Response res = new http.Response('{}', null, null);
      github.when(callsTo('request', anything, anything)).alwaysReturn(new Future.value(res));
      
      // when
      git.editReference(repo, 'heads/b', 'someSHA');
      
      // then
      github.getLogs(callsTo('request', 'PATCH', '/repos/o/n/git/refs/heads/b')).verify(happenedOnce);
    });
    
    test('creates valid JSON body', () {
      // given
      http.Response res = new http.Response('{}', null, null);
      github.when(callsTo('request', anything, anything)).alwaysReturn(new Future.value(res));
      
      // when
      git.editReference(repo, 'heads/b', 'someSHA', force: true);
      
      // then
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);
      Map headers = entry.namedArgs[#headers];
      
      expect(body['sha'], equals('someSHA'));
      expect(body['force'], equals(true));
      expect(headers['content-length'], equals('30'));
    });
  });
  
  group('deleteReference()', () {
    test('constructs correct path', () {
      // given
      http.Response res = new http.Response('{}', null, null);
      github.when(callsTo('request', anything, anything)).alwaysReturn(new Future.value(res));
      
      // when
      git.deleteReference(repo, 'heads/b');
      
      // then
      github.getLogs(callsTo('request', 'DELETE', '/repos/o/n/git/refs/heads/b')).verify(happenedOnce);
    });
  });

  
  //
  // TAG
  //
  group('getTag()', () {
    test('constructs correct path', () {
      git.getTag(repo, 'someSHA');
      
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/tags/someSHA')).verify(happenedOnce);
    });
  });
  
  group('createTag()', () {
    test('constructs correct path', () {
      git.createTag(repo, new CreateGitTag('v0.0.1', 'a message', 'someSHA', 'commit', 
          new GitCommitUser('aName', 'aEmail', new DateTime.now())));
      
      github.getLogs(callsTo('postJSON', '/repos/o/n/git/tags')).verify(happenedOnce);
    });
    
    test('creates valid JSON body', () {
      git.createTag(repo, new CreateGitTag('v0.0.1', 'a message', 'someSHA', 'commit', 
          new GitCommitUser('aName', 'aEmail', new DateTime.now())));
      
      LogEntryNamedArgs entry = github.getLogs().first;
      Map body = JSON.decode(entry.namedArgs[#body]);
      
      expect(body['tag'], equals('v0.0.1'));
      expect(body['message'], equals('a message'));
      expect(body['object'], equals('someSHA'));
      expect(body['type'], equals('commit'));
      expect(body['tagger']['name'], equals('aName'));
    });
  });
  
  
  // 
  // TREE
  //
  //
  // TREE
  //
  group('getTree()', () {
    test('constructs correct path', () {
      git.getTree(repo, 'sh');
      
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/trees/sh')).verify(happenedOnce);
    });
  });
  
  group('getTree(recursive: true)', () {
    test('constructs correct path', () {
      git.getTree(repo, 'sh', recursive: true);
      
      github.getLogs(callsTo('getJSON', '/repos/o/n/git/trees/sh?recursive=1')).verify(happenedOnce);
    });
  });
  
  group('createTree()', () {
    test('constructs correct path', () {
      git.createTree(repo, new CreateGitTree([]));
      
      github.getLogs(callsTo('postJSON', '/repos/o/n/git/trees')).verify(happenedOnce);
    });
    
    test('with sha creates valid JSON body', () {
      // given
      var treeEntry = new CreateGitTreeEntry(
          'file.rb', '100644', 'blob', 
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
      expect(body['tree'][0]['sha'], equals('44b4fc6d56897b048c772eb4087f854f46256132'));
      expect(body['tree'][0]['content'], isNull);
    });
    
    test('with content creates valid JSON body', () {
      // given
      var treeEntry = new CreateGitTreeEntry(
          'file.rb', '100644', 'blob', 
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