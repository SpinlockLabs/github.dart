//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object55.g.dart';

abstract class InlineObject55 implements Built<InlineObject55, InlineObject55Builder> {

    /// Name of the project column
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    InlineObject55._();

    static void _initializeBuilder(InlineObject55Builder b) => b;

    factory InlineObject55([void updates(InlineObject55Builder b)]) = _$InlineObject55;
    static Serializer<InlineObject55> get serializer => _$inlineObject55Serializer;
}

