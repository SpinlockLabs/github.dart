import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for AuditLogEvent
void main() {
  final instance = AuditLogEvent();

  group('test AuditLogEvent', () {
    // The time the audit log event occurred, given as a [Unix timestamp](http://en.wikipedia.org/wiki/Unix_time).
    // int atTimestamp
    test('to test the property `atTimestamp`', () async {
      // TODO
    });

    // The name of the action that was performed, for example `user.login` or `repo.create`.
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // bool activeWas
    test('to test the property `activeWas`', () async {
      // TODO
    });

    // The actor who performed the action.
    // String actor
    test('to test the property `actor`', () async {
      // TODO
    });

    // The username of the account being blocked.
    // String blockedUser
    test('to test the property `blockedUser`', () async {
      // TODO
    });

    // String business
    test('to test the property `business`', () async {
      // TODO
    });

    // List config
    test('to test the property `config`', () async {
      // TODO
    });

    // List configWas
    test('to test the property `configWas`', () async {
      // TODO
    });

    // String contentType
    test('to test the property `contentType`', () async {
      // TODO
    });

    // The time the audit log event was recorded, given as a [Unix timestamp](http://en.wikipedia.org/wiki/Unix_time).
    // int createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // String deployKeyFingerprint
    test('to test the property `deployKeyFingerprint`', () async {
      // TODO
    });

    // String emoji
    test('to test the property `emoji`', () async {
      // TODO
    });

    // List events
    test('to test the property `events`', () async {
      // TODO
    });

    // List eventsWere
    test('to test the property `eventsWere`', () async {
      // TODO
    });

    // String explanation
    test('to test the property `explanation`', () async {
      // TODO
    });

    // String fingerprint
    test('to test the property `fingerprint`', () async {
      // TODO
    });

    // int hookId
    test('to test the property `hookId`', () async {
      // TODO
    });

    // bool limitedAvailability
    test('to test the property `limitedAvailability`', () async {
      // TODO
    });

    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String oldUser
    test('to test the property `oldUser`', () async {
      // TODO
    });

    // String opensshPublicKey
    test('to test the property `opensshPublicKey`', () async {
      // TODO
    });

    // String org
    test('to test the property `org`', () async {
      // TODO
    });

    // String previousVisibility
    test('to test the property `previousVisibility`', () async {
      // TODO
    });

    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // The name of the repository.
    // String repo
    test('to test the property `repo`', () async {
      // TODO
    });

    // The name of the repository.
    // String repository
    test('to test the property `repository`', () async {
      // TODO
    });

    // bool repositoryPublic
    test('to test the property `repositoryPublic`', () async {
      // TODO
    });

    // String targetLogin
    test('to test the property `targetLogin`', () async {
      // TODO
    });

    // String team
    test('to test the property `team`', () async {
      // TODO
    });

    // The type of protocol (for example, HTTP or SSH) used to transfer Git data.
    // int transportProtocol
    test('to test the property `transportProtocol`', () async {
      // TODO
    });

    // A human readable name for the protocol (for example, HTTP or SSH) used to transfer Git data.
    // String transportProtocolName
    test('to test the property `transportProtocolName`', () async {
      // TODO
    });

    // The user that was affected by the action performed (if available).
    // String user
    test('to test the property `user`', () async {
      // TODO
    });

    // The repository visibility, for example `public` or `private`.
    // String visibility
    test('to test the property `visibility`', () async {
      // TODO
    });


  });

}
