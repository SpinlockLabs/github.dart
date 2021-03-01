//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response409.g.dart';

abstract class InlineResponse409 implements Built<InlineResponse409, InlineResponse409Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse409._();

    static void _initializeBuilder(InlineResponse409Builder b) => b;

    factory InlineResponse409([void updates(InlineResponse409Builder b)]) = _$InlineResponse409;
    static Serializer<InlineResponse409> get serializer => _$inlineResponse409Serializer;
}

