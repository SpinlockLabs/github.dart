//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object78.g.dart';

abstract class InlineObject78 implements Built<InlineObject78, InlineObject78Builder> {

    /// users parameter
    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<String> get users;

    // Boilerplate code needed to wire-up generated code
    InlineObject78._();

    static void _initializeBuilder(InlineObject78Builder b) => b;

    factory InlineObject78([void updates(InlineObject78Builder b)]) = _$InlineObject78;
    static Serializer<InlineObject78> get serializer => _$inlineObject78Serializer;
}

