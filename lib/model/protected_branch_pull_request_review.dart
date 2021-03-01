//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/protected_branch_pull_request_review_dismissal_restrictions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_pull_request_review.g.dart';

abstract class ProtectedBranchPullRequestReview implements Built<ProtectedBranchPullRequestReview, ProtectedBranchPullRequestReviewBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'dismissal_restrictions')
    ProtectedBranchPullRequestReviewDismissalRestrictions get dismissalRestrictions;

    @nullable
    @BuiltValueField(wireName: r'dismiss_stale_reviews')
    bool get dismissStaleReviews;

    @nullable
    @BuiltValueField(wireName: r'require_code_owner_reviews')
    bool get requireCodeOwnerReviews;

    @nullable
    @BuiltValueField(wireName: r'required_approving_review_count')
    int get requiredApprovingReviewCount;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchPullRequestReview._();

    static void _initializeBuilder(ProtectedBranchPullRequestReviewBuilder b) => b;

    factory ProtectedBranchPullRequestReview([void updates(ProtectedBranchPullRequestReviewBuilder b)]) = _$ProtectedBranchPullRequestReview;
    static Serializer<ProtectedBranchPullRequestReview> get serializer => _$protectedBranchPullRequestReviewSerializer;
}

