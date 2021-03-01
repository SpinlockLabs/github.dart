//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/branch_restriction_policy.dart';
import 'package:github/model/protected_branch_admin_enforced.dart';
import 'package:github/model/branch_protection_required_linear_history.dart';
import 'package:github/model/branch_protection_required_status_checks.dart';
import 'package:github/model/protected_branch_pull_request_review.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_protection.g.dart';

abstract class BranchProtection implements Built<BranchProtection, BranchProtectionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'required_status_checks')
    BranchProtectionRequiredStatusChecks get requiredStatusChecks;

    @nullable
    @BuiltValueField(wireName: r'enforce_admins')
    ProtectedBranchAdminEnforced get enforceAdmins;

    @nullable
    @BuiltValueField(wireName: r'required_pull_request_reviews')
    ProtectedBranchPullRequestReview get requiredPullRequestReviews;

    @nullable
    @BuiltValueField(wireName: r'restrictions')
    BranchRestrictionPolicy get restrictions;

    @nullable
    @BuiltValueField(wireName: r'required_linear_history')
    BranchProtectionRequiredLinearHistory get requiredLinearHistory;

    @nullable
    @BuiltValueField(wireName: r'allow_force_pushes')
    BranchProtectionRequiredLinearHistory get allowForcePushes;

    @nullable
    @BuiltValueField(wireName: r'allow_deletions')
    BranchProtectionRequiredLinearHistory get allowDeletions;

    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'protection_url')
    String get protectionUrl;

    // Boilerplate code needed to wire-up generated code
    BranchProtection._();

    static void _initializeBuilder(BranchProtectionBuilder b) => b;

    factory BranchProtection([void updates(BranchProtectionBuilder b)]) = _$BranchProtection;
    static Serializer<BranchProtection> get serializer => _$branchProtectionSerializer;
}

