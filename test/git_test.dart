import 'package:github/github.dart';
import 'package:nock/nock.dart';
import 'package:test/test.dart';

import 'assets/responses/nocked_responses.dart' as nocked;

const fakeApiUrl = 'http://fake.api.github.com';
const date = '2014-10-02T15:21:29Z';

GitHub createGithub() {
  return GitHub(
      endpoint: fakeApiUrl,
      auth: const Authentication.withToken(
          '0000000000000000000000000000000000000001'));
}

void main() {
  late GitHub github;
  late GitService git;
  late RepositorySlug repo;
  const someSha = 'someSHA';

  setUpAll(nock.init);

  setUp(() {
    nock.cleanAll();
    github = createGithub();
    git = GitService(github);
    repo = RepositorySlug('o', 'n');
  });
  tearDown(nock.cleanAll);

  test('getBlob()', () async {
    nock(fakeApiUrl).get('/repos/o/n/git/blobs/sh').reply(200, nocked.getBlob);
    final blob = await git.getBlob(repo, 'sh');
    expect(blob.sha, '3a0f86fb8db8eea7ccbb9a95f325ddbedfb25e15');
    expect(nock.pendingMocks.isEmpty, true);
  });

  test('createBlob()', () async {
    nock(fakeApiUrl)
        .post('/repos/o/n/git/blobs', '{"content":"bbb","encoding":"utf-8"}')
        .reply(201, nocked.createBlob);
    var blob = await git.createBlob(repo, CreateGitBlob('bbb', 'utf-8'));
    expect(blob.content, 'bbb');
    expect(blob.encoding, 'utf-8');
  });

  test('getCommit()', () async {
    nock(fakeApiUrl)
        .get('/repos/o/n/git/commits/sh')
        .reply(200, nocked.getCommit);
    var commit = await git.getCommit(repo, 'sh');
    expect(commit.sha, '7638417db6d59f3c431d3e1f261cc637155684cd');
  });

  test('createCommit()', () async {
    nock(fakeApiUrl)
        .post('/repos/o/n/git/commits',
            '{"message":"aMessage","tree":"aTreeSha","parents":["parentSha1","parentSha2"],"committer":{"name":"cName","email":"cEmail","date":"2014-10-02T15:21:29Z"},"author":{"name":"aName","email":"aEmail","date":"2014-10-02T15:21:29Z"}}')
        .reply(201, nocked.createCommit);

    var commit = await git.createCommit(
        repo,
        CreateGitCommit('aMessage', 'aTreeSha')
          ..parents = ['parentSha1', 'parentSha2']
          ..committer = GitCommitUser('cName', 'cEmail', DateTime.parse(date))
          ..author = GitCommitUser('aName', 'aEmail', DateTime.parse(date)));
    expect(commit.message, 'aMessage');
    expect(commit.tree!.sha, 'aTreeSha');
  });

  test('getReference()', () async {
    nock(fakeApiUrl)
        .get('/repos/o/n/git/refs/heads/b')
        .reply(200, nocked.getReference);
    var ref = await git.getReference(repo, 'heads/b');
    expect(ref.ref, 'refs/heads/b');
  });

  test('createReference()', () async {
    const someRef = 'refs/heads/b';
    nock(fakeApiUrl)
        .post('/repos/o/n/git/refs', '{"ref":"refs/heads/b","sha":"someSHA"}')
        .reply(201, nocked.createReference);
    var ref = await git.createReference(repo, someRef, someSha);
    expect(ref.ref, someRef);
  });

  test('editReference()', () async {
    nock(fakeApiUrl)
        .patch('/repos/o/n/git/refs/heads/b', '{"sha":"someSHA","force":true}')
        .reply(200, '{}');

    await git.editReference(repo, 'heads/b', someSha, force: true);
  });

  test('deleteReference()', () async {
    nock(fakeApiUrl).delete('/repos/o/n/git/refs/heads/b').reply(200, '{}');
    await git.deleteReference(repo, 'heads/b');
  });

  test('getTag()', () async {
    nock(fakeApiUrl)
        .get('/repos/o/n/git/tags/someSHA')
        .reply(200, nocked.getTag);
    await git.getTag(repo, someSha);
  });

  test('createTag()', () async {
    nock(fakeApiUrl)
        .post('/repos/o/n/git/tags',
            '{"tag":"v0.0.1","message":"initial version","object":"someSHA","type":"commit","tagger":{"name":"Monalisa Octocat","email":"octocat@github.com","date":"$date"}}')
        .reply(201, nocked.createTag);

    final createGitTag = CreateGitTag(
        'v0.0.1',
        'initial version',
        someSha,
        'commit',
        GitCommitUser(
            'Monalisa Octocat', 'octocat@github.com', DateTime.parse(date)));

    var tag = await git.createTag(repo, createGitTag);

    expect(tag.tag, 'v0.0.1');
    expect(tag.message, 'initial version');
    expect(tag.tagger?.name, 'Monalisa Octocat');
  });

  test('getTree()', () async {
    nock(fakeApiUrl)
        .get('/repos/o/n/git/trees/sh?recursive=1')
        .reply(200, '{}');
    await git.getTree(repo, 'sh', recursive: true);
  });

  test('createTree()', () async {
    nock(fakeApiUrl)
        .post('/repos/o/n/git/trees',
            '{"tree":[{"path":"file.rb","mode":"100644","type":"blob","sha":"44b4fc6d56897b048c772eb4087f854f46256132"}]}')
        .reply(201, nocked.createTree);

    var createTree = CreateGitTree([
      CreateGitTreeEntry('file.rb', '100644', 'blob',
          sha: '44b4fc6d56897b048c772eb4087f854f46256132')
    ]);

    var tree = await git.createTree(repo, createTree);
    var entry = tree.entries?.first;
    expect(entry?.path, 'file.rb');
    expect(entry?.mode, '100644');
    expect(entry?.type, 'blob');
    expect(entry?.sha, '44b4fc6d56897b048c772eb4087f854f46256132');

    nock(fakeApiUrl)
        .post('/repos/o/n/git/trees',
            '{"tree":[{"path":"file.rb","mode":"100644","type":"blob","content":"content"}]}')
        .reply(201, nocked.createTree);

    createTree = CreateGitTree(
        [CreateGitTreeEntry('file.rb', '100644', 'blob', content: 'content')]);

    tree = await git.createTree(repo, createTree);
    entry = tree.entries?.first;
    expect(entry?.path, 'file.rb');
    expect(entry?.mode, '100644');
    expect(entry?.type, 'blob');
    expect(entry?.sha, '44b4fc6d56897b048c772eb4087f854f46256132');
  });

  test('code search', () async {
    nock(fakeApiUrl)
        .get(
            '/search/code?q=search%20repo%3ASpinlockLabs%2Fgithub.dart%20in%3Afile&per_page=20')
        .reply(200, nocked.searchResults);

    final results = (await github.search
            .code(
              'search',
              repo: 'SpinlockLabs/github.dart',
              perPage: 20,
              pages: 1,
            )
            .toList())
        .first;
    expect(results.totalCount, 17);
    expect(results.items?.length, 17);
  });

  group('Merge', () {
    test('Merge() normal', () async {
      nock(fakeApiUrl)
          .put('/repos/o/n/pulls/1/merge', '{"merge_method":"merge"}')
          .reply(201, nocked.mergedPR1);

      var pullRequestMerge = await github.pullRequests.merge(repo, 1);

      expect(pullRequestMerge.merged, true);
      expect(pullRequestMerge.message, 'Pull Request successfully merged');
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with squash', () async {
      nock(fakeApiUrl)
          .put('/repos/o/n/pulls/1/merge', '{"merge_method":"squash"}')
          .reply(201, nocked.mergedPR1);

      var pullRequestMerge = await github.pullRequests
          .merge(repo, 1, mergeMethod: MergeMethod.squash);

      expect(pullRequestMerge.merged, true);
      expect(pullRequestMerge.message, 'Pull Request successfully merged');
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with rebase', () async {
      nock(fakeApiUrl)
          .put('/repos/o/n/pulls/1/merge', '{"merge_method":"rebase"}')
          .reply(201, nocked.mergedPR1);

      var pullRequestMerge = await github.pullRequests
          .merge(repo, 1, mergeMethod: MergeMethod.rebase);

      expect(pullRequestMerge.merged, true);
      expect(pullRequestMerge.message, 'Pull Request successfully merged');
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with commitMessage', () async {
      const commitMessage = 'Some message';
      nock(fakeApiUrl)
          .put('/repos/o/n/pulls/1/merge',
              '{"commit_message":"$commitMessage","merge_method":"squash"}')
          .reply(201, nocked.mergedPR1);

      var pullRequestMerge = await github.pullRequests.merge(repo, 1,
          message: commitMessage, mergeMethod: MergeMethod.squash);

      expect(pullRequestMerge.merged, true);
      expect(pullRequestMerge.message, 'Pull Request successfully merged');
      expect(pullRequestMerge.sha, someSha);
    });

    test('Merge() with commitMessage, with sha', () async {
      const commitMessage = 'Some message';
      const commitSha = 'commitSha';
      nock(fakeApiUrl)
          .put('/repos/o/n/pulls/1/merge',
              '{"commit_message":"$commitMessage","sha":"$commitSha","merge_method":"squash"}')
          .reply(201, nocked.mergedPR1);

      var pullRequestMerge = await github.pullRequests.merge(repo, 1,
          message: commitMessage,
          mergeMethod: MergeMethod.squash,
          requestSha: commitSha);

      expect(pullRequestMerge.merged, true);
      expect(pullRequestMerge.message, 'Pull Request successfully merged');
      expect(pullRequestMerge.sha, someSha);
    });
  });
}
