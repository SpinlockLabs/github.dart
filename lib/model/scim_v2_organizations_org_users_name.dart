//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_organizations_org_users_name.g.dart';

abstract class ScimV2OrganizationsOrgUsersName implements Built<ScimV2OrganizationsOrgUsersName, ScimV2OrganizationsOrgUsersNameBuilder> {

    @nullable
    @BuiltValueField(wireName: r'givenName')
    String get givenName;

    @nullable
    @BuiltValueField(wireName: r'familyName')
    String get familyName;

    @nullable
    @BuiltValueField(wireName: r'formatted')
    String get formatted;

    // Boilerplate code needed to wire-up generated code
    ScimV2OrganizationsOrgUsersName._();

    static void _initializeBuilder(ScimV2OrganizationsOrgUsersNameBuilder b) => b;

    factory ScimV2OrganizationsOrgUsersName([void updates(ScimV2OrganizationsOrgUsersNameBuilder b)]) = _$ScimV2OrganizationsOrgUsersName;
    static Serializer<ScimV2OrganizationsOrgUsersName> get serializer => _$scimV2OrganizationsOrgUsersNameSerializer;
}

