//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:github/model/secret_scanning_alert.dart';
import 'package:github/model/inline_response503.dart';
import 'package:github/model/inline_object147.dart';
import 'package:built_collection/built_collection.dart';

class SecretScanningApi {

    final Dio _dio;

    final Serializers _serializers;

    const SecretScanningApi(this._dio, this._serializers);

    /// Get a secret scanning alert
    ///
    /// Gets a single secret scanning alert detected in a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.
    Future<Response<SecretScanningAlert>> secretScanningGetAlert(
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
        final String _path = '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'alert_number' '}', alertNumber.toString());

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
            final serializer = _serializers.serializerForType(SecretScanningAlert) as Serializer<SecretScanningAlert>;
            final data = _serializers.deserializeWith<SecretScanningAlert>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<SecretScanningAlert>(
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

    /// List secret scanning alerts for a repository
    ///
    /// Lists all secret scanning alerts for a private repository, from newest to oldest. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.
    Future<Response<BuiltList<SecretScanningAlert>>> secretScanningListAlertsForRepo(
        String owner,
        String repo, { 
        String state,
        int page,
        int perPage,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/secret-scanning/alerts'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'state'] = state;
        queryParams[r'page'] = page;
        queryParams[r'per_page'] = perPage;
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
            const type = FullType(BuiltList, [FullType(SecretScanningAlert)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<SecretScanningAlert>;

            return Response<BuiltList<SecretScanningAlert>>(
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

    /// Update a secret scanning alert
    ///
    /// Updates the status of a secret scanning alert in a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.  GitHub Apps must have the `secret_scanning_alerts` write permission to use this endpoint.
    Future<Response<SecretScanningAlert>> secretScanningUpdateAlert(
        String owner,
        String repo,
        int alertNumber, { 
        InlineObject147 inlineObject147,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'alert_number' '}', alertNumber.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject147) as Serializer<InlineObject147>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject147);
        final jsoninlineObject147 = json.encode(serializedBody);
        bodyData = jsoninlineObject147;

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
            final serializer = _serializers.serializerForType(SecretScanningAlert) as Serializer<SecretScanningAlert>;
            final data = _serializers.deserializeWith<SecretScanningAlert>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<SecretScanningAlert>(
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
