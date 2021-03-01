//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_meta.g.dart';

abstract class ScimUserMeta implements Built<ScimUserMeta, ScimUserMetaBuilder> {

    @nullable
    @BuiltValueField(wireName: r'resourceType')
    String get resourceType;

    @nullable
    @BuiltValueField(wireName: r'created')
    DateTime get created;

    @nullable
    @BuiltValueField(wireName: r'lastModified')
    DateTime get lastModified;

    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    // Boilerplate code needed to wire-up generated code
    ScimUserMeta._();

    static void _initializeBuilder(ScimUserMetaBuilder b) => b;

    factory ScimUserMeta([void updates(ScimUserMetaBuilder b)]) = _$ScimUserMeta;
    static Serializer<ScimUserMeta> get serializer => _$scimUserMetaSerializer;
}

