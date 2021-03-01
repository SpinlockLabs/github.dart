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

part 'inline_object157.g.dart';

abstract class InlineObject157 implements Built<InlineObject157, InlineObject157Builder> {

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
    InlineObject157._();

    static void _initializeBuilder(InlineObject157Builder b) => b;

    factory InlineObject157([void updates(InlineObject157Builder b)]) = _$InlineObject157;
    static Serializer<InlineObject157> get serializer => _$inlineObject157Serializer;
}

