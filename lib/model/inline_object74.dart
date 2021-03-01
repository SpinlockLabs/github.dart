//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object74.g.dart';

abstract class InlineObject74 implements Built<InlineObject74, InlineObject74Builder> {

    /// teams parameter
    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<String> get teams;

    // Boilerplate code needed to wire-up generated code
    InlineObject74._();

    static void _initializeBuilder(InlineObject74Builder b) => b;

    factory InlineObject74([void updates(InlineObject74Builder b)]) = _$InlineObject74;
    static Serializer<InlineObject74> get serializer => _$inlineObject74Serializer;
}

