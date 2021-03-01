//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object180.g.dart';

abstract class InlineObject180 implements Built<InlineObject180, InlineObject180Builder> {

    /// Name of the project
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Body of the project
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject180._();

    static void _initializeBuilder(InlineObject180Builder b) => b;

    factory InlineObject180([void updates(InlineObject180Builder b)]) = _$InlineObject180;
    static Serializer<InlineObject180> get serializer => _$inlineObject180Serializer;
}

