//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_user_list_enterprise_name.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_group_list_enterprise_meta.dart';
import 'package:github/model/scim_user_list_enterprise_emails.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_groups.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_list_enterprise_resources.g.dart';

abstract class ScimUserListEnterpriseResources implements Built<ScimUserListEnterpriseResources, ScimUserListEnterpriseResourcesBuilder> {

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
    @BuiltValueField(wireName: r'userName')
    String get userName;

    @nullable
    @BuiltValueField(wireName: r'name')
    ScimUserListEnterpriseName get name;

    @nullable
    @BuiltValueField(wireName: r'emails')
    BuiltList<ScimUserListEnterpriseEmails> get emails;

    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<ScimV2EnterprisesEnterpriseUsersGroups> get groups;

    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    @nullable
    @BuiltValueField(wireName: r'meta')
    ScimGroupListEnterpriseMeta get meta;

    // Boilerplate code needed to wire-up generated code
    ScimUserListEnterpriseResources._();

    static void _initializeBuilder(ScimUserListEnterpriseResourcesBuilder b) => b;

    factory ScimUserListEnterpriseResources([void updates(ScimUserListEnterpriseResourcesBuilder b)]) = _$ScimUserListEnterpriseResources;
    static Serializer<ScimUserListEnterpriseResources> get serializer => _$scimUserListEnterpriseResourcesSerializer;
}

