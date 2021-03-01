//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object77.g.dart';

abstract class InlineObject77 implements Built<InlineObject77, InlineObject77Builder> {

    /// users parameter
    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<String> get users;

    // Boilerplate code needed to wire-up generated code
    InlineObject77._();

    static void _initializeBuilder(InlineObject77Builder b) => b;

    factory InlineObject77([void updates(InlineObject77Builder b)]) = _$InlineObject77;
    static Serializer<InlineObject77> get serializer => _$inlineObject77Serializer;
}

