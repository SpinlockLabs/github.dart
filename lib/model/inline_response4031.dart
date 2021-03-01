//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response4031.g.dart';

abstract class InlineResponse4031 implements Built<InlineResponse4031, InlineResponse4031Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse4031._();

    static void _initializeBuilder(InlineResponse4031Builder b) => b;

    factory InlineResponse4031([void updates(InlineResponse4031Builder b)]) = _$InlineResponse4031;
    static Serializer<InlineResponse4031> get serializer => _$inlineResponse4031Serializer;
}

