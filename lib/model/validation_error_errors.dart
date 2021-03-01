//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/one_ofstringintegerarray.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error_errors.g.dart';

abstract class ValidationErrorErrors implements Built<ValidationErrorErrors, ValidationErrorErrorsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'resource')
    String get resource;

    @nullable
    @BuiltValueField(wireName: r'field')
    String get field;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'code')
    String get code;

    @nullable
    @BuiltValueField(wireName: r'index')
    int get index;

    @nullable
    @BuiltValueField(wireName: r'value')
    OneOfstringintegerarray get value;

    // Boilerplate code needed to wire-up generated code
    ValidationErrorErrors._();

    static void _initializeBuilder(ValidationErrorErrorsBuilder b) => b;

    factory ValidationErrorErrors([void updates(ValidationErrorErrorsBuilder b)]) = _$ValidationErrorErrors;
    static Serializer<ValidationErrorErrors> get serializer => _$validationErrorErrorsSerializer;
}

