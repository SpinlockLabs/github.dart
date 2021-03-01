//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_v2_enterprises_enterprise_groups_members.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object154.g.dart';

abstract class InlineObject154 implements Built<InlineObject154, InlineObject154Builder> {

    /// The SCIM schema URIs.
    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    /// The name of the SCIM group. This must match the GitHub organization that the group maps to.
    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'members')
    BuiltList<ScimV2EnterprisesEnterpriseGroupsMembers> get members;

    // Boilerplate code needed to wire-up generated code
    InlineObject154._();

    static void _initializeBuilder(InlineObject154Builder b) => b;

    factory InlineObject154([void updates(InlineObject154Builder b)]) = _$InlineObject154;
    static Serializer<InlineObject154> get serializer => _$inlineObject154Serializer;
}

