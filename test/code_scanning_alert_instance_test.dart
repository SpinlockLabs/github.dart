import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for CodeScanningAlertInstance
void main() {
  final instance = CodeScanningAlertInstance();

  group('test CodeScanningAlertInstance', () {
    // The full Git reference, formatted as `refs/heads/<branch name>`.
    // String ref
    test('to test the property `ref`', () async {
      // TODO
    });

    // Identifies the configuration under which the analysis was executed. For example, in GitHub Actions this includes the workflow filename and job name.
    // String analysisKey
    test('to test the property `analysisKey`', () async {
      // TODO
    });

    // Identifies the variable values associated with the environment in which the analysis that generated this alert instance was performed, such as the language that was analyzed.
    // String environment
    test('to test the property `environment`', () async {
      // TODO
    });

    // CodeScanningAlertState state
    test('to test the property `state`', () async {
      // TODO
    });

    // String commitSha
    test('to test the property `commitSha`', () async {
      // TODO
    });

    // CodeScanningAlertInstanceMessage message
    test('to test the property `message`', () async {
      // TODO
    });

    // CodeScanningAlertLocation location
    test('to test the property `location`', () async {
      // TODO
    });

    // String htmlUrl
    test('to test the property `htmlUrl`', () async {
      // TODO
    });

    // Classifications that have been applied to the file that triggered the alert. For example identifying it as documentation, or a generated file.
    // List<CodeScanningAlertClassification> classifications (default value: const [])
    test('to test the property `classifications`', () async {
      // TODO
    });


  });

}
