//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error_simple.g.dart';

abstract class ValidationErrorSimple implements Built<ValidationErrorSimple, ValidationErrorSimpleBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<String> get errors;

    // Boilerplate code needed to wire-up generated code
    ValidationErrorSimple._();

    static void _initializeBuilder(ValidationErrorSimpleBuilder b) => b;

    factory ValidationErrorSimple([void updates(ValidationErrorSimpleBuilder b)]) = _$ValidationErrorSimple;
    static Serializer<ValidationErrorSimple> get serializer => _$validationErrorSimpleSerializer;
}

