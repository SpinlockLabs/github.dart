//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object111.g.dart';

abstract class InlineObject111 implements Built<InlineObject111, InlineObject111Builder> {

    /// The contents of the comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject111._();

    static void _initializeBuilder(InlineObject111Builder b) => b;

    factory InlineObject111([void updates(InlineObject111Builder b)]) = _$InlineObject111;
    static Serializer<InlineObject111> get serializer => _$inlineObject111Serializer;
}

