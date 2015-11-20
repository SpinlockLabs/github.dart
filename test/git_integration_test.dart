library github.test.integration.git_integration_test;

import 'package:github/server.dart';

import 'package:test/test.dart';

main() {
  String firstCommitSha;
  String firstCommitTreeSha;

  String createdTreeSha;
  String createdCommitSha;

  GitHub github;
  RepositorySlug slug;

  setUpAll(() {
    var authToken = '<some token>';
    var repoOwner = '<some user/org>';
    var repoName = '<some repo>';

    github = createGitHubClient(auth: new Authentication.withToken(authToken));
    slug = new RepositorySlug(repoOwner, repoName);
  });

  tearDownAll(() {
    github.dispose();
  });

  // Test definitions.
  test('get last commit of master', () async {
    var branch = await github.repositories.getBranch(slug, 'master');
    firstCommitSha = branch.commit.sha;
    firstCommitTreeSha = branch.commit.tree.sha;
  });

  test('create and get a new blob', () {
    CreateGitBlob newBlob = new CreateGitBlob('bbb', 'utf-8');

    var createdBlobSha;

    // createBlob()
    return github.git.createBlob(slug, newBlob).then((createdBlob) {
      createdBlobSha = createdBlob.sha;

      // getBlob()
      return github.git.getBlob(slug, createdBlobSha);
    }).then((fetchedBlob) {
      expect(base64ToUtf8(fetchedBlob.content), equals('bbb'));
      expect(fetchedBlob.encoding, equals('base64'));
      expect(
          fetchedBlob.url,
          equals(
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
    var branchName = _randomGitName();

    return github.git
        .createReference(slug, 'refs/heads/$branchName', createdCommitSha)
        .then((createdRef) {
      return github.git.getReference(slug, 'heads/$branchName');
    }).then((fetchedRef) {
      expect(fetchedRef.ref, equals('refs/heads/$branchName'));
      expect(fetchedRef.object.type, equals('commit'));
      expect(fetchedRef.object.sha, equals(createdCommitSha));
    });
  });

  test('create and get a new tag', () {
    var tagName = 'v${_randomGitName()}';

    String createdTagSha;

    var newTag = new CreateGitTag(tagName, 'Version 0.0.1', createdCommitSha,
        'commit', new GitCommitUser('aName', 'aEmail', new DateTime.now()));

    // createTag()
    return github.git.createTag(slug, newTag).then((createdTag) {
      createdTagSha = createdTag.sha;

      // getTag()
      return github.git.getTag(slug, createdTagSha);
    }).then((fetchedTag) {
      expect(fetchedTag.tag, equals(tagName));
      expect(fetchedTag.sha, equals(createdTagSha));
      expect(fetchedTag.message, equals('Version 0.0.1'));
      expect(fetchedTag.tagger.name, equals('aName'));
      expect(fetchedTag.object.sha, equals(createdCommitSha));
    }).then((_) {
      // Create a reference for the tag.
      return github.git
          .createReference(slug, 'refs/tags/$tagName', createdTagSha);
    });
  });
}

String _randomGitName() {
  var now = new DateTime.now().toIso8601String().replaceAll(':', '_');

  return now.toString();
}
