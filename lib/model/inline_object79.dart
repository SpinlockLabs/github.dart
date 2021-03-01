//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object79.g.dart';

abstract class InlineObject79 implements Built<InlineObject79, InlineObject79Builder> {

    /// users parameter
    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<String> get users;

    // Boilerplate code needed to wire-up generated code
    InlineObject79._();

    static void _initializeBuilder(InlineObject79Builder b) => b;

    factory InlineObject79([void updates(InlineObject79Builder b)]) = _$InlineObject79;
    static Serializer<InlineObject79> get serializer => _$inlineObject79Serializer;
}

