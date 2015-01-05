library github.test.integration.git_integration_test;

import 'package:unittest/unittest.dart';

import 'config/config.dart';

// Subject Under Test: git_service.dart.
import 'package:github/common.dart';

main() {
  var firstCommitSha;
  var firstCommitTreeSha;

  var createdBlobSha;
  var createdTreeSha;
  var createdCommitSha;
  var createdTagSha;

  // Test definitions.
  test('get last commit of master', () {
    return github.repositories.getBranch(slug, 'master').then((branch) {
      firstCommitSha = branch.commit.sha;
      firstCommitTreeSha = branch.commit.commit.tree.sha;
    });
  });

  test('create and get a new blob', () {
    CreateGitBlob newBlob = new CreateGitBlob('bbb', 'utf-8');

    // createBlob()
    return github.git.createBlob(slug, newBlob).then((createdBlob) {
      createdBlobSha = createdBlob.sha;

      // getBlob()
      return github.git.getBlob(slug, createdBlobSha);
    }).then((fetchedBlob) {
      expect(base64ToUtf8(fetchedBlob.content), equals('bbb'));
      expect(fetchedBlob.encoding, equals('base64'));
      expect(fetchedBlob.url, equals(
          'https://api.github.com/repos/${slug.fullName}/git/blobs/${createdBlobSha}'));
      expect(fetchedBlob.sha, equals(createdBlobSha));
      expect(fetchedBlob.size, equals(3));
    });
  });

  test('create and get a new tree', () {
    var entry1 = new CreateGitTreeEntry('README.md', '100644', 'blob',
        content: 'This is a repository for integration tests.');
    var entry2 = new CreateGitTreeEntry('subdir/asdf.txt', '100644', 'blob',
        content: 'Some file in a folder.');

    var newTree = new CreateGitTree([entry1, entry2])
      ..baseTree = firstCommitTreeSha;

    // createTree()
    return github.git.createTree(slug, newTree).then((createdTree) {
      createdTreeSha = createdTree.sha;

      // getTree()
      return github.git.getTree(slug, createdTreeSha);
    }).then((fetchedTree) {
      expect(fetchedTree.sha, equals(createdTreeSha));
      expect(fetchedTree.entries.length, equals(2));
    });
  });

  test('create and get a new commit', () {
    var newCommit = new CreateGitCommit('My test commit', createdTreeSha)
      ..parents = [firstCommitSha];

    // createCommit()
    return github.git.createCommit(slug, newCommit).then((createdCommit) {
      createdCommitSha = createdCommit.sha;

      // getCommit()
      return github.git.getCommit(slug, createdCommitSha);
    }).then((fetchedCommit) {
      expect(fetchedCommit.sha, equals(createdCommitSha));
      expect(fetchedCommit.message, equals('My test commit'));
      expect(fetchedCommit.tree.sha, equals(createdTreeSha));
      expect(fetchedCommit.parents.first.sha, equals(firstCommitSha));
    });
  });

  test('update heads/master reference to new commit', () {
    return github.git.editReference(slug, 'heads/master', createdCommitSha);
  });

  test('create and get a new reference (branch)', () {
    return github.git
        .createReference(slug, 'refs/heads/my-branch', createdCommitSha)
        .then((createdRef) {
      return github.git.getReference(slug, 'heads/my-branch');
    }).then((fetchedRef) {
      expect(fetchedRef.ref, equals('refs/heads/my-branch'));
      expect(fetchedRef.object.type, equals('commit'));
      expect(fetchedRef.object.sha, equals(createdCommitSha));
    });
  });

  test('create and get a new tag', () {
    var newTag = new CreateGitTag('v0.0.1', 'Version 0.0.1', createdCommitSha,
        'commit', new GitCommitUser('aName', 'aEmail', new DateTime.now()));

    // createTag()
    return github.git.createTag(slug, newTag).then((createdTag) {
      createdTagSha = createdTag.sha;

      // getTag()
      return github.git.getTag(slug, createdTagSha);
    }).then((fetchedTag) {
      expect(fetchedTag.tag, equals('v0.0.1'));
      expect(fetchedTag.sha, equals(createdTagSha));
      expect(fetchedTag.message, equals('Version 0.0.1'));
      expect(fetchedTag.tagger.name, equals('aName'));
      expect(fetchedTag.object.sha, equals(createdCommitSha));
    }).then((_) {
      // Create a reference for the tag.
      return github.git.createReference(
          slug, 'refs/tags/v0.0.1', createdTagSha);
    });
  });
}
