import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject91
void main() {
  final instance = InlineObject91();

  group('test InlineObject91', () {
    // The ref to deploy. This can be a branch, tag, or SHA.
    // String ref
    test('to test the property `ref`', () async {
      // TODO
    });

    // Specifies a task to execute (e.g., `deploy` or `deploy:migrations`).
    // String task (default value: 'deploy')
    test('to test the property `task`', () async {
      // TODO
    });

    // Attempts to automatically merge the default branch into the requested ref, if it's behind the default branch.
    // bool autoMerge (default value: true)
    test('to test the property `autoMerge`', () async {
      // TODO
    });

    // The [status](https://docs.github.com/rest/reference/repos#statuses) contexts to verify against commit status checks. If you omit this parameter, GitHub verifies all unique contexts before creating a deployment. To bypass checking entirely, pass an empty array. Defaults to all unique contexts.
    // List<String> requiredContexts (default value: const [])
    test('to test the property `requiredContexts`', () async {
      // TODO
    });

    // OneOfmapstring payload
    test('to test the property `payload`', () async {
      // TODO
    });

    // Name for the target deployment environment (e.g., `production`, `staging`, `qa`).
    // String environment (default value: 'production')
    test('to test the property `environment`', () async {
      // TODO
    });

    // Short description of the deployment.
    // String description (default value: '')
    test('to test the property `description`', () async {
      // TODO
    });

    // Specifies if the given environment is specific to the deployment and will no longer exist at some point in the future. Default: `false`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    // bool transientEnvironment (default value: false)
    test('to test the property `transientEnvironment`', () async {
      // TODO
    });

    // Specifies if the given environment is one that end-users directly interact with. Default: `true` when `environment` is `production` and `false` otherwise.   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    // bool productionEnvironment
    test('to test the property `productionEnvironment`', () async {
      // TODO
    });

    // String createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });


  });

}
