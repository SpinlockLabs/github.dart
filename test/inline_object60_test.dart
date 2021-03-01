import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject60
void main() {
  final instance = InlineObject60();

  group('test InlineObject60', () {
    // The name of the repository.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // A short description of the repository.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // A URL with more information about the repository.
    // String homepage
    test('to test the property `homepage`', () async {
      // TODO
    });

    // Either `true` to make the repository private or `false` to make it public. Default: `false`.   **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private. **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private.
    // bool private (default value: false)
    test('to test the property `private`', () async {
      // TODO
    });

    // Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header.
    // String visibility
    test('to test the property `visibility`', () async {
      // TODO
    });

    // Either `true` to enable issues for this repository or `false` to disable them.
    // bool hasIssues (default value: true)
    test('to test the property `hasIssues`', () async {
      // TODO
    });

    // Either `true` to enable projects for this repository or `false` to disable them. **Note:** If you're creating a repository in an organization that has disabled repository projects, the default is `false`, and if you pass `true`, the API returns an error.
    // bool hasProjects (default value: true)
    test('to test the property `hasProjects`', () async {
      // TODO
    });

    // Either `true` to enable the wiki for this repository or `false` to disable it.
    // bool hasWiki (default value: true)
    test('to test the property `hasWiki`', () async {
      // TODO
    });

    // Either `true` to make this repo available as a template repository or `false` to prevent it.
    // bool isTemplate (default value: false)
    test('to test the property `isTemplate`', () async {
      // TODO
    });

    // Updates the default branch for this repository.
    // String defaultBranch
    test('to test the property `defaultBranch`', () async {
      // TODO
    });

    // Either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging.
    // bool allowSquashMerge (default value: true)
    test('to test the property `allowSquashMerge`', () async {
      // TODO
    });

    // Either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits.
    // bool allowMergeCommit (default value: true)
    test('to test the property `allowMergeCommit`', () async {
      // TODO
    });

    // Either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging.
    // bool allowRebaseMerge (default value: true)
    test('to test the property `allowRebaseMerge`', () async {
      // TODO
    });

    // Either `true` to allow automatically deleting head branches when pull requests are merged, or `false` to prevent automatic deletion.
    // bool deleteBranchOnMerge (default value: false)
    test('to test the property `deleteBranchOnMerge`', () async {
      // TODO
    });

    // `true` to archive this repository. **Note**: You cannot unarchive repositories through the API.
    // bool archived (default value: false)
    test('to test the property `archived`', () async {
      // TODO
    });


  });

}
