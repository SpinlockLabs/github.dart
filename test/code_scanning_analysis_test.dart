import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for CodeScanningAnalysis
void main() {
  final instance = CodeScanningAnalysis();

  group('test CodeScanningAnalysis', () {
    // The full Git reference, formatted as `refs/heads/<branch name>`.
    // String ref
    test('to test the property `ref`', () async {
      // TODO
    });

    // The SHA of the commit to which the analysis you are uploading relates.
    // String commitSha
    test('to test the property `commitSha`', () async {
      // TODO
    });

    // Identifies the configuration under which the analysis was executed. For example, in GitHub Actions this includes the workflow filename and job name.
    // String analysisKey
    test('to test the property `analysisKey`', () async {
      // TODO
    });

    // Identifies the variable values associated with the environment in which this analysis was performed.
    // String environment
    test('to test the property `environment`', () async {
      // TODO
    });

    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // The time that the analysis was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The total number of results in the analysis.
    // int resultsCount
    test('to test the property `resultsCount`', () async {
      // TODO
    });

    // The total number of rules used in the analysis.
    // int rulesCount
    test('to test the property `rulesCount`', () async {
      // TODO
    });

    // Unique identifier for this analysis.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The REST API URL of the analysis resource.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // An identifier for the upload.
    // String sarifId
    test('to test the property `sarifId`', () async {
      // TODO
    });

    // CodeScanningAnalysisTool tool
    test('to test the property `tool`', () async {
      // TODO
    });

    // bool deletable
    test('to test the property `deletable`', () async {
      // TODO
    });


  });

}
