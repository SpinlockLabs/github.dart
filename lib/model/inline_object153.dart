//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object153.g.dart';

abstract class InlineObject153 implements Built<InlineObject153, InlineObject153Builder> {

    /// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an environment public key](https://docs.github.com/rest/reference/actions#get-an-environment-public-key) endpoint.
    @nullable
    @BuiltValueField(wireName: r'encrypted_value')
    String get encryptedValue;

    /// ID of the key you used to encrypt the secret.
    @nullable
    @BuiltValueField(wireName: r'key_id')
    String get keyId;

    // Boilerplate code needed to wire-up generated code
    InlineObject153._();

    static void _initializeBuilder(InlineObject153Builder b) => b;

    factory InlineObject153([void updates(InlineObject153Builder b)]) = _$InlineObject153;
    static Serializer<InlineObject153> get serializer => _$inlineObject153Serializer;
}

