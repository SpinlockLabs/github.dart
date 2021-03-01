//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/protected_branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_required_pull_request_reviews.g.dart';

abstract class ProtectedBranchRequiredPullRequestReviews implements Built<ProtectedBranchRequiredPullRequestReviews, ProtectedBranchRequiredPullRequestReviewsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'dismiss_stale_reviews')
    bool get dismissStaleReviews;

    @nullable
    @BuiltValueField(wireName: r'require_code_owner_reviews')
    bool get requireCodeOwnerReviews;

    @nullable
    @BuiltValueField(wireName: r'required_approving_review_count')
    int get requiredApprovingReviewCount;

    @nullable
    @BuiltValueField(wireName: r'dismissal_restrictions')
    ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions get dismissalRestrictions;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchRequiredPullRequestReviews._();

    static void _initializeBuilder(ProtectedBranchRequiredPullRequestReviewsBuilder b) => b;

    factory ProtectedBranchRequiredPullRequestReviews([void updates(ProtectedBranchRequiredPullRequestReviewsBuilder b)]) = _$ProtectedBranchRequiredPullRequestReviews;
    static Serializer<ProtectedBranchRequiredPullRequestReviews> get serializer => _$protectedBranchRequiredPullRequestReviewsSerializer;
}

