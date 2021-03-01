//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_branches_branch_protection_required_pull_request_reviews_dismissal_restrictions.g.dart';

abstract class ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions implements Built<ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions, ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder> {

    /// The list of user `login`s with dismissal access
    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<String> get users;

    /// The list of team `slug`s with dismissal access
    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<String> get teams;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions._();

    static void _initializeBuilder(ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder b) => b;

    factory ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions([void updates(ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder b)]) = _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions;
    static Serializer<ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions> get serializer => _$reposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsSerializer;
}

