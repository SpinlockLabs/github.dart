//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response415.g.dart';

abstract class InlineResponse415 implements Built<InlineResponse415, InlineResponse415Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse415._();

    static void _initializeBuilder(InlineResponse415Builder b) => b;

    factory InlineResponse415([void updates(InlineResponse415Builder b)]) = _$InlineResponse415;
    static Serializer<InlineResponse415> get serializer => _$inlineResponse415Serializer;
}

