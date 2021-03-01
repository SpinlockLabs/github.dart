//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object165.g.dart';

abstract class InlineObject165 implements Built<InlineObject165, InlineObject165Builder> {

    /// The discussion post's title.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The discussion post's body text.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject165._();

    static void _initializeBuilder(InlineObject165Builder b) => b;

    factory InlineObject165([void updates(InlineObject165Builder b)]) = _$InlineObject165;
    static Serializer<InlineObject165> get serializer => _$inlineObject165Serializer;
}

