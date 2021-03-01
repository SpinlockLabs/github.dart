import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject84
void main() {
  final instance = InlineObject84();

  group('test InlineObject84', () {
    // The SHA of the commit to which the analysis you are uploading relates.
    // String commitSha
    test('to test the property `commitSha`', () async {
      // TODO
    });

    // The full Git reference, formatted as `refs/heads/<branch name>`.
    // String ref
    test('to test the property `ref`', () async {
      // TODO
    });

    // A Base64 string representing the SARIF file to upload. You must first compress your SARIF file using [`gzip`](http://www.gnu.org/software/gzip/manual/gzip.html) and then translate the contents of the file into a Base64 encoding string. For more information, see \"[SARIF support for code scanning](https://docs.github.com/github/finding-security-vulnerabilities-and-errors-in-your-code/sarif-support-for-code-scanning).\"
    // String sarif
    test('to test the property `sarif`', () async {
      // TODO
    });

    // The base directory used in the analysis, as it appears in the SARIF file. This property is used to convert file paths from absolute to relative, so that alerts can be mapped to their correct location in the repository.
    // String checkoutUri
    test('to test the property `checkoutUri`', () async {
      // TODO
    });

    // The time that the analysis run began. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
    // DateTime startedAt
    test('to test the property `startedAt`', () async {
      // TODO
    });

    // The name of the tool used to generate the code scanning analysis. If this parameter is not used, the tool name defaults to \"API\". If the uploaded SARIF contains a tool GUID, this will be available for filtering using the `tool_guid` parameter of operations such as `GET /repos/{owner}/{repo}/code-scanning/alerts`.
    // String toolName
    test('to test the property `toolName`', () async {
      // TODO
    });


  });

}
