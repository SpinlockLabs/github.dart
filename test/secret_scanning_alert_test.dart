import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for SecretScanningAlert
void main() {
  final instance = SecretScanningAlert();

  group('test SecretScanningAlert', () {
    // The security alert number.
    // int number
    test('to test the property `number`', () async {
      // TODO
    });

    // The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The REST API URL of the alert resource.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // The GitHub URL of the alert resource.
    // String htmlUrl
    test('to test the property `htmlUrl`', () async {
      // TODO
    });

    // SecretScanningAlertState state
    test('to test the property `state`', () async {
      // TODO
    });

    // SecretScanningAlertResolution resolution
    test('to test the property `resolution`', () async {
      // TODO
    });

    // The time that the alert was resolved in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    // DateTime resolvedAt
    test('to test the property `resolvedAt`', () async {
      // TODO
    });

    // SimpleUser resolvedBy
    test('to test the property `resolvedBy`', () async {
      // TODO
    });

    // The type of secret that secret scanning detected.
    // String secretType
    test('to test the property `secretType`', () async {
      // TODO
    });

    // The secret that was detected.
    // String secret
    test('to test the property `secret`', () async {
      // TODO
    });


  });

}
