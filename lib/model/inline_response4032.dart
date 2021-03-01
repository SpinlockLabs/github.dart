//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response4032.g.dart';

abstract class InlineResponse4032 implements Built<InlineResponse4032, InlineResponse4032Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<String> get errors;

    // Boilerplate code needed to wire-up generated code
    InlineResponse4032._();

    static void _initializeBuilder(InlineResponse4032Builder b) => b;

    factory InlineResponse4032([void updates(InlineResponse4032Builder b)]) = _$InlineResponse4032;
    static Serializer<InlineResponse4032> get serializer => _$inlineResponse4032Serializer;
}

