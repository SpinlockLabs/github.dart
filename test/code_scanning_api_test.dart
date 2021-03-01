//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for CodeScanningApi
void main() {
  final instance = CodeScanningApi();

  group('tests for CodeScanningApi', () {
    // Delete a code scanning analysis from a repository
    //
    // Deletes a specified code scanning analysis from a repository. For private repositories, you must use an access token with the `repo` scope. For public repositories, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.  You can delete one analysis at a time. To delete a series of analyses, start with the most recent analysis and work backwards. Conceptually, the process is similar to the undo function in a text editor.  When you list the analyses for a repository, one or more will be identified as deletable in the response:  ``` \"deletable\": true ```  An analysis is deletable when it's the most recent in a set of analyses. Typically, a repository will have multiple sets of analyses for each enabled code scanning tool, where a set is determined by a unique combination of analysis values:  * `ref` * `tool` * `analysis_key` * `environment`  If you attempt to delete an analysis that is not the most recent in a set, you'll get a 400 response with the message:  ``` Analysis specified is not deletable. ```  The response from a successful `DELETE` operation provides you with two alternative URLs for deleting the next analysis in the set (see the example default response below). Use the `next_analysis_url` URL if you want to avoid accidentally deleting the final analysis in the set. This is a useful option if you want to preserve at least one analysis for the specified tool in your repository. Use the `confirm_delete_url` URL if you are content to remove all analyses for a tool. When you delete the last analysis in a set the value of `next_analysis_url` and `confirm_delete_url` in the 200 response is `null`.  As an example of the deletion process, let's imagine that you added a workflow that configured a particular code scanning tool to analyze the code in a repository. This tool has added 15 analyses: 10 on the default branch, and another 5 on a topic branch. You therefore have two separate sets of analyses for this tool. You've now decided that you want to remove all of the analyses for the tool. To do this you must make 15 separate deletion requests. To start, you must find the deletable analysis for one of the sets, step through deleting the analyses in that set, and then repeat the process for the second set. The procedure therefore consists of a nested loop:  **Outer loop**: * List the analyses for the repository, filtered by tool. * Parse this list to find a deletable analysis. If found:    **Inner loop**:   * Delete the identified analysis.   * Parse the response for the value of `next_analysis_url` and, if found, use this in the next iteration.  The above process assumes that you want to remove all trace of the tool's analyses from the GitHub user interface, for the specified repository, and it therefore uses the `next_analysis_url` value. Alternatively, you could use the `confirm_delete_url` value, which would leave the last analysis in each set undeleted to avoid removing a tool's analysis entirely.
    //
    //Future<CodeScanningAnalysisDeletion> codeScanningDeleteAnalysis(String owner, String repo, int analysisId, { String confirmDelete }) async
    test('test codeScanningDeleteAnalysis', () async {
      // TODO
    });

    // Get a code scanning alert
    //
    // Gets a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  **Deprecation notice**: The instances field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The same information can now be retrieved via a GET request to the URL specified by `instances_url`.
    //
    //Future<CodeScanningAlert> codeScanningGetAlert(String owner, String repo, int alertNumber) async
    test('test codeScanningGetAlert', () async {
      // TODO
    });

    // Get a code scanning analysis for a repository
    //
    // Gets a specified code scanning analysis for a repository. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The default JSON response contains fields that describe the analysis. This includes the Git reference and commit SHA to which the analysis relates, the datetime of the analysis, the name of the code scanning tool, and the number of alerts.  The `rules_count` field in the default response give the number of rules that were run in the analysis. For very old analyses this data is not available, and `0` is returned in this field.  If you use the Accept header `application/sarif+json`, the response contains the analysis data that was uploaded. This is formatted as [SARIF version 2.1.0](https://docs.oasis-open.org/sarif/sarif/v2.1.0/cs01/sarif-v2.1.0-cs01.html). For an example response, see \"[Custom media type for code scanning](#custom-media-type-for-code-scanning).\"  **Deprecation notice**: The `tool_name` field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The tool name can now be found inside the `tool` field.
    //
    //Future<CodeScanningAnalysis> codeScanningGetAnalysis(String owner, String repo, int analysisId) async
    test('test codeScanningGetAnalysis', () async {
      // TODO
    });

    // Get information about a SARIF upload
    //
    // Gets information about a SARIF upload, including the status and the URL of the analysis that was uploaded so that you can retrieve details of the analysis. For more information, see \"[Get a code scanning analysis for a repository](/rest/reference/code-scanning#get-a-code-scanning-analysis-for-a-repository).\" You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.
    //
    //Future<CodeScanningSarifsStatus> codeScanningGetSarif(String owner, String repo, String sarifId) async
    test('test codeScanningGetSarif', () async {
      // TODO
    });

    // List code scanning alerts for a repository
    //
    // Lists all open code scanning alerts for the default branch (usually `main` or `master`). You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The response includes a `most_recent_instance` object. This provides details of the most recent instance of this alert for the the default branch or for the specified Git reference (if you used `ref` in the request).
    //
    //Future<List<CodeScanningAlertItems>> codeScanningListAlertsForRepo(String owner, String repo, { String toolName, String toolGuid, int page, int perPage, String ref, CodeScanningAlertState state }) async
    test('test codeScanningListAlertsForRepo', () async {
      // TODO
    });

    // List instances of a code scanning alert
    //
    // Lists all instances of the specified code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.
    //
    //Future<List<CodeScanningAlertInstance>> codeScanningListAlertsInstances(String owner, String repo, int alertNumber, { int page, int perPage, String ref }) async
    test('test codeScanningListAlertsInstances', () async {
      // TODO
    });

    // List code scanning analyses for a repository
    //
    // Lists the details of all code scanning analyses for a repository, starting with the most recent. The response is paginated and you can use the `page` and `per_page` parameters to list the analyses you're interested in. By default 30 analyses are listed per page.  The `rules_count` field in the response give the number of rules that were run in the analysis. For very old analyses this data is not available, and `0` is returned in this field.  You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  **Deprecation notice**: The `tool_name` field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The tool name can now be found inside the `tool` field.
    //
    //Future<List<CodeScanningAnalysis>> codeScanningListRecentAnalyses(String owner, String repo, { String toolName, String toolGuid, int page, int perPage, String ref, String sarifId }) async
    test('test codeScanningListRecentAnalyses', () async {
      // TODO
    });

    // Update a code scanning alert
    //
    // Updates the status of a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` write permission to use this endpoint.
    //
    //Future<CodeScanningAlert> codeScanningUpdateAlert(String owner, String repo, int alertNumber, { InlineObject83 inlineObject83 }) async
    test('test codeScanningUpdateAlert', () async {
      // TODO
    });

    // Upload an analysis as SARIF data
    //
    // Uploads SARIF data containing the results of a code scanning analysis to make the results available in a repository. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` write permission to use this endpoint.  You must compress the SARIF-formatted analysis data that you want to upload, using `gzip`, and then encode it as a Base64 format string. For example:  ``` gzip -c analysis-data.sarif | base64 ```  SARIF upload supports a maximum of 1000 results per analysis run. Any results over this limit are ignored. Typically, but not necessarily, a SARIF file contains a single run of a single tool. If a code scanning tool generates too many results, you should update the analysis configuration to run only the most important rules or queries.  The `202 Accepted`, response includes an `id` value. You can use this ID to check the status of the upload by using this for the `/sarifs/{sarif_id}` endpoint. For more information, see \"[Get information about a SARIF upload](/rest/reference/code-scanning#get-information-about-a-sarif-upload).\"
    //
    //Future<CodeScanningSarifsReceipt> codeScanningUploadSarif(String owner, String repo, { InlineObject84 inlineObject84 }) async
    test('test codeScanningUploadSarif', () async {
      // TODO
    });

  });
}
