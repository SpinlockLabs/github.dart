import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for CredentialAuthorization
void main() {
  final instance = CredentialAuthorization();

  group('test CredentialAuthorization', () {
    // User login that owns the underlying credential.
    // String login
    test('to test the property `login`', () async {
      // TODO
    });

    // Unique identifier for the credential.
    // int credentialId
    test('to test the property `credentialId`', () async {
      // TODO
    });

    // Human-readable description of the credential type.
    // String credentialType
    test('to test the property `credentialType`', () async {
      // TODO
    });

    // Last eight characters of the credential. Only included in responses with credential_type of personal access token.
    // String tokenLastEight
    test('to test the property `tokenLastEight`', () async {
      // TODO
    });

    // Date when the credential was authorized for use.
    // DateTime credentialAuthorizedAt
    test('to test the property `credentialAuthorizedAt`', () async {
      // TODO
    });

    // List of oauth scopes the token has been granted.
    // List<String> scopes (default value: const [])
    test('to test the property `scopes`', () async {
      // TODO
    });

    // Unique string to distinguish the credential. Only included in responses with credential_type of SSH Key.
    // String fingerprint
    test('to test the property `fingerprint`', () async {
      // TODO
    });

    // Date when the credential was last accessed. May be null if it was never accessed
    // DateTime credentialAccessedAt
    test('to test the property `credentialAccessedAt`', () async {
      // TODO
    });

    // int authorizedCredentialId
    test('to test the property `authorizedCredentialId`', () async {
      // TODO
    });

    // The title given to the ssh key. This will only be present when the credential is an ssh key.
    // String authorizedCredentialTitle
    test('to test the property `authorizedCredentialTitle`', () async {
      // TODO
    });

    // The note given to the token. This will only be present when the credential is a token.
    // String authorizedCredentialNote
    test('to test the property `authorizedCredentialNote`', () async {
      // TODO
    });


  });

}
