//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object17.g.dart';

abstract class InlineObject17 implements Built<InlineObject17, InlineObject17Builder> {

    /// List of runner IDs to add to the runner group.
    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<int> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineObject17._();

    static void _initializeBuilder(InlineObject17Builder b) => b;

    factory InlineObject17([void updates(InlineObject17Builder b)]) = _$InlineObject17;
    static Serializer<InlineObject17> get serializer => _$inlineObject17Serializer;
}

