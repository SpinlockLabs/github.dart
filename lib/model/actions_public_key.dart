//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_public_key.g.dart';

abstract class ActionsPublicKey implements Built<ActionsPublicKey, ActionsPublicKeyBuilder> {

    /// The identifier for the key.
    @nullable
    @BuiltValueField(wireName: r'key_id')
    String get keyId;

    /// The Base64 encoded public key.
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
    String get createdAt;

    // Boilerplate code needed to wire-up generated code
    ActionsPublicKey._();

    static void _initializeBuilder(ActionsPublicKeyBuilder b) => b;

    factory ActionsPublicKey([void updates(ActionsPublicKeyBuilder b)]) = _$ActionsPublicKey;
    static Serializer<ActionsPublicKey> get serializer => _$actionsPublicKeySerializer;
}

