//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object96.g.dart';

abstract class InlineObject96 implements Built<InlineObject96, InlineObject96Builder> {

    /// The new blob's content.
    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    /// The encoding used for `content`. Currently, `\"utf-8\"` and `\"base64\"` are supported.
    @nullable
    @BuiltValueField(wireName: r'encoding')
    String get encoding;

    // Boilerplate code needed to wire-up generated code
    InlineObject96._();

    static void _initializeBuilder(InlineObject96Builder b) => b
        ..encoding = 'utf-8';

    factory InlineObject96([void updates(InlineObject96Builder b)]) = _$InlineObject96;
    static Serializer<InlineObject96> get serializer => _$inlineObject96Serializer;
}

