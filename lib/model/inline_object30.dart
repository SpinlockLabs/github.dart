//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object30.g.dart';

abstract class InlineObject30 implements Built<InlineObject30, InlineObject30Builder> {

    /// List of runner IDs to add to the runner group.
    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<int> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineObject30._();

    static void _initializeBuilder(InlineObject30Builder b) => b;

    factory InlineObject30([void updates(InlineObject30Builder b)]) = _$InlineObject30;
    static Serializer<InlineObject30> get serializer => _$inlineObject30Serializer;
}

