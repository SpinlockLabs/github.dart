//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_organizations_org_users_emails.g.dart';

abstract class ScimV2OrganizationsOrgUsersEmails implements Built<ScimV2OrganizationsOrgUsersEmails, ScimV2OrganizationsOrgUsersEmailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    ScimV2OrganizationsOrgUsersEmails._();

    static void _initializeBuilder(ScimV2OrganizationsOrgUsersEmailsBuilder b) => b;

    factory ScimV2OrganizationsOrgUsersEmails([void updates(ScimV2OrganizationsOrgUsersEmailsBuilder b)]) = _$ScimV2OrganizationsOrgUsersEmails;
    static Serializer<ScimV2OrganizationsOrgUsersEmails> get serializer => _$scimV2OrganizationsOrgUsersEmailsSerializer;
}

