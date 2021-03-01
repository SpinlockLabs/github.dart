//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object54.g.dart';

abstract class InlineObject54 implements Built<InlineObject54, InlineObject54Builder> {

    /// The position of the card in a column
    @nullable
    @BuiltValueField(wireName: r'position')
    String get position;

    /// The unique identifier of the column the card should be moved to
    @nullable
    @BuiltValueField(wireName: r'column_id')
    int get columnId;

    // Boilerplate code needed to wire-up generated code
    InlineObject54._();

    static void _initializeBuilder(InlineObject54Builder b) => b;

    factory InlineObject54([void updates(InlineObject54Builder b)]) = _$InlineObject54;
    static Serializer<InlineObject54> get serializer => _$inlineObject54Serializer;
}

