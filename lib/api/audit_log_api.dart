//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:github/model/audit_log_event.dart';
import 'package:built_collection/built_collection.dart';

class AuditLogApi {

    final Dio _dio;

    final Serializers _serializers;

    const AuditLogApi(this._dio, this._serializers);

    /// Get the audit log for an enterprise
    ///
    /// **Note:** The audit log REST API is currently in beta and is subject to change.  Gets the audit log for an enterprise. To use this endpoint, you must be an enterprise admin, and you must use an access token with the `admin:enterprise` scope.
    Future<Response<BuiltList<AuditLogEvent>>> auditLogGetAuditLog(
        String enterprise, { 
        String phrase,
        String include,
        String after,
        String before,
        String order,
        int perPage,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/audit-log'.replaceAll('{' r'enterprise' '}', enterprise.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'phrase'] = phrase;
        queryParams[r'include'] = include;
        queryParams[r'after'] = after;
        queryParams[r'before'] = before;
        queryParams[r'order'] = order;
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
            const type = FullType(BuiltList, [FullType(AuditLogEvent)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<AuditLogEvent>;

            return Response<BuiltList<AuditLogEvent>>(
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
