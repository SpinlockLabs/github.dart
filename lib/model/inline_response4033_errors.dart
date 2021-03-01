//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response4033_errors.g.dart';

abstract class InlineResponse4033Errors implements Built<InlineResponse4033Errors, InlineResponse4033ErrorsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'code')
    String get code;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'resource')
    String get resource;

    @nullable
    @BuiltValueField(wireName: r'field')
    String get field;

    // Boilerplate code needed to wire-up generated code
    InlineResponse4033Errors._();

    static void _initializeBuilder(InlineResponse4033ErrorsBuilder b) => b;

    factory InlineResponse4033Errors([void updates(InlineResponse4033ErrorsBuilder b)]) = _$InlineResponse4033Errors;
    static Serializer<InlineResponse4033Errors> get serializer => _$inlineResponse4033ErrorsSerializer;
}

