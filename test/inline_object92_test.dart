import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject92
void main() {
  final instance = InlineObject92();

  group('test InlineObject92', () {
    // The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
    // String state
    test('to test the property `state`', () async {
      // TODO
    });

    // The target URL to associate with this status. This URL should contain output to keep the user updated while the task is running or serve as historical information for what happened in the deployment. **Note:** It's recommended to use the `log_url` parameter, which replaces `target_url`.
    // String targetUrl (default value: '')
    test('to test the property `targetUrl`', () async {
      // TODO
    });

    // The full URL of the deployment's output. This parameter replaces `target_url`. We will continue to accept `target_url` to support legacy uses, but we recommend replacing `target_url` with `log_url`. Setting `log_url` will automatically set `target_url` to the same value. Default: `\"\"`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    // String logUrl (default value: '')
    test('to test the property `logUrl`', () async {
      // TODO
    });

    // A short description of the status. The maximum description length is 140 characters.
    // String description (default value: '')
    test('to test the property `description`', () async {
      // TODO
    });

    // Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`. **Note:** This parameter requires you to use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.
    // String environment
    test('to test the property `environment`', () async {
      // TODO
    });

    // Sets the URL for accessing your environment. Default: `\"\"`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    // String environmentUrl (default value: '')
    test('to test the property `environmentUrl`', () async {
      // TODO
    });

    // Adds a new `inactive` status to all prior non-transient, non-production environment deployments with the same repository and `environment` name as the created status's deployment. An `inactive` status is only added to deployments that had a `success` state. Default: `true`   **Note:** To add an `inactive` status to `production` environments, you must use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    // bool autoInactive
    test('to test the property `autoInactive`', () async {
      // TODO
    });


  });

}
