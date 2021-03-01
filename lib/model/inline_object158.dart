//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_name.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_groups.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_emails.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object158.g.dart';

abstract class InlineObject158 implements Built<InlineObject158, InlineObject158Builder> {

    /// The SCIM schema URIs.
    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    /// The username for the user.
    @nullable
    @BuiltValueField(wireName: r'userName')
    String get userName;

    @nullable
    @BuiltValueField(wireName: r'name')
    ScimV2EnterprisesEnterpriseUsersName get name;

    /// List of user emails.
    @nullable
    @BuiltValueField(wireName: r'emails')
    BuiltList<ScimV2EnterprisesEnterpriseUsersEmails> get emails;

    /// List of SCIM group IDs the user is a member of.
    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<ScimV2EnterprisesEnterpriseUsersGroups> get groups;

    // Boilerplate code needed to wire-up generated code
    InlineObject158._();

    static void _initializeBuilder(InlineObject158Builder b) => b;

    factory InlineObject158([void updates(InlineObject158Builder b)]) = _$InlineObject158;
    static Serializer<InlineObject158> get serializer => _$inlineObject158Serializer;
}

