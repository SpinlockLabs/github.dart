//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/validation_error_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error.g.dart';

abstract class ValidationError implements Built<ValidationError, ValidationErrorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<ValidationErrorErrors> get errors;

    // Boilerplate code needed to wire-up generated code
    ValidationError._();

    static void _initializeBuilder(ValidationErrorBuilder b) => b;

    factory ValidationError([void updates(ValidationErrorBuilder b)]) = _$ValidationError;
    static Serializer<ValidationError> get serializer => _$validationErrorSerializer;
}

