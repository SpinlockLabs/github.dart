//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_organizations_org_users_scim_user_id_emails.g.dart';

abstract class ScimV2OrganizationsOrgUsersScimUserIdEmails implements Built<ScimV2OrganizationsOrgUsersScimUserIdEmails, ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    // Boilerplate code needed to wire-up generated code
    ScimV2OrganizationsOrgUsersScimUserIdEmails._();

    static void _initializeBuilder(ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder b) => b;

    factory ScimV2OrganizationsOrgUsersScimUserIdEmails([void updates(ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder b)]) = _$ScimV2OrganizationsOrgUsersScimUserIdEmails;
    static Serializer<ScimV2OrganizationsOrgUsersScimUserIdEmails> get serializer => _$scimV2OrganizationsOrgUsersScimUserIdEmailsSerializer;
}

