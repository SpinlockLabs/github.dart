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

part 'protected_branch_required_pull_request_reviews_dismissal_restrictions.g.dart';

abstract class ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions implements Built<ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions, ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'users_url')
    String get usersUrl;

    @nullable
    @BuiltValueField(wireName: r'teams_url')
    String get teamsUrl;

    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<SimpleUser> get users;

    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<Team> get teams;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions._();

    static void _initializeBuilder(ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder b) => b;

    factory ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions([void updates(ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder b)]) = _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions;
    static Serializer<ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions> get serializer => _$protectedBranchRequiredPullRequestReviewsDismissalRestrictionsSerializer;
}

