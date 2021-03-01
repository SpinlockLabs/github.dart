//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object71.g.dart';

abstract class InlineObject71 implements Built<InlineObject71, InlineObject71Builder> {

    /// apps parameter
    @nullable
    @BuiltValueField(wireName: r'apps')
    BuiltList<String> get apps;

    // Boilerplate code needed to wire-up generated code
    InlineObject71._();

    static void _initializeBuilder(InlineObject71Builder b) => b;

    factory InlineObject71([void updates(InlineObject71Builder b)]) = _$InlineObject71;
    static Serializer<InlineObject71> get serializer => _$inlineObject71Serializer;
}

