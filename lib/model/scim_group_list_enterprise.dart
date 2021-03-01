//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_group_list_enterprise_resources.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_group_list_enterprise.g.dart';

abstract class ScimGroupListEnterprise implements Built<ScimGroupListEnterprise, ScimGroupListEnterpriseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    @nullable
    @BuiltValueField(wireName: r'totalResults')
    num get totalResults;

    @nullable
    @BuiltValueField(wireName: r'itemsPerPage')
    num get itemsPerPage;

    @nullable
    @BuiltValueField(wireName: r'startIndex')
    num get startIndex;

    @nullable
    @BuiltValueField(wireName: r'Resources')
    BuiltList<ScimGroupListEnterpriseResources> get resources;

    // Boilerplate code needed to wire-up generated code
    ScimGroupListEnterprise._();

    static void _initializeBuilder(ScimGroupListEnterpriseBuilder b) => b;

    factory ScimGroupListEnterprise([void updates(ScimGroupListEnterpriseBuilder b)]) = _$ScimGroupListEnterprise;
    static Serializer<ScimGroupListEnterprise> get serializer => _$scimGroupListEnterpriseSerializer;
}

