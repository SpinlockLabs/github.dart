//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object63.g.dart';

abstract class InlineObject63 implements Built<InlineObject63, InlineObject63Builder> {

    /// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get a repository public key](https://docs.github.com/rest/reference/actions#get-a-repository-public-key) endpoint.
    @nullable
    @BuiltValueField(wireName: r'encrypted_value')
    String get encryptedValue;

    /// ID of the key you used to encrypt the secret.
    @nullable
    @BuiltValueField(wireName: r'key_id')
    String get keyId;

    // Boilerplate code needed to wire-up generated code
    InlineObject63._();

    static void _initializeBuilder(InlineObject63Builder b) => b;

    factory InlineObject63([void updates(InlineObject63Builder b)]) = _$InlineObject63;
    static Serializer<InlineObject63> get serializer => _$inlineObject63Serializer;
}

