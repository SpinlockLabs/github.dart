//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_restriction_policy_permissions.g.dart';

abstract class BranchRestrictionPolicyPermissions implements Built<BranchRestrictionPolicyPermissions, BranchRestrictionPolicyPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'metadata')
    String get metadata;

    @nullable
    @BuiltValueField(wireName: r'contents')
    String get contents;

    @nullable
    @BuiltValueField(wireName: r'issues')
    String get issues;

    @nullable
    @BuiltValueField(wireName: r'single_file')
    String get singleFile;

    // Boilerplate code needed to wire-up generated code
    BranchRestrictionPolicyPermissions._();

    static void _initializeBuilder(BranchRestrictionPolicyPermissionsBuilder b) => b;

    factory BranchRestrictionPolicyPermissions([void updates(BranchRestrictionPolicyPermissionsBuilder b)]) = _$BranchRestrictionPolicyPermissions;
    static Serializer<BranchRestrictionPolicyPermissions> get serializer => _$branchRestrictionPolicyPermissionsSerializer;
}

