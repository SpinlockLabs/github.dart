//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object130.g.dart';

abstract class InlineObject130 implements Built<InlineObject130, InlineObject130Builder> {

    /// The name of the project.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The description of the project.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject130._();

    static void _initializeBuilder(InlineObject130Builder b) => b;

    factory InlineObject130([void updates(InlineObject130Builder b)]) = _$InlineObject130;
    static Serializer<InlineObject130> get serializer => _$inlineObject130Serializer;
}

