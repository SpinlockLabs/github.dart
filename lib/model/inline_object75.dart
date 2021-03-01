//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object75.g.dart';

abstract class InlineObject75 implements Built<InlineObject75, InlineObject75Builder> {

    /// teams parameter
    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<String> get teams;

    // Boilerplate code needed to wire-up generated code
    InlineObject75._();

    static void _initializeBuilder(InlineObject75Builder b) => b;

    factory InlineObject75([void updates(InlineObject75Builder b)]) = _$InlineObject75;
    static Serializer<InlineObject75> get serializer => _$inlineObject75Serializer;
}

