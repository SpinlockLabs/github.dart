//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/one_ofobjectarraystring.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_organizations_org_users_scim_user_id_operations.g.dart';

abstract class ScimV2OrganizationsOrgUsersScimUserIdOperations implements Built<ScimV2OrganizationsOrgUsersScimUserIdOperations, ScimV2OrganizationsOrgUsersScimUserIdOperationsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'op')
    ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum get op;
    // enum opEnum {  add,  remove,  replace,  };

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'value')
    OneOfobjectarraystring get value;

    // Boilerplate code needed to wire-up generated code
    ScimV2OrganizationsOrgUsersScimUserIdOperations._();

    static void _initializeBuilder(ScimV2OrganizationsOrgUsersScimUserIdOperationsBuilder b) => b;

    factory ScimV2OrganizationsOrgUsersScimUserIdOperations([void updates(ScimV2OrganizationsOrgUsersScimUserIdOperationsBuilder b)]) = _$ScimV2OrganizationsOrgUsersScimUserIdOperations;
    static Serializer<ScimV2OrganizationsOrgUsersScimUserIdOperations> get serializer => _$scimV2OrganizationsOrgUsersScimUserIdOperationsSerializer;
}

class ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'add')
  static const ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum add = _$scimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum_add;
  @BuiltValueEnumConst(wireName: r'remove')
  static const ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum remove = _$scimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum_remove;
  @BuiltValueEnumConst(wireName: r'replace')
  static const ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum replace = _$scimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum_replace;

  static Serializer<ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum> get serializer => _$scimV2OrganizationsOrgUsersScimUserIdOperationsOpEnumSerializer;

  const ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum._(String name): super(name);

  static BuiltSet<ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum> get values => _$scimV2OrganizationsOrgUsersScimUserIdOperationsOpEnumValues;
  static ScimV2OrganizationsOrgUsersScimUserIdOperationsOpEnum valueOf(String name) => _$scimV2OrganizationsOrgUsersScimUserIdOperationsOpEnumValueOf(name);
}

