//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:github/model/code_scanning_sarifs_status.dart';
import 'package:github/model/code_scanning_alert.dart';
import 'package:github/model/code_scanning_alert_instance.dart';
import 'package:github/model/basic_error.dart';
import 'package:github/model/inline_response503.dart';
import 'package:github/model/inline_object84.dart';
import 'package:github/model/inline_object83.dart';
import 'package:github/model/code_scanning_alert_state.dart';
import 'package:github/model/code_scanning_analysis_deletion.dart';
import 'package:github/model/code_scanning_analysis.dart';
import 'package:github/model/code_scanning_sarifs_receipt.dart';
import 'package:github/model/code_scanning_alert_items.dart';
import 'package:built_collection/built_collection.dart';

class CodeScanningApi {

    final Dio _dio;

    final Serializers _serializers;

    const CodeScanningApi(this._dio, this._serializers);

    /// Delete a code scanning analysis from a repository
    ///
    /// Deletes a specified code scanning analysis from a repository. For private repositories, you must use an access token with the `repo` scope. For public repositories, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.  You can delete one analysis at a time. To delete a series of analyses, start with the most recent analysis and work backwards. Conceptually, the process is similar to the undo function in a text editor.  When you list the analyses for a repository, one or more will be identified as deletable in the response:  ``` \"deletable\": true ```  An analysis is deletable when it's the most recent in a set of analyses. Typically, a repository will have multiple sets of analyses for each enabled code scanning tool, where a set is determined by a unique combination of analysis values:  * `ref` * `tool` * `analysis_key` * `environment`  If you attempt to delete an analysis that is not the most recent in a set, you'll get a 400 response with the message:  ``` Analysis specified is not deletable. ```  The response from a successful `DELETE` operation provides you with two alternative URLs for deleting the next analysis in the set (see the example default response below). Use the `next_analysis_url` URL if you want to avoid accidentally deleting the final analysis in the set. This is a useful option if you want to preserve at least one analysis for the specified tool in your repository. Use the `confirm_delete_url` URL if you are content to remove all analyses for a tool. When you delete the last analysis in a set the value of `next_analysis_url` and `confirm_delete_url` in the 200 response is `null`.  As an example of the deletion process, let's imagine that you added a workflow that configured a particular code scanning tool to analyze the code in a repository. This tool has added 15 analyses: 10 on the default branch, and another 5 on a topic branch. You therefore have two separate sets of analyses for this tool. You've now decided that you want to remove all of the analyses for the tool. To do this you must make 15 separate deletion requests. To start, you must find the deletable analysis for one of the sets, step through deleting the analyses in that set, and then repeat the process for the second set. The procedure therefore consists of a nested loop:  **Outer loop**: * List the analyses for the repository, filtered by tool. * Parse this list to find a deletable analysis. If found:    **Inner loop**:   * Delete the identified analysis.   * Parse the response for the value of `next_analysis_url` and, if found, use this in the next iteration.  The above process assumes that you want to remove all trace of the tool's analyses from the GitHub user interface, for the specified repository, and it therefore uses the `next_analysis_url` value. Alternatively, you could use the `confirm_delete_url` value, which would leave the last analysis in each set undeleted to avoid removing a tool's analysis entirely.
    Future<Response<CodeScanningAnalysisDeletion>> codeScanningDeleteAnalysis(
        String owner,
        String repo,
        int analysisId, { 
        String confirmDelete,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'analysis_id' '}', analysisId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'confirm_delete'] = confirmDelete;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'delete'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(CodeScanningAnalysisDeletion) as Serializer<CodeScanningAnalysisDeletion>;
            final data = _serializers.deserializeWith<CodeScanningAnalysisDeletion>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<CodeScanningAnalysisDeletion>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Get a code scanning alert
    ///
    /// Gets a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  **Deprecation notice**: The instances field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The same information can now be retrieved via a GET request to the URL specified by `instances_url`.
    Future<Response<CodeScanningAlert>> codeScanningGetAlert(
        String owner,
        String repo,
        int alertNumber, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'alert_number' '}', alertNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(CodeScanningAlert) as Serializer<CodeScanningAlert>;
            final data = _serializers.deserializeWith<CodeScanningAlert>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<CodeScanningAlert>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Get a code scanning analysis for a repository
    ///
    /// Gets a specified code scanning analysis for a repository. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The default JSON response contains fields that describe the analysis. This includes the Git reference and commit SHA to which the analysis relates, the datetime of the analysis, the name of the code scanning tool, and the number of alerts.  The `rules_count` field in the default response give the number of rules that were run in the analysis. For very old analyses this data is not available, and `0` is returned in this field.  If you use the Accept header `application/sarif+json`, the response contains the analysis data that was uploaded. This is formatted as [SARIF version 2.1.0](https://docs.oasis-open.org/sarif/sarif/v2.1.0/cs01/sarif-v2.1.0-cs01.html). For an example response, see \"[Custom media type for code scanning](#custom-media-type-for-code-scanning).\"  **Deprecation notice**: The `tool_name` field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The tool name can now be found inside the `tool` field.
    Future<Response<CodeScanningAnalysis>> codeScanningGetAnalysis(
        String owner,
        String repo,
        int analysisId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'analysis_id' '}', analysisId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(CodeScanningAnalysis) as Serializer<CodeScanningAnalysis>;
            final data = _serializers.deserializeWith<CodeScanningAnalysis>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<CodeScanningAnalysis>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Get information about a SARIF upload
    ///
    /// Gets information about a SARIF upload, including the status and the URL of the analysis that was uploaded so that you can retrieve details of the analysis. For more information, see \"[Get a code scanning analysis for a repository](/rest/reference/code-scanning#get-a-code-scanning-analysis-for-a-repository).\" You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.
    Future<Response<CodeScanningSarifsStatus>> codeScanningGetSarif(
        String owner,
        String repo,
        String sarifId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/sarifs/{sarif_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'sarif_id' '}', sarifId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(CodeScanningSarifsStatus) as Serializer<CodeScanningSarifsStatus>;
            final data = _serializers.deserializeWith<CodeScanningSarifsStatus>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<CodeScanningSarifsStatus>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List code scanning alerts for a repository
    ///
    /// Lists all open code scanning alerts for the default branch (usually `main` or `master`). You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The response includes a `most_recent_instance` object. This provides details of the most recent instance of this alert for the the default branch or for the specified Git reference (if you used `ref` in the request).
    Future<Response<BuiltList<CodeScanningAlertItems>>> codeScanningListAlertsForRepo(
        String owner,
        String repo, { 
        String toolName,
        String toolGuid,
        int page,
        int perPage,
        String ref,
        CodeScanningAlertState state,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/alerts'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'tool_name'] = toolName;
        queryParams[r'tool_guid'] = toolGuid;
        queryParams[r'page'] = page;
        queryParams[r'per_page'] = perPage;
        queryParams[r'ref'] = ref;
        queryParams[r'state'] = state;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(CodeScanningAlertItems)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<CodeScanningAlertItems>;

            return Response<BuiltList<CodeScanningAlertItems>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List instances of a code scanning alert
    ///
    /// Lists all instances of the specified code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.
    Future<Response<BuiltList<CodeScanningAlertInstance>>> codeScanningListAlertsInstances(
        String owner,
        String repo,
        int alertNumber, { 
        int page,
        int perPage,
        String ref,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/instances'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'alert_number' '}', alertNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'page'] = page;
        queryParams[r'per_page'] = perPage;
        queryParams[r'ref'] = ref;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(CodeScanningAlertInstance)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<CodeScanningAlertInstance>;

            return Response<BuiltList<CodeScanningAlertInstance>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List code scanning analyses for a repository
    ///
    /// Lists the details of all code scanning analyses for a repository, starting with the most recent. The response is paginated and you can use the `page` and `per_page` parameters to list the analyses you're interested in. By default 30 analyses are listed per page.  The `rules_count` field in the response give the number of rules that were run in the analysis. For very old analyses this data is not available, and `0` is returned in this field.  You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  **Deprecation notice**: The `tool_name` field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The tool name can now be found inside the `tool` field.
    Future<Response<BuiltList<CodeScanningAnalysis>>> codeScanningListRecentAnalyses(
        String owner,
        String repo, { 
        String toolName,
        String toolGuid,
        int page,
        int perPage,
        String ref,
        String sarifId,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/analyses'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'tool_name'] = toolName;
        queryParams[r'tool_guid'] = toolGuid;
        queryParams[r'page'] = page;
        queryParams[r'per_page'] = perPage;
        queryParams[r'ref'] = ref;
        queryParams[r'sarif_id'] = sarifId;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(CodeScanningAnalysis)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<CodeScanningAnalysis>;

            return Response<BuiltList<CodeScanningAnalysis>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Update a code scanning alert
    ///
    /// Updates the status of a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` write permission to use this endpoint.
    Future<Response<CodeScanningAlert>> codeScanningUpdateAlert(
        String owner,
        String repo,
        int alertNumber, { 
        InlineObject83 inlineObject83,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'alert_number' '}', alertNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject83) as Serializer<InlineObject83>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject83);
        final jsoninlineObject83 = json.encode(serializedBody);
        bodyData = jsoninlineObject83;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'patch'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(CodeScanningAlert) as Serializer<CodeScanningAlert>;
            final data = _serializers.deserializeWith<CodeScanningAlert>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<CodeScanningAlert>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Upload an analysis as SARIF data
    ///
    /// Uploads SARIF data containing the results of a code scanning analysis to make the results available in a repository. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` write permission to use this endpoint.  You must compress the SARIF-formatted analysis data that you want to upload, using `gzip`, and then encode it as a Base64 format string. For example:  ``` gzip -c analysis-data.sarif | base64 ```  SARIF upload supports a maximum of 1000 results per analysis run. Any results over this limit are ignored. Typically, but not necessarily, a SARIF file contains a single run of a single tool. If a code scanning tool generates too many results, you should update the analysis configuration to run only the most important rules or queries.  The `202 Accepted`, response includes an `id` value. You can use this ID to check the status of the upload by using this for the `/sarifs/{sarif_id}` endpoint. For more information, see \"[Get information about a SARIF upload](/rest/reference/code-scanning#get-information-about-a-sarif-upload).\"
    Future<Response<CodeScanningSarifsReceipt>> codeScanningUploadSarif(
        String owner,
        String repo, { 
        InlineObject84 inlineObject84,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/code-scanning/sarifs'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject84) as Serializer<InlineObject84>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject84);
        final jsoninlineObject84 = json.encode(serializedBody);
        bodyData = jsoninlineObject84;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(CodeScanningSarifsReceipt) as Serializer<CodeScanningSarifsReceipt>;
            final data = _serializers.deserializeWith<CodeScanningSarifsReceipt>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<CodeScanningSarifsReceipt>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

}
