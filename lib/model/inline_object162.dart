//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_v2_organizations_org_users_scim_user_id_operations.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object162.g.dart';

abstract class InlineObject162 implements Built<InlineObject162, InlineObject162Builder> {

    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    /// Set of operations to be performed
    @nullable
    @BuiltValueField(wireName: r'Operations')
    BuiltList<ScimV2OrganizationsOrgUsersScimUserIdOperations> get operations;

    // Boilerplate code needed to wire-up generated code
    InlineObject162._();

    static void _initializeBuilder(InlineObject162Builder b) => b;

    factory InlineObject162([void updates(InlineObject162Builder b)]) = _$InlineObject162;
    static Serializer<InlineObject162> get serializer => _$inlineObject162Serializer;
}

