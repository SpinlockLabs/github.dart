//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_group_list_enterprise_members.dart';
import 'package:github/model/scim_group_list_enterprise_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_enterprise_group.g.dart';

abstract class ScimEnterpriseGroup implements Built<ScimEnterpriseGroup, ScimEnterpriseGroupBuilder> {

    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'externalId')
    String get externalId;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'members')
    BuiltList<ScimGroupListEnterpriseMembers> get members;

    @nullable
    @BuiltValueField(wireName: r'meta')
    ScimGroupListEnterpriseMeta get meta;

    // Boilerplate code needed to wire-up generated code
    ScimEnterpriseGroup._();

    static void _initializeBuilder(ScimEnterpriseGroupBuilder b) => b;

    factory ScimEnterpriseGroup([void updates(ScimEnterpriseGroupBuilder b)]) = _$ScimEnterpriseGroup;
    static Serializer<ScimEnterpriseGroup> get serializer => _$scimEnterpriseGroupSerializer;
}

