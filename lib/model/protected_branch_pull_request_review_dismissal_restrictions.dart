//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/team.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_pull_request_review_dismissal_restrictions.g.dart';

abstract class ProtectedBranchPullRequestReviewDismissalRestrictions implements Built<ProtectedBranchPullRequestReviewDismissalRestrictions, ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder> {

    /// The list of users with review dismissal access.
    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<SimpleUser> get users;

    /// The list of teams with review dismissal access.
    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<Team> get teams;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'users_url')
    String get usersUrl;

    @nullable
    @BuiltValueField(wireName: r'teams_url')
    String get teamsUrl;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchPullRequestReviewDismissalRestrictions._();

    static void _initializeBuilder(ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder b) => b;

    factory ProtectedBranchPullRequestReviewDismissalRestrictions([void updates(ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder b)]) = _$ProtectedBranchPullRequestReviewDismissalRestrictions;
    static Serializer<ProtectedBranchPullRequestReviewDismissalRestrictions> get serializer => _$protectedBranchPullRequestReviewDismissalRestrictionsSerializer;
}

