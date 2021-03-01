//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gpg_key_subkeys.g.dart';

abstract class GpgKeySubkeys implements Built<GpgKeySubkeys, GpgKeySubkeysBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'primary_key_id')
    int get primaryKeyId;

    @nullable
    @BuiltValueField(wireName: r'key_id')
    String get keyId;

    @nullable
    @BuiltValueField(wireName: r'public_key')
    String get publicKey;

    @nullable
    @BuiltValueField(wireName: r'emails')
    BuiltList<JsonObject> get emails;

    @nullable
    @BuiltValueField(wireName: r'subkeys')
    BuiltList<JsonObject> get subkeys;

    @nullable
    @BuiltValueField(wireName: r'can_sign')
    bool get canSign;

    @nullable
    @BuiltValueField(wireName: r'can_encrypt_comms')
    bool get canEncryptComms;

    @nullable
    @BuiltValueField(wireName: r'can_encrypt_storage')
    bool get canEncryptStorage;

    @nullable
    @BuiltValueField(wireName: r'can_certify')
    bool get canCertify;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'expires_at')
    String get expiresAt;

    @nullable
    @BuiltValueField(wireName: r'raw_key')
    String get rawKey;

    // Boilerplate code needed to wire-up generated code
    GpgKeySubkeys._();

    static void _initializeBuilder(GpgKeySubkeysBuilder b) => b;

    factory GpgKeySubkeys([void updates(GpgKeySubkeysBuilder b)]) = _$GpgKeySubkeys;
    static Serializer<GpgKeySubkeys> get serializer => _$gpgKeySubkeysSerializer;
}

