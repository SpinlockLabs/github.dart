//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_branches_branch_protection_restrictions.dart';
import 'package:github/model/repos_owner_repo_branches_branch_protection_required_status_checks.dart';
import 'package:github/model/repos_owner_repo_branches_branch_protection_required_pull_request_reviews.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object65.g.dart';

abstract class InlineObject65 implements Built<InlineObject65, InlineObject65Builder> {

    @nullable
    @BuiltValueField(wireName: r'required_status_checks')
    ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks get requiredStatusChecks;

    /// Enforce all configured restrictions for administrators. Set to `true` to enforce required status checks for repository administrators. Set to `null` to disable.
    @nullable
    @BuiltValueField(wireName: r'enforce_admins')
    bool get enforceAdmins;

    @nullable
    @BuiltValueField(wireName: r'required_pull_request_reviews')
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews get requiredPullRequestReviews;

    @nullable
    @BuiltValueField(wireName: r'restrictions')
    ReposOwnerRepoBranchesBranchProtectionRestrictions get restrictions;

    /// Enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch. Set to `true` to enforce a linear commit history. Set to `false` to disable a linear commit Git history. Your repository must allow squash merging or rebase merging before you can enable a linear commit history. Default: `false`. For more information, see \"[Requiring a linear commit history](https://help.github.com/github/administering-a-repository/requiring-a-linear-commit-history)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'required_linear_history')
    bool get requiredLinearHistory;

    /// Permits force pushes to the protected branch by anyone with write access to the repository. Set to `true` to allow force pushes. Set to `false` or `null` to block force pushes. Default: `false`. For more information, see \"[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\" in the GitHub Help documentation.\"
    @nullable
    @BuiltValueField(wireName: r'allow_force_pushes')
    bool get allowForcePushes;

    /// Allows deletion of the protected branch by anyone with write access to the repository. Set to `false` to prevent deletion of the protected branch. Default: `false`. For more information, see \"[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'allow_deletions')
    bool get allowDeletions;

    // Boilerplate code needed to wire-up generated code
    InlineObject65._();

    static void _initializeBuilder(InlineObject65Builder b) => b;

    factory InlineObject65([void updates(InlineObject65Builder b)]) = _$InlineObject65;
    static Serializer<InlineObject65> get serializer => _$inlineObject65Serializer;
}

