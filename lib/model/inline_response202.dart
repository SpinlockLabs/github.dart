//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response202.g.dart';

abstract class InlineResponse202 implements Built<InlineResponse202, InlineResponse202Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    InlineResponse202._();

    static void _initializeBuilder(InlineResponse202Builder b) => b;

    factory InlineResponse202([void updates(InlineResponse202Builder b)]) = _$InlineResponse202;
    static Serializer<InlineResponse202> get serializer => _$inlineResponse202Serializer;
}

