//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_error.g.dart';

abstract class ScimError implements Built<ScimError, ScimErrorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    @nullable
    @BuiltValueField(wireName: r'detail')
    String get detail;

    @nullable
    @BuiltValueField(wireName: r'status')
    int get status;

    @nullable
    @BuiltValueField(wireName: r'scimType')
    String get scimType;

    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    // Boilerplate code needed to wire-up generated code
    ScimError._();

    static void _initializeBuilder(ScimErrorBuilder b) => b;

    factory ScimError([void updates(ScimErrorBuilder b)]) = _$ScimError;
    static Serializer<ScimError> get serializer => _$scimErrorSerializer;
}

