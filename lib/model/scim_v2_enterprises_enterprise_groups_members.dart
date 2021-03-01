//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_enterprises_enterprise_groups_members.g.dart';

abstract class ScimV2EnterprisesEnterpriseGroupsMembers implements Built<ScimV2EnterprisesEnterpriseGroupsMembers, ScimV2EnterprisesEnterpriseGroupsMembersBuilder> {

    /// The SCIM user ID for a user.
    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    // Boilerplate code needed to wire-up generated code
    ScimV2EnterprisesEnterpriseGroupsMembers._();

    static void _initializeBuilder(ScimV2EnterprisesEnterpriseGroupsMembersBuilder b) => b;

    factory ScimV2EnterprisesEnterpriseGroupsMembers([void updates(ScimV2EnterprisesEnterpriseGroupsMembersBuilder b)]) = _$ScimV2EnterprisesEnterpriseGroupsMembers;
    static Serializer<ScimV2EnterprisesEnterpriseGroupsMembers> get serializer => _$scimV2EnterprisesEnterpriseGroupsMembersSerializer;
}

