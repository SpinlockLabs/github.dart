//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_enterprises_enterprise_users_groups.g.dart';

abstract class ScimV2EnterprisesEnterpriseUsersGroups implements Built<ScimV2EnterprisesEnterpriseUsersGroups, ScimV2EnterprisesEnterpriseUsersGroupsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    // Boilerplate code needed to wire-up generated code
    ScimV2EnterprisesEnterpriseUsersGroups._();

    static void _initializeBuilder(ScimV2EnterprisesEnterpriseUsersGroupsBuilder b) => b;

    factory ScimV2EnterprisesEnterpriseUsersGroups([void updates(ScimV2EnterprisesEnterpriseUsersGroupsBuilder b)]) = _$ScimV2EnterprisesEnterpriseUsersGroups;
    static Serializer<ScimV2EnterprisesEnterpriseUsersGroups> get serializer => _$scimV2EnterprisesEnterpriseUsersGroupsSerializer;
}

