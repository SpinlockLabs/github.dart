//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object76.g.dart';

abstract class InlineObject76 implements Built<InlineObject76, InlineObject76Builder> {

    /// teams parameter
    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<String> get teams;

    // Boilerplate code needed to wire-up generated code
    InlineObject76._();

    static void _initializeBuilder(InlineObject76Builder b) => b;

    factory InlineObject76([void updates(InlineObject76Builder b)]) = _$InlineObject76;
    static Serializer<InlineObject76> get serializer => _$inlineObject76Serializer;
}

