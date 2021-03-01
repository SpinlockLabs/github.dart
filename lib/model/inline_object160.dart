//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_v2_organizations_org_users_name.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_v2_organizations_org_users_emails.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object160.g.dart';

abstract class InlineObject160 implements Built<InlineObject160, InlineObject160Builder> {

    /// Configured by the admin. Could be an email, login, or username
    @nullable
    @BuiltValueField(wireName: r'userName')
    String get userName;

    /// The name of the user, suitable for display to end-users
    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'name')
    ScimV2OrganizationsOrgUsersName get name;

    /// user emails
    @nullable
    @BuiltValueField(wireName: r'emails')
    BuiltList<ScimV2OrganizationsOrgUsersEmails> get emails;

    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    @nullable
    @BuiltValueField(wireName: r'externalId')
    String get externalId;

    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<String> get groups;

    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    // Boilerplate code needed to wire-up generated code
    InlineObject160._();

    static void _initializeBuilder(InlineObject160Builder b) => b;

    factory InlineObject160([void updates(InlineObject160Builder b)]) = _$InlineObject160;
    static Serializer<InlineObject160> get serializer => _$inlineObject160Serializer;
}

