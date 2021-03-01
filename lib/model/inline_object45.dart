//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object45.g.dart';

abstract class InlineObject45 implements Built<InlineObject45, InlineObject45Builder> {

    /// The discussion comment's body text.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject45._();

    static void _initializeBuilder(InlineObject45Builder b) => b;

    factory InlineObject45([void updates(InlineObject45Builder b)]) = _$InlineObject45;
    static Serializer<InlineObject45> get serializer => _$inlineObject45Serializer;
}

