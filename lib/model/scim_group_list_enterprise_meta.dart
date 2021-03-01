//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_group_list_enterprise_meta.g.dart';

abstract class ScimGroupListEnterpriseMeta implements Built<ScimGroupListEnterpriseMeta, ScimGroupListEnterpriseMetaBuilder> {

    @nullable
    @BuiltValueField(wireName: r'resourceType')
    String get resourceType;

    @nullable
    @BuiltValueField(wireName: r'created')
    String get created;

    @nullable
    @BuiltValueField(wireName: r'lastModified')
    String get lastModified;

    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    // Boilerplate code needed to wire-up generated code
    ScimGroupListEnterpriseMeta._();

    static void _initializeBuilder(ScimGroupListEnterpriseMetaBuilder b) => b;

    factory ScimGroupListEnterpriseMeta([void updates(ScimGroupListEnterpriseMetaBuilder b)]) = _$ScimGroupListEnterpriseMeta;
    static Serializer<ScimGroupListEnterpriseMeta> get serializer => _$scimGroupListEnterpriseMetaSerializer;
}

