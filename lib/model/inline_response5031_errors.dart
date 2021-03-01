//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response5031_errors.g.dart';

abstract class InlineResponse5031Errors implements Built<InlineResponse5031Errors, InlineResponse5031ErrorsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'code')
    String get code;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    InlineResponse5031Errors._();

    static void _initializeBuilder(InlineResponse5031ErrorsBuilder b) => b;

    factory InlineResponse5031Errors([void updates(InlineResponse5031ErrorsBuilder b)]) = _$InlineResponse5031Errors;
    static Serializer<InlineResponse5031Errors> get serializer => _$inlineResponse5031ErrorsSerializer;
}

