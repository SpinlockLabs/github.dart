//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object39.g.dart';

abstract class InlineObject39 implements Built<InlineObject39, InlineObject39Builder> {

    /// The name of the project.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The description of the project.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject39._();

    static void _initializeBuilder(InlineObject39Builder b) => b;

    factory InlineObject39([void updates(InlineObject39Builder b)]) = _$InlineObject39;
    static Serializer<InlineObject39> get serializer => _$inlineObject39Serializer;
}

