import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for ReposOwnerRepoHooksHookIdConfig
void main() {
  final instance = ReposOwnerRepoHooksHookIdConfig();

  group('test ReposOwnerRepoHooksHookIdConfig', () {
    // The URL to which the payloads will be delivered.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // The media type used to serialize the payloads. Supported values include `json` and `form`. The default is `form`.
    // String contentType
    test('to test the property `contentType`', () async {
      // TODO
    });

    // If provided, the `secret` will be used as the `key` to generate the HMAC hex digest value for [delivery signature headers](https://docs.github.com/webhooks/event-payloads/#delivery-headers).
    // String secret
    test('to test the property `secret`', () async {
      // TODO
    });

    // Determines whether the SSL certificate of the host for `url` will be verified when delivering payloads. Supported values include `0` (verification is performed) and `1` (verification is not performed). The default is `0`. **We strongly recommend not setting this to `1` as you are subject to man-in-the-middle and other attacks.**
    // String insecureSsl
    test('to test the property `insecureSsl`', () async {
      // TODO
    });

    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // String room
    test('to test the property `room`', () async {
      // TODO
    });


  });

}
