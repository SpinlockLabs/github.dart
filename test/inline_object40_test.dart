import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject40
void main() {
  final instance = InlineObject40();

  group('test InlineObject40', () {
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

    // Either `true` to create a private repository or `false` to create a public one.
    // bool private (default value: false)
    test('to test the property `private`', () async {
      // TODO
    });

    // Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header.
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

    // The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
    // int teamId
    test('to test the property `teamId`', () async {
      // TODO
    });

    // Pass `true` to create an initial commit with empty README.
    // bool autoInit (default value: false)
    test('to test the property `autoInit`', () async {
      // TODO
    });

    // Desired language or platform [.gitignore template](https://github.com/github/gitignore) to apply. Use the name of the template without the extension. For example, \"Haskell\".
    // String gitignoreTemplate
    test('to test the property `gitignoreTemplate`', () async {
      // TODO
    });

    // Choose an [open source license template](https://choosealicense.com/) that best suits your needs, and then use the [license keyword](https://help.github.com/articles/licensing-a-repository/#searching-github-by-license-type) as the `license_template` string. For example, \"mit\" or \"mpl-2.0\".
    // String licenseTemplate
    test('to test the property `licenseTemplate`', () async {
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


  });

}
