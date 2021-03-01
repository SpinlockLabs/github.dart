//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_branches_branch_protection_required_status_checks.g.dart';

abstract class ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks implements Built<ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks, ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder> {

    /// Require branches to be up to date before merging.
    @nullable
    @BuiltValueField(wireName: r'strict')
    bool get strict;

    /// The list of status checks to require in order to merge into this branch
    @nullable
    @BuiltValueField(wireName: r'contexts')
    BuiltList<String> get contexts;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks._();

    static void _initializeBuilder(ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder b) => b;

    factory ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks([void updates(ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder b)]) = _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks;
    static Serializer<ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks> get serializer => _$reposOwnerRepoBranchesBranchProtectionRequiredStatusChecksSerializer;
}

