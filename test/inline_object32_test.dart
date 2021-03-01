import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject32
void main() {
  final instance = InlineObject32();

  group('test InlineObject32', () {
    // An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can add and remove individual repositories using the [Set selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#set-selected-repositories-for-an-organization-secret) and [Remove selected repository from an organization secret](https://docs.github.com/rest/reference/actions#remove-selected-repository-from-an-organization-secret) endpoints.
    // List<int> selectedRepositoryIds (default value: const [])
    test('to test the property `selectedRepositoryIds`', () async {
      // TODO
    });


  });

}
