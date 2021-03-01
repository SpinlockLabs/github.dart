//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_branches_branch_protection_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_branches_branch_protection_required_pull_request_reviews.g.dart';

abstract class ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews implements Built<ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews, ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'dismissal_restrictions')
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions get dismissalRestrictions;

    /// Set to `true` if you want to automatically dismiss approving reviews when someone pushes a new commit.
    @nullable
    @BuiltValueField(wireName: r'dismiss_stale_reviews')
    bool get dismissStaleReviews;

    /// Blocks merging pull requests until [code owners](https://help.github.com/articles/about-code-owners/) review them.
    @nullable
    @BuiltValueField(wireName: r'require_code_owner_reviews')
    bool get requireCodeOwnerReviews;

    /// Specify the number of reviewers required to approve pull requests. Use a number between 1 and 6.
    @nullable
    @BuiltValueField(wireName: r'required_approving_review_count')
    int get requiredApprovingReviewCount;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews._();

    static void _initializeBuilder(ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder b) => b;

    factory ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews([void updates(ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder b)]) = _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews;
    static Serializer<ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews> get serializer => _$reposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsSerializer;
}

