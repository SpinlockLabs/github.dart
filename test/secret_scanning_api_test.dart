//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for SecretScanningApi
void main() {
  final instance = SecretScanningApi();

  group('tests for SecretScanningApi', () {
    // Get a secret scanning alert
    //
    // Gets a single secret scanning alert detected in a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.
    //
    //Future<SecretScanningAlert> secretScanningGetAlert(String owner, String repo, int alertNumber) async
    test('test secretScanningGetAlert', () async {
      // TODO
    });

    // List secret scanning alerts for a repository
    //
    // Lists all secret scanning alerts for a private repository, from newest to oldest. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.
    //
    //Future<List<SecretScanningAlert>> secretScanningListAlertsForRepo(String owner, String repo, { String state, int page, int perPage }) async
    test('test secretScanningListAlertsForRepo', () async {
      // TODO
    });

    // Update a secret scanning alert
    //
    // Updates the status of a secret scanning alert in a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` write permission to use this endpoint.
    //
    //Future<SecretScanningAlert> secretScanningUpdateAlert(String owner, String repo, int alertNumber, { InlineObject147 inlineObject147 }) async
    test('test secretScanningUpdateAlert', () async {
      // TODO
    });

  });
}
