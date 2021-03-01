//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/gpg_key_emails.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/gpg_key_subkeys.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gpg_key.g.dart';

abstract class GpgKey implements Built<GpgKey, GpgKeyBuilder> {

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
    BuiltList<GpgKeyEmails> get emails;

    @nullable
    @BuiltValueField(wireName: r'subkeys')
    BuiltList<GpgKeySubkeys> get subkeys;

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
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'expires_at')
    DateTime get expiresAt;

    @nullable
    @BuiltValueField(wireName: r'raw_key')
    String get rawKey;

    // Boilerplate code needed to wire-up generated code
    GpgKey._();

    static void _initializeBuilder(GpgKeyBuilder b) => b;

    factory GpgKey([void updates(GpgKeyBuilder b)]) = _$GpgKey;
    static Serializer<GpgKey> get serializer => _$gpgKeySerializer;
}

