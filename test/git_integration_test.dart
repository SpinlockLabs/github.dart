import 'dart:convert';
import 'dart:io';

import 'package:github/github.dart';
import 'package:test/test.dart';

void main() {
  String firstCommitSha;
  String firstCommitTreeSha;

  String createdTreeSha;
  String createdCommitSha;

  GitHub github;
  RepositorySlug slug;

  setUpAll(() {
    final authToken = Platform.environment['GITHUB_API_TOKEN'];
    final repoOwner = Platform.environment['GITHUB_DART_TEST_REPO_OWNER'];
    final repoName = Platform.environment['GITHUB_DART_TEST_REPO_NAME'];

    github = GitHub(auth: Authentication.withToken(authToken));
    slug = RepositorySlug(repoOwner, repoName);
  });

  tearDownAll(() {
    github.dispose();
  });

  // Test definitions.
  test('get last commit of master', () async {
    final branch = await github.repositories.getBranch(slug, 'master');
    firstCommitSha = branch.commit.sha;
    firstCommitTreeSha = branch.commit.commit.sha;
  });

  test('create and get a new blob', () async {
    var newBlob = CreateGitBlob('bbb', 'utf-8');

    // createBlob()
    final createdBlob = await github.git.createBlob(slug, newBlob);
    final createdBlobSha = createdBlob.sha;

    final fetchedBlob = await github.git.getBlob(slug, createdBlobSha);

    final base64Decoded = base64Decode(fetchedBlob.content);

    expect(utf8.decode(base64Decoded), equals('bbb'));
    expect(fetchedBlob.encoding, equals('base64'));
    expect(
        fetchedBlob.url,
        equals(
            'https://api.github.com/repos/${slug.fullName}/git/blobs/$createdBlobSha'));
    expect(fetchedBlob.sha, equals(createdBlobSha));
    expect(fetchedBlob.size, equals(3));
  });

  test('create and get a new tree', () async {
    var entry1 = CreateGitTreeEntry('README.md', '100644', 'blob',
        content: 'This is a repository for integration tests.');
    var entry2 = CreateGitTreeEntry('subdir/asdf.txt', '100644', 'blob',
        content: 'Some file in a folder.');

    final newTree = CreateGitTree([entry1, entry2])
      ..baseTree = firstCommitTreeSha;

    // createTree()
    final createdTree = await github.git.createTree(slug, newTree);
    createdTreeSha = createdTree.sha;

    // getTree()
    final fetchedTree = await github.git.getTree(slug, createdTreeSha);

    expect(fetchedTree.sha, equals(createdTreeSha));
    expect(fetchedTree.entries.length, equals(2));
  });

  test('create and get a new commit', () async {
    final newCommit = CreateGitCommit('My test commit', createdTreeSha)
      ..parents = [firstCommitSha];

    // createCommit()
    final createdCommit = await github.git.createCommit(slug, newCommit);
    createdCommitSha = createdCommit.sha;

    // getCommit()
    final fetchedCommit = await github.git.getCommit(slug, createdCommitSha);
    expect(fetchedCommit.sha, equals(createdCommitSha));
    expect(fetchedCommit.message, equals('My test commit'));
    expect(fetchedCommit.tree.sha, equals(createdTreeSha));
    expect(fetchedCommit.parents.first.sha, equals(firstCommitSha));
  });

  test('update heads/master reference to new commit', () {
    return github.git.editReference(slug, 'heads/master', createdCommitSha);
  });

  test('create and get a new reference (branch)', () async {
    final branchName = _randomGitName();

    await github.git
        .createReference(slug, 'refs/heads/$branchName', createdCommitSha);

    final fetchedRef = await github.git.getReference(slug, 'heads/$branchName');
    expect(fetchedRef.ref, equals('refs/heads/$branchName'));
    expect(fetchedRef.object.type, equals('commit'));
    expect(fetchedRef.object.sha, equals(createdCommitSha));
  });

  test('create and get a new tag', () async {
    final tagName = 'v${_randomGitName()}';

    final newTag = CreateGitTag(tagName, 'Version 0.0.1', createdCommitSha,
        'commit', GitCommitUser('aName', 'aEmail', DateTime.now()));

    // createTag()
    final createdTag = await github.git.createTag(slug, newTag);
    final createdTagSha = createdTag.sha;

    // getTag()
    final fetchedTag = await github.git.getTag(slug, createdTagSha);
    expect(fetchedTag.tag, equals(tagName));
    expect(fetchedTag.sha, equals(createdTagSha));
    expect(fetchedTag.message, equals('Version 0.0.1'));
    expect(fetchedTag.tagger.name, equals('aName'));
    expect(fetchedTag.object.sha, equals(createdCommitSha));

    // Create a reference for the tag.
    await github.git.createReference(slug, 'refs/tags/$tagName', createdTagSha);
  });

  group('create and query issues', () {
    test('query issues', () async {
      var issues = await github.issues.listByRepo(slug).toList();

      final count = issues.length;

      final issueRequest =
          IssueRequest(title: 'new issue - ${_randomGitName()}');

      await github.issues.create(slug, issueRequest);

      issues = await github.issues
          .listByRepo(slug, sort: 'updated', direction: 'desc')
          .toList();

      expect(issues, hasLength(count + 1));

      final issue = issues.first;

      expect(issue.title, issueRequest.title);
    });
  });
}

String _randomGitName() {
  final now = DateTime.now().toIso8601String().replaceAll(':', '_');

  return now.toString();
}
