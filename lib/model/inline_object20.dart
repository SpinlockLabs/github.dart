//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object20.g.dart';

abstract class InlineObject20 implements Built<InlineObject20, InlineObject20Builder> {

    /// The comment text.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject20._();

    static void _initializeBuilder(InlineObject20Builder b) => b;

    factory InlineObject20([void updates(InlineObject20Builder b)]) = _$InlineObject20;
    static Serializer<InlineObject20> get serializer => _$inlineObject20Serializer;
}

