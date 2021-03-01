//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response422_errors.g.dart';

abstract class InlineResponse422Errors implements Built<InlineResponse422Errors, InlineResponse422ErrorsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'code')
    String get code;

    @nullable
    @BuiltValueField(wireName: r'field')
    String get field;

    @nullable
    @BuiltValueField(wireName: r'resource')
    String get resource;

    // Boilerplate code needed to wire-up generated code
    InlineResponse422Errors._();

    static void _initializeBuilder(InlineResponse422ErrorsBuilder b) => b;

    factory InlineResponse422Errors([void updates(InlineResponse422ErrorsBuilder b)]) = _$InlineResponse422Errors;
    static Serializer<InlineResponse422Errors> get serializer => _$inlineResponse422ErrorsSerializer;
}

