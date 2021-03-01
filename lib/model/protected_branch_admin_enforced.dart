//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_admin_enforced.g.dart';

abstract class ProtectedBranchAdminEnforced implements Built<ProtectedBranchAdminEnforced, ProtectedBranchAdminEnforcedBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchAdminEnforced._();

    static void _initializeBuilder(ProtectedBranchAdminEnforcedBuilder b) => b;

    factory ProtectedBranchAdminEnforced([void updates(ProtectedBranchAdminEnforcedBuilder b)]) = _$ProtectedBranchAdminEnforced;
    static Serializer<ProtectedBranchAdminEnforced> get serializer => _$protectedBranchAdminEnforcedSerializer;
}

