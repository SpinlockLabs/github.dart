//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key.g.dart';

abstract class Key implements Built<Key, KeyBuilder> {

    @nullable
    @BuiltValueField(wireName: r'key_id')
    String get keyId;

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'verified')
    bool get verified;

    @nullable
    @BuiltValueField(wireName: r'read_only')
    bool get readOnly;

    // Boilerplate code needed to wire-up generated code
    Key._();

    static void _initializeBuilder(KeyBuilder b) => b;

    factory Key([void updates(KeyBuilder b)]) = _$Key;
    static Serializer<Key> get serializer => _$keySerializer;
}

