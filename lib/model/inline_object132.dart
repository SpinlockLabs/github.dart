//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object132.g.dart';

abstract class InlineObject132 implements Built<InlineObject132, InlineObject132Builder> {

    /// The text of the reply to the review comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject132._();

    static void _initializeBuilder(InlineObject132Builder b) => b;

    factory InlineObject132([void updates(InlineObject132Builder b)]) = _$InlineObject132;
    static Serializer<InlineObject132> get serializer => _$inlineObject132Serializer;
}

