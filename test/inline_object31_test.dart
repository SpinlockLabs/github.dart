import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject31
void main() {
  final instance = InlineObject31();

  group('test InlineObject31', () {
    // Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an organization public key](https://docs.github.com/rest/reference/actions#get-an-organization-public-key) endpoint.
    // String encryptedValue
    test('to test the property `encryptedValue`', () async {
      // TODO
    });

    // ID of the key you used to encrypt the secret.
    // String keyId
    test('to test the property `keyId`', () async {
      // TODO
    });

    // Configures the access that repositories have to the organization secret. Can be one of:   \\- `all` - All repositories in an organization can access the secret.   \\- `private` - Private repositories in an organization can access the secret.   \\- `selected` - Only specific repositories can access the secret.
    // String visibility
    test('to test the property `visibility`', () async {
      // TODO
    });

    // An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can manage the list of selected repositories using the [List selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#list-selected-repositories-for-an-organization-secret), [Set selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#set-selected-repositories-for-an-organization-secret), and [Remove selected repository from an organization secret](https://docs.github.com/rest/reference/actions#remove-selected-repository-from-an-organization-secret) endpoints.
    // List<String> selectedRepositoryIds (default value: const [])
    test('to test the property `selectedRepositoryIds`', () async {
      // TODO
    });


  });

}
