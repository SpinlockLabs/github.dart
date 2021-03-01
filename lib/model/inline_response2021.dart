//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2021.g.dart';

abstract class InlineResponse2021 implements Built<InlineResponse2021, InlineResponse2021Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2021._();

    static void _initializeBuilder(InlineResponse2021Builder b) => b;

    factory InlineResponse2021([void updates(InlineResponse2021Builder b)]) = _$InlineResponse2021;
    static Serializer<InlineResponse2021> get serializer => _$inlineResponse2021Serializer;
}

