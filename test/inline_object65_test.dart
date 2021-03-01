import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject65
void main() {
  final instance = InlineObject65();

  group('test InlineObject65', () {
    // ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks requiredStatusChecks
    test('to test the property `requiredStatusChecks`', () async {
      // TODO
    });

    // Enforce all configured restrictions for administrators. Set to `true` to enforce required status checks for repository administrators. Set to `null` to disable.
    // bool enforceAdmins
    test('to test the property `enforceAdmins`', () async {
      // TODO
    });

    // ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews requiredPullRequestReviews
    test('to test the property `requiredPullRequestReviews`', () async {
      // TODO
    });

    // ReposOwnerRepoBranchesBranchProtectionRestrictions restrictions
    test('to test the property `restrictions`', () async {
      // TODO
    });

    // Enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch. Set to `true` to enforce a linear commit history. Set to `false` to disable a linear commit Git history. Your repository must allow squash merging or rebase merging before you can enable a linear commit history. Default: `false`. For more information, see \"[Requiring a linear commit history](https://help.github.com/github/administering-a-repository/requiring-a-linear-commit-history)\" in the GitHub Help documentation.
    // bool requiredLinearHistory
    test('to test the property `requiredLinearHistory`', () async {
      // TODO
    });

    // Permits force pushes to the protected branch by anyone with write access to the repository. Set to `true` to allow force pushes. Set to `false` or `null` to block force pushes. Default: `false`. For more information, see \"[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\" in the GitHub Help documentation.\"
    // bool allowForcePushes
    test('to test the property `allowForcePushes`', () async {
      // TODO
    });

    // Allows deletion of the protected branch by anyone with write access to the repository. Set to `false` to prevent deletion of the protected branch. Default: `false`. For more information, see \"[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\" in the GitHub Help documentation.
    // bool allowDeletions
    test('to test the property `allowDeletions`', () async {
      // TODO
    });


  });

}
