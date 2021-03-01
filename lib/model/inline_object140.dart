//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object140.g.dart';

abstract class InlineObject140 implements Built<InlineObject140, InlineObject140Builder> {

    /// The body text of the pull request review.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject140._();

    static void _initializeBuilder(InlineObject140Builder b) => b;

    factory InlineObject140([void updates(InlineObject140Builder b)]) = _$InlineObject140;
    static Serializer<InlineObject140> get serializer => _$inlineObject140Serializer;
}

