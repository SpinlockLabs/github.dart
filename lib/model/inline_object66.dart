//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_branches_branch_protection_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object66.g.dart';

abstract class InlineObject66 implements Built<InlineObject66, InlineObject66Builder> {

    @nullable
    @BuiltValueField(wireName: r'dismissal_restrictions')
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions get dismissalRestrictions;

    /// Set to `true` if you want to automatically dismiss approving reviews when someone pushes a new commit.
    @nullable
    @BuiltValueField(wireName: r'dismiss_stale_reviews')
    bool get dismissStaleReviews;

    /// Blocks merging pull requests until [code owners](https://help.github.com/articles/about-code-owners/) have reviewed.
    @nullable
    @BuiltValueField(wireName: r'require_code_owner_reviews')
    bool get requireCodeOwnerReviews;

    /// Specifies the number of reviewers required to approve pull requests. Use a number between 1 and 6.
    @nullable
    @BuiltValueField(wireName: r'required_approving_review_count')
    int get requiredApprovingReviewCount;

    // Boilerplate code needed to wire-up generated code
    InlineObject66._();

    static void _initializeBuilder(InlineObject66Builder b) => b;

    factory InlineObject66([void updates(InlineObject66Builder b)]) = _$InlineObject66;
    static Serializer<InlineObject66> get serializer => _$inlineObject66Serializer;
}

