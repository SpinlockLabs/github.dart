//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object3.g.dart';

abstract class InlineObject3 implements Built<InlineObject3, InlineObject3Builder> {

    /// The access_token of the OAuth application.
    @nullable
    @BuiltValueField(wireName: r'access_token')
    String get accessToken;

    // Boilerplate code needed to wire-up generated code
    InlineObject3._();

    static void _initializeBuilder(InlineObject3Builder b) => b;

    factory InlineObject3([void updates(InlineObject3Builder b)]) = _$InlineObject3;
    static Serializer<InlineObject3> get serializer => _$inlineObject3Serializer;
}

