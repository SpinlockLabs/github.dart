//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object86.g.dart';

abstract class InlineObject86 implements Built<InlineObject86, InlineObject86Builder> {

    /// The contents of the comment
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject86._();

    static void _initializeBuilder(InlineObject86Builder b) => b;

    factory InlineObject86([void updates(InlineObject86Builder b)]) = _$InlineObject86;
    static Serializer<InlineObject86> get serializer => _$inlineObject86Serializer;
}

