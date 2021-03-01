//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'basic_error.g.dart';

abstract class BasicError implements Built<BasicError, BasicErrorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    BasicError._();

    static void _initializeBuilder(BasicErrorBuilder b) => b;

    factory BasicError([void updates(BasicErrorBuilder b)]) = _$BasicError;
    static Serializer<BasicError> get serializer => _$basicErrorSerializer;
}

