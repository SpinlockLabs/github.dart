//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response404.g.dart';

abstract class InlineResponse404 implements Built<InlineResponse404, InlineResponse404Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse404._();

    static void _initializeBuilder(InlineResponse404Builder b) => b;

    factory InlineResponse404([void updates(InlineResponse404Builder b)]) = _$InlineResponse404;
    static Serializer<InlineResponse404> get serializer => _$inlineResponse404Serializer;
}

