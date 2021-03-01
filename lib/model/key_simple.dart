//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_simple.g.dart';

abstract class KeySimple implements Built<KeySimple, KeySimpleBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    // Boilerplate code needed to wire-up generated code
    KeySimple._();

    static void _initializeBuilder(KeySimpleBuilder b) => b;

    factory KeySimple([void updates(KeySimpleBuilder b)]) = _$KeySimple;
    static Serializer<KeySimple> get serializer => _$keySimpleSerializer;
}

