//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_authorization.g.dart';

abstract class CredentialAuthorization implements Built<CredentialAuthorization, CredentialAuthorizationBuilder> {

    /// User login that owns the underlying credential.
    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    /// Unique identifier for the credential.
    @nullable
    @BuiltValueField(wireName: r'credential_id')
    int get credentialId;

    /// Human-readable description of the credential type.
    @nullable
    @BuiltValueField(wireName: r'credential_type')
    String get credentialType;

    /// Last eight characters of the credential. Only included in responses with credential_type of personal access token.
    @nullable
    @BuiltValueField(wireName: r'token_last_eight')
    String get tokenLastEight;

    /// Date when the credential was authorized for use.
    @nullable
    @BuiltValueField(wireName: r'credential_authorized_at')
    DateTime get credentialAuthorizedAt;

    /// List of oauth scopes the token has been granted.
    @nullable
    @BuiltValueField(wireName: r'scopes')
    BuiltList<String> get scopes;

    /// Unique string to distinguish the credential. Only included in responses with credential_type of SSH Key.
    @nullable
    @BuiltValueField(wireName: r'fingerprint')
    String get fingerprint;

    /// Date when the credential was last accessed. May be null if it was never accessed
    @nullable
    @BuiltValueField(wireName: r'credential_accessed_at')
    DateTime get credentialAccessedAt;

    @nullable
    @BuiltValueField(wireName: r'authorized_credential_id')
    int get authorizedCredentialId;

    /// The title given to the ssh key. This will only be present when the credential is an ssh key.
    @nullable
    @BuiltValueField(wireName: r'authorized_credential_title')
    String get authorizedCredentialTitle;

    /// The note given to the token. This will only be present when the credential is a token.
    @nullable
    @BuiltValueField(wireName: r'authorized_credential_note')
    String get authorizedCredentialNote;

    // Boilerplate code needed to wire-up generated code
    CredentialAuthorization._();

    static void _initializeBuilder(CredentialAuthorizationBuilder b) => b;

    factory CredentialAuthorization([void updates(CredentialAuthorizationBuilder b)]) = _$CredentialAuthorization;
    static Serializer<CredentialAuthorization> get serializer => _$credentialAuthorizationSerializer;
}

