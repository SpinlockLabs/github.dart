//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_v2_organizations_org_users_name.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_v2_organizations_org_users_scim_user_id_emails.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object161.g.dart';

abstract class InlineObject161 implements Built<InlineObject161, InlineObject161Builder> {

    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    /// The name of the user, suitable for display to end-users
    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'externalId')
    String get externalId;

    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<String> get groups;

    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    /// Configured by the admin. Could be an email, login, or username
    @nullable
    @BuiltValueField(wireName: r'userName')
    String get userName;

    @nullable
    @BuiltValueField(wireName: r'name')
    ScimV2OrganizationsOrgUsersName get name;

    /// user emails
    @nullable
    @BuiltValueField(wireName: r'emails')
    BuiltList<ScimV2OrganizationsOrgUsersScimUserIdEmails> get emails;

    // Boilerplate code needed to wire-up generated code
    InlineObject161._();

    static void _initializeBuilder(InlineObject161Builder b) => b;

    factory InlineObject161([void updates(InlineObject161Builder b)]) = _$InlineObject161;
    static Serializer<InlineObject161> get serializer => _$inlineObject161Serializer;
}

