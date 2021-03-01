//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response503.g.dart';

abstract class InlineResponse503 implements Built<InlineResponse503, InlineResponse503Builder> {

    @nullable
    @BuiltValueField(wireName: r'code')
    String get code;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse503._();

    static void _initializeBuilder(InlineResponse503Builder b) => b;

    factory InlineResponse503([void updates(InlineResponse503Builder b)]) = _$InlineResponse503;
    static Serializer<InlineResponse503> get serializer => _$inlineResponse503Serializer;
}

