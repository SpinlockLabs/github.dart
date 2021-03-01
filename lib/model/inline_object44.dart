//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object44.g.dart';

abstract class InlineObject44 implements Built<InlineObject44, InlineObject44Builder> {

    /// The discussion post's title.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The discussion post's body text.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject44._();

    static void _initializeBuilder(InlineObject44Builder b) => b;

    factory InlineObject44([void updates(InlineObject44Builder b)]) = _$InlineObject44;
    static Serializer<InlineObject44> get serializer => _$inlineObject44Serializer;
}

