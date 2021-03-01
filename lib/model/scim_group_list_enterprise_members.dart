//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_group_list_enterprise_members.g.dart';

abstract class ScimGroupListEnterpriseMembers implements Built<ScimGroupListEnterpriseMembers, ScimGroupListEnterpriseMembersBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    @nullable
    @BuiltValueField(wireName: r'$ref')
    String get dollarRef;

    @nullable
    @BuiltValueField(wireName: r'display')
    String get display;

    // Boilerplate code needed to wire-up generated code
    ScimGroupListEnterpriseMembers._();

    static void _initializeBuilder(ScimGroupListEnterpriseMembersBuilder b) => b;

    factory ScimGroupListEnterpriseMembers([void updates(ScimGroupListEnterpriseMembersBuilder b)]) = _$ScimGroupListEnterpriseMembers;
    static Serializer<ScimGroupListEnterpriseMembers> get serializer => _$scimGroupListEnterpriseMembersSerializer;
}

