import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject6
void main() {
  final instance = InlineObject6();

  group('test InlineObject6', () {
    // **Required.** The OAuth access token used to authenticate to the GitHub API.
    // String accessToken
    test('to test the property `accessToken`', () async {
      // TODO
    });

    // The name of the user or organization to scope the user-to-server access token to. **Required** unless `target_id` is specified.
    // String target
    test('to test the property `target`', () async {
      // TODO
    });

    // The ID of the user or organization to scope the user-to-server access token to. **Required** unless `target` is specified.
    // int targetId
    test('to test the property `targetId`', () async {
      // TODO
    });

    // The list of repository IDs to scope the user-to-server access token to. `repositories` may not be specified if `repository_ids` is specified.
    // List<String> repositories (default value: const [])
    test('to test the property `repositories`', () async {
      // TODO
    });

    // The list of repository names to scope the user-to-server access token to. `repository_ids` may not be specified if `repositories` is specified.
    // List<int> repositoryIds (default value: const [])
    test('to test the property `repositoryIds`', () async {
      // TODO
    });

    // AppPermissions permissions
    test('to test the property `permissions`', () async {
      // TODO
    });


  });

}
