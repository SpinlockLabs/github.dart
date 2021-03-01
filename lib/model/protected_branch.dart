//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/branch_restriction_policy.dart';
import 'package:github/model/status_check_policy.dart';
import 'package:github/model/protected_branch_required_signatures.dart';
import 'package:github/model/protected_branch_enforce_admins.dart';
import 'package:github/model/protected_branch_required_linear_history.dart';
import 'package:github/model/protected_branch_required_pull_request_reviews.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch.g.dart';

abstract class ProtectedBranch implements Built<ProtectedBranch, ProtectedBranchBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'required_status_checks')
    StatusCheckPolicy get requiredStatusChecks;

    @nullable
    @BuiltValueField(wireName: r'required_pull_request_reviews')
    ProtectedBranchRequiredPullRequestReviews get requiredPullRequestReviews;

    @nullable
    @BuiltValueField(wireName: r'required_signatures')
    ProtectedBranchRequiredSignatures get requiredSignatures;

    @nullable
    @BuiltValueField(wireName: r'enforce_admins')
    ProtectedBranchEnforceAdmins get enforceAdmins;

    @nullable
    @BuiltValueField(wireName: r'required_linear_history')
    ProtectedBranchRequiredLinearHistory get requiredLinearHistory;

    @nullable
    @BuiltValueField(wireName: r'allow_force_pushes')
    ProtectedBranchRequiredLinearHistory get allowForcePushes;

    @nullable
    @BuiltValueField(wireName: r'allow_deletions')
    ProtectedBranchRequiredLinearHistory get allowDeletions;

    @nullable
    @BuiltValueField(wireName: r'restrictions')
    BranchRestrictionPolicy get restrictions;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranch._();

    static void _initializeBuilder(ProtectedBranchBuilder b) => b;

    factory ProtectedBranch([void updates(ProtectedBranchBuilder b)]) = _$ProtectedBranch;
    static Serializer<ProtectedBranch> get serializer => _$protectedBranchSerializer;
}

