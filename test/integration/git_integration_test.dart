library github.test.integration.git_integration_test;

import 'dart:async';
import 'dart:convert' show UTF8;
import 'package:crypto/crypto.dart' show CryptoUtils;
import 'package:unittest/unittest.dart';

import 'config/config.dart' as config;

import 'package:github/server.dart';
import 'package:github/common.dart'; // git.dart is the subject under test.

main() {
  GitHub github;
  GitService git;
  RepositorySlug repo;
  
  setUp(() {
    initGitHub();
    github = createGitHubClient(auth: new Authentication.withToken(config.authToken));
    git = new GitService(github);
    repo = new RepositorySlug(config.repoOwner, config.repoName);
  });
  
  group('createBlob() and getBlob()', () {
    test('- blob successfully created', () {
      CreateGitBlob newBlob = new CreateGitBlob('bbb', 'utf-8');
      Future<GitBlob> blobCreation = git.createBlob(repo, newBlob);
      
      return blobCreation.then((GitBlob createdBlob) {
        String sha = createdBlob.sha;
        
        Future<GitBlob> blobFetching = git.getBlob(repo, sha);

        return blobFetching.then((GitBlob fetchedBlob) {
          expect(fetchedBlob.encoding, equals('base64'));
          expect(fetchedBlob.sha, equals(sha));
          expect(base64ToUTF8(fetchedBlob.content), equals('bbb'));
        });
      });
      
    });
  });
}

/// Converts from a Base64 String to a UTF-8 String.
String base64ToUTF8(String base64) {
  var bytes = CryptoUtils.base64StringToBytes(base64);
  return UTF8.decode(bytes);
}