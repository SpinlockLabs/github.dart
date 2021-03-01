//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'org_membership_permissions.g.dart';

abstract class OrgMembershipPermissions implements Built<OrgMembershipPermissions, OrgMembershipPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'can_create_repository')
    bool get canCreateRepository;

    // Boilerplate code needed to wire-up generated code
    OrgMembershipPermissions._();

    static void _initializeBuilder(OrgMembershipPermissionsBuilder b) => b;

    factory OrgMembershipPermissions([void updates(OrgMembershipPermissionsBuilder b)]) = _$OrgMembershipPermissions;
    static Serializer<OrgMembershipPermissions> get serializer => _$orgMembershipPermissionsSerializer;
}

