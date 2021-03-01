//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object136.g.dart';

abstract class InlineObject136 implements Built<InlineObject136, InlineObject136Builder> {

    /// The text of the review comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject136._();

    static void _initializeBuilder(InlineObject136Builder b) => b;

    factory InlineObject136([void updates(InlineObject136Builder b)]) = _$InlineObject136;
    static Serializer<InlineObject136> get serializer => _$inlineObject136Serializer;
}

