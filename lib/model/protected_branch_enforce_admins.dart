//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_enforce_admins.g.dart';

abstract class ProtectedBranchEnforceAdmins implements Built<ProtectedBranchEnforceAdmins, ProtectedBranchEnforceAdminsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchEnforceAdmins._();

    static void _initializeBuilder(ProtectedBranchEnforceAdminsBuilder b) => b;

    factory ProtectedBranchEnforceAdmins([void updates(ProtectedBranchEnforceAdminsBuilder b)]) = _$ProtectedBranchEnforceAdmins;
    static Serializer<ProtectedBranchEnforceAdmins> get serializer => _$protectedBranchEnforceAdminsSerializer;
}

