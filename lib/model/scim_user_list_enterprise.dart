//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_user_list_enterprise_resources.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_list_enterprise.g.dart';

abstract class ScimUserListEnterprise implements Built<ScimUserListEnterprise, ScimUserListEnterpriseBuilder> {

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
    BuiltList<ScimUserListEnterpriseResources> get resources;

    // Boilerplate code needed to wire-up generated code
    ScimUserListEnterprise._();

    static void _initializeBuilder(ScimUserListEnterpriseBuilder b) => b;

    factory ScimUserListEnterprise([void updates(ScimUserListEnterpriseBuilder b)]) = _$ScimUserListEnterprise;
    static Serializer<ScimUserListEnterprise> get serializer => _$scimUserListEnterpriseSerializer;
}

