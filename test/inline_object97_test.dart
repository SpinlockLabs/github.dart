import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject97
void main() {
  final instance = InlineObject97();

  group('test InlineObject97', () {
    // The commit message
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // The SHA of the tree object this commit points to
    // String tree
    test('to test the property `tree`', () async {
      // TODO
    });

    // The SHAs of the commits that were the parents of this commit. If omitted or empty, the commit will be written as a root commit. For a single parent, an array of one SHA should be provided; for a merge commit, an array of more than one should be provided.
    // List<String> parents (default value: const [])
    test('to test the property `parents`', () async {
      // TODO
    });

    // ReposOwnerRepoGitCommitsAuthor author
    test('to test the property `author`', () async {
      // TODO
    });

    // ReposOwnerRepoGitCommitsCommitter committer
    test('to test the property `committer`', () async {
      // TODO
    });

    // The [PGP signature](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) of the commit. GitHub adds the signature to the `gpgsig` header of the created commit. For a commit signature to be verifiable by Git or GitHub, it must be an ASCII-armored detached PGP signature over the string commit as it would be written to the object database. To pass a `signature` parameter, you need to first manually create a valid PGP signature, which can be complicated. You may find it easier to [use the command line](https://git-scm.com/book/id/v2/Git-Tools-Signing-Your-Work) to create signed commits.
    // String signature
    test('to test the property `signature`', () async {
      // TODO
    });


  });

}
