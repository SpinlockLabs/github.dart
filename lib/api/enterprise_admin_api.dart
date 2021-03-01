//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:github/model/runner_groups_enterprise.dart';
import 'package:github/model/inline_response2004.dart';
import 'package:github/model/inline_response2003.dart';
import 'package:github/model/inline_response2002.dart';
import 'package:github/model/inline_response2001.dart';
import 'package:github/model/scim_enterprise_group.dart';
import 'package:github/model/scim_user_list_enterprise.dart';
import 'package:github/model/actions_enterprise_permissions.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/inline_object159.dart';
import 'package:github/model/scim_group_list_enterprise.dart';
import 'package:github/model/scim_enterprise_user.dart';
import 'package:github/model/authentication_token.dart';
import 'package:github/model/selected_actions.dart';
import 'package:github/model/inline_object13.dart';
import 'package:github/model/inline_object12.dart';
import 'package:github/model/runner_application.dart';
import 'package:github/model/inline_object154.dart';
import 'package:github/model/inline_object155.dart';
import 'package:github/model/inline_object17.dart';
import 'package:github/model/inline_object16.dart';
import 'package:github/model/inline_object156.dart';
import 'package:github/model/inline_object157.dart';
import 'package:github/model/inline_object15.dart';
import 'package:github/model/inline_object14.dart';
import 'package:github/model/inline_object158.dart';
import 'package:built_collection/built_collection.dart';

class EnterpriseAdminApi {

    final Dio _dio;

    final Serializers _serializers;

    const EnterpriseAdminApi(this._dio, this._serializers);

    /// Add organization access to a self-hosted runner group in an enterprise
    ///
    /// Adds an organization to the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see \"[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise(
        String enterprise,
        int runnerGroupId,
        int orgId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString()).replaceAll('{' r'org_id' '}', orgId.toString());

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
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Add a self-hosted runner to a group for an enterprise
    ///
    /// Adds a self-hosted runner to a runner group configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise(
        String enterprise,
        int runnerGroupId,
        int runnerId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString()).replaceAll('{' r'runner_id' '}', runnerId.toString());

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
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Create a registration token for an enterprise
    ///
    /// Returns a token that you can pass to the `config` script. The token expires after one hour.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.  #### Example using registration token  Configure your self-hosted runner, replacing `TOKEN` with the registration token provided by this endpoint.  ``` ./config.sh --url https://github.com/enterprises/octo-enterprise --token TOKEN ```
    Future<Response<AuthenticationToken>> enterpriseAdminCreateRegistrationTokenForEnterprise(
        String enterprise, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runners/registration-token'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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
            final serializer = _serializers.serializerForType(AuthenticationToken) as Serializer<AuthenticationToken>;
            final data = _serializers.deserializeWith<AuthenticationToken>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<AuthenticationToken>(
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

    /// Create a remove token for an enterprise
    ///
    /// Returns a token that you can pass to the `config` script to remove a self-hosted runner from an enterprise. The token expires after one hour.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.  #### Example using remove token  To remove your self-hosted runner from an enterprise, replace `TOKEN` with the remove token provided by this endpoint.  ``` ./config.sh remove --token TOKEN ```
    Future<Response<AuthenticationToken>> enterpriseAdminCreateRemoveTokenForEnterprise(
        String enterprise, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runners/remove-token'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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
            final serializer = _serializers.serializerForType(AuthenticationToken) as Serializer<AuthenticationToken>;
            final data = _serializers.deserializeWith<AuthenticationToken>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<AuthenticationToken>(
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

    /// Create a self-hosted runner group for an enterprise
    ///
    /// Creates a new self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<RunnerGroupsEnterprise>> enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise(
        String enterprise, { 
        InlineObject14 inlineObject14,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject14) as Serializer<InlineObject14>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject14);
        final jsoninlineObject14 = json.encode(serializedBody);
        bodyData = jsoninlineObject14;

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
            final serializer = _serializers.serializerForType(RunnerGroupsEnterprise) as Serializer<RunnerGroupsEnterprise>;
            final data = _serializers.deserializeWith<RunnerGroupsEnterprise>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<RunnerGroupsEnterprise>(
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

    /// Delete a SCIM group from an enterprise
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    Future<Response<void>> enterpriseAdminDeleteScimGroupFromEnterprise(
        String enterprise,
        String scimGroupId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_group_id' '}', scimGroupId.toString());

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
        );
    }

    /// Delete a self-hosted runner from an enterprise
    ///
    /// Forces the removal of a self-hosted runner from an enterprise. You can use this endpoint to completely remove the runner when the machine you were using no longer exists.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminDeleteSelfHostedRunnerFromEnterprise(
        String enterprise,
        int runnerId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runners/{runner_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_id' '}', runnerId.toString());

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
        );
    }

    /// Delete a self-hosted runner group from an enterprise
    ///
    /// Deletes a self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise(
        String enterprise,
        int runnerGroupId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

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
        );
    }

    /// Delete a SCIM user from an enterprise
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    Future<Response<void>> enterpriseAdminDeleteUserFromEnterprise(
        String enterprise,
        String scimUserId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_user_id' '}', scimUserId.toString());

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
        );
    }

    /// Disable a selected organization for GitHub Actions in an enterprise
    ///
    /// Removes an organization from the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise(
        String enterprise,
        int orgId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions/organizations/{org_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'org_id' '}', orgId.toString());

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
        );
    }

    /// Enable a selected organization for GitHub Actions in an enterprise
    ///
    /// Adds an organization to the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise(
        String enterprise,
        int orgId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions/organizations/{org_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'org_id' '}', orgId.toString());

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
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Get allowed actions for an enterprise
    ///
    /// Gets the selected actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for `allowed_actions` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<SelectedActions>> enterpriseAdminGetAllowedActionsEnterprise(
        String enterprise, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions/selected-actions'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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
            final serializer = _serializers.serializerForType(SelectedActions) as Serializer<SelectedActions>;
            final data = _serializers.deserializeWith<SelectedActions>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<SelectedActions>(
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

    /// Get GitHub Actions permissions for an enterprise
    ///
    /// Gets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<ActionsEnterprisePermissions>> enterpriseAdminGetGithubActionsPermissionsEnterprise(
        String enterprise, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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
            final serializer = _serializers.serializerForType(ActionsEnterprisePermissions) as Serializer<ActionsEnterprisePermissions>;
            final data = _serializers.deserializeWith<ActionsEnterprisePermissions>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ActionsEnterprisePermissions>(
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

    /// Get SCIM provisioning information for an enterprise group
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    Future<Response<ScimEnterpriseGroup>> enterpriseAdminGetProvisioningInformationForEnterpriseGroup(
        String enterprise,
        String scimGroupId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_group_id' '}', scimGroupId.toString());

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
            final serializer = _serializers.serializerForType(ScimEnterpriseGroup) as Serializer<ScimEnterpriseGroup>;
            final data = _serializers.deserializeWith<ScimEnterpriseGroup>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseGroup>(
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

    /// Get SCIM provisioning information for an enterprise user
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    Future<Response<ScimEnterpriseUser>> enterpriseAdminGetProvisioningInformationForEnterpriseUser(
        String enterprise,
        String scimUserId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_user_id' '}', scimUserId.toString());

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
            final serializer = _serializers.serializerForType(ScimEnterpriseUser) as Serializer<ScimEnterpriseUser>;
            final data = _serializers.deserializeWith<ScimEnterpriseUser>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseUser>(
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

    /// Get a self-hosted runner for an enterprise
    ///
    /// Gets a specific self-hosted runner configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<Runner>> enterpriseAdminGetSelfHostedRunnerForEnterprise(
        String enterprise,
        int runnerId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runners/{runner_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_id' '}', runnerId.toString());

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
            final serializer = _serializers.serializerForType(Runner) as Serializer<Runner>;
            final data = _serializers.deserializeWith<Runner>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<Runner>(
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

    /// Get a self-hosted runner group for an enterprise
    ///
    /// Gets a specific self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<RunnerGroupsEnterprise>> enterpriseAdminGetSelfHostedRunnerGroupForEnterprise(
        String enterprise,
        int runnerGroupId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

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
            final serializer = _serializers.serializerForType(RunnerGroupsEnterprise) as Serializer<RunnerGroupsEnterprise>;
            final data = _serializers.deserializeWith<RunnerGroupsEnterprise>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<RunnerGroupsEnterprise>(
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

    /// List organization access to a self-hosted runner group in an enterprise
    ///
    /// Lists the organizations with access to a self-hosted runner group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<InlineResponse2001>> enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise(
        String enterprise,
        int runnerGroupId, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
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
            final serializer = _serializers.serializerForType(InlineResponse2001) as Serializer<InlineResponse2001>;
            final data = _serializers.deserializeWith<InlineResponse2001>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<InlineResponse2001>(
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

    /// List provisioned SCIM groups for an enterprise
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
    Future<Response<ScimGroupListEnterprise>> enterpriseAdminListProvisionedGroupsEnterprise(
        String enterprise, { 
        int startIndex,
        int count,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Groups'.replaceAll('{' r'enterprise' '}', enterprise.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'startIndex'] = startIndex;
        queryParams[r'count'] = count;
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
            final serializer = _serializers.serializerForType(ScimGroupListEnterprise) as Serializer<ScimGroupListEnterprise>;
            final data = _serializers.deserializeWith<ScimGroupListEnterprise>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimGroupListEnterprise>(
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

    /// List SCIM provisioned identities for an enterprise
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Retrieves a paginated list of all provisioned enterprise members, including pending invitations.  When a user with a SAML-provisioned external identity leaves (or is removed from) an enterprise, the account's metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an enterprise, the account's metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee's email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a `null` user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub enterprise.  1. The user attempts to access the GitHub enterprise and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the `null` external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub enterprise, and the external identity `null` entry remains in place.
    Future<Response<ScimUserListEnterprise>> enterpriseAdminListProvisionedIdentitiesEnterprise(
        String enterprise, { 
        int startIndex,
        int count,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Users'.replaceAll('{' r'enterprise' '}', enterprise.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'startIndex'] = startIndex;
        queryParams[r'count'] = count;
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
            final serializer = _serializers.serializerForType(ScimUserListEnterprise) as Serializer<ScimUserListEnterprise>;
            final data = _serializers.deserializeWith<ScimUserListEnterprise>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimUserListEnterprise>(
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

    /// List runner applications for an enterprise
    ///
    /// Lists binaries for the runner application that you can download and run.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<BuiltList<RunnerApplication>>> enterpriseAdminListRunnerApplicationsForEnterprise(
        String enterprise, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runners/downloads'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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
            const type = FullType(BuiltList, [FullType(RunnerApplication)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<RunnerApplication>;

            return Response<BuiltList<RunnerApplication>>(
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

    /// List selected organizations enabled for GitHub Actions in an enterprise
    ///
    /// Lists the organizations that are selected to have GitHub Actions enabled in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<InlineResponse2001>> enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise(
        String enterprise, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions/organizations'.replaceAll('{' r'enterprise' '}', enterprise.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
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
            final serializer = _serializers.serializerForType(InlineResponse2001) as Serializer<InlineResponse2001>;
            final data = _serializers.deserializeWith<InlineResponse2001>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<InlineResponse2001>(
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

    /// List self-hosted runner groups for an enterprise
    ///
    /// Lists all self-hosted runner groups for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<InlineResponse2002>> enterpriseAdminListSelfHostedRunnerGroupsForEnterprise(
        String enterprise, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups'.replaceAll('{' r'enterprise' '}', enterprise.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
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
            final serializer = _serializers.serializerForType(InlineResponse2002) as Serializer<InlineResponse2002>;
            final data = _serializers.deserializeWith<InlineResponse2002>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<InlineResponse2002>(
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

    /// List self-hosted runners for an enterprise
    ///
    /// Lists all self-hosted runners configured for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<InlineResponse2004>> enterpriseAdminListSelfHostedRunnersForEnterprise(
        String enterprise, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runners'.replaceAll('{' r'enterprise' '}', enterprise.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
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
            final serializer = _serializers.serializerForType(InlineResponse2004) as Serializer<InlineResponse2004>;
            final data = _serializers.deserializeWith<InlineResponse2004>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<InlineResponse2004>(
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

    /// List self-hosted runners in a group for an enterprise
    ///
    /// Lists the self-hosted runners that are in a specific enterprise group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<InlineResponse2003>> enterpriseAdminListSelfHostedRunnersInGroupForEnterprise(
        String enterprise,
        int runnerGroupId, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
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
            final serializer = _serializers.serializerForType(InlineResponse2003) as Serializer<InlineResponse2003>;
            final data = _serializers.deserializeWith<InlineResponse2003>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<InlineResponse2003>(
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

    /// Provision a SCIM enterprise group and invite users
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision an enterprise group, and invite users to the group. This sends invitation emails to the email address of the invited users to join the GitHub organization that the SCIM group corresponds to.
    Future<Response<ScimEnterpriseGroup>> enterpriseAdminProvisionAndInviteEnterpriseGroup(
        String enterprise, { 
        InlineObject154 inlineObject154,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Groups'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject154) as Serializer<InlineObject154>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject154);
        final jsoninlineObject154 = json.encode(serializedBody);
        bodyData = jsoninlineObject154;

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
            final serializer = _serializers.serializerForType(ScimEnterpriseGroup) as Serializer<ScimEnterpriseGroup>;
            final data = _serializers.deserializeWith<ScimEnterpriseGroup>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseGroup>(
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

    /// Provision and invite a SCIM enterprise user
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision enterprise membership for a user, and send organization invitation emails to the email address.  You can optionally include the groups a user will be invited to join. If you do not provide a list of `groups`, the user is provisioned for the enterprise, but no organization invitation emails will be sent.
    Future<Response<ScimEnterpriseUser>> enterpriseAdminProvisionAndInviteEnterpriseUser(
        String enterprise, { 
        InlineObject157 inlineObject157,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Users'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject157) as Serializer<InlineObject157>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject157);
        final jsoninlineObject157 = json.encode(serializedBody);
        bodyData = jsoninlineObject157;

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
            final serializer = _serializers.serializerForType(ScimEnterpriseUser) as Serializer<ScimEnterpriseUser>;
            final data = _serializers.deserializeWith<ScimEnterpriseUser>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseUser>(
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

    /// Remove organization access to a self-hosted runner group in an enterprise
    ///
    /// Removes an organization from the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see \"[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise(
        String enterprise,
        int runnerGroupId,
        int orgId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString()).replaceAll('{' r'org_id' '}', orgId.toString());

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
        );
    }

    /// Remove a self-hosted runner from a group for an enterprise
    ///
    /// Removes a self-hosted runner from a group configured in an enterprise. The runner is then returned to the default group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise(
        String enterprise,
        int runnerGroupId,
        int runnerId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString()).replaceAll('{' r'runner_id' '}', runnerId.toString());

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
        );
    }

    /// Set allowed actions for an enterprise
    ///
    /// Sets the actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for `allowed_actions` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminSetAllowedActionsEnterprise(
        String enterprise, { 
        SelectedActions selectedActions,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions/selected-actions'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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

        final bodySerializer = _serializers.serializerForType(SelectedActions) as Serializer<SelectedActions>;
        final serializedBody = _serializers.serializeWith(bodySerializer, selectedActions);
        final jsonselectedActions = json.encode(serializedBody);
        bodyData = jsonselectedActions;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Set GitHub Actions permissions for an enterprise
    ///
    /// Sets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminSetGithubActionsPermissionsEnterprise(
        String enterprise, { 
        InlineObject12 inlineObject12,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject12) as Serializer<InlineObject12>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject12);
        final jsoninlineObject12 = json.encode(serializedBody);
        bodyData = jsoninlineObject12;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Set SCIM information for a provisioned enterprise group
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned group’s information. You must provide all the information required for the group as if you were provisioning it for the first time. Any existing group information that you don't provide will be removed, including group membership. If you want to only update a specific attribute, use the [Update an attribute for a SCIM enterprise group](#update-an-attribute-for-a-scim-enterprise-group) endpoint instead.
    Future<Response<ScimEnterpriseGroup>> enterpriseAdminSetInformationForProvisionedEnterpriseGroup(
        String enterprise,
        String scimGroupId, { 
        InlineObject155 inlineObject155,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_group_id' '}', scimGroupId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject155) as Serializer<InlineObject155>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject155);
        final jsoninlineObject155 = json.encode(serializedBody);
        bodyData = jsoninlineObject155;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
            final serializer = _serializers.serializerForType(ScimEnterpriseGroup) as Serializer<ScimEnterpriseGroup>;
            final data = _serializers.deserializeWith<ScimEnterpriseGroup>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseGroup>(
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

    /// Set SCIM information for a provisioned enterprise user
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned user's information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don't provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](#update-an-attribute-for-an-enterprise-scim-user) endpoint instead.  You must at least provide the required values for the user: `userName`, `name`, and `emails`.  **Warning:** Setting `active: false` removes the user from the enterprise, deletes the external identity, and deletes the associated `{scim_user_id}`.
    Future<Response<ScimEnterpriseUser>> enterpriseAdminSetInformationForProvisionedEnterpriseUser(
        String enterprise,
        String scimUserId, { 
        InlineObject158 inlineObject158,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_user_id' '}', scimUserId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject158) as Serializer<InlineObject158>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject158);
        final jsoninlineObject158 = json.encode(serializedBody);
        bodyData = jsoninlineObject158;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
            final serializer = _serializers.serializerForType(ScimEnterpriseUser) as Serializer<ScimEnterpriseUser>;
            final data = _serializers.deserializeWith<ScimEnterpriseUser>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseUser>(
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

    /// Set organization access for a self-hosted runner group in an enterprise
    ///
    /// Replaces the list of organizations that have access to a self-hosted runner configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise(
        String enterprise,
        int runnerGroupId, { 
        InlineObject16 inlineObject16,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject16) as Serializer<InlineObject16>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject16);
        final jsoninlineObject16 = json.encode(serializedBody);
        bodyData = jsoninlineObject16;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Set selected organizations enabled for GitHub Actions in an enterprise
    ///
    /// Replaces the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise(
        String enterprise, { 
        InlineObject13 inlineObject13,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/permissions/organizations'.replaceAll('{' r'enterprise' '}', enterprise.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject13) as Serializer<InlineObject13>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject13);
        final jsoninlineObject13 = json.encode(serializedBody);
        bodyData = jsoninlineObject13;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Set self-hosted runners in a group for an enterprise
    ///
    /// Replaces the list of self-hosted runners that are part of an enterprise runner group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<void>> enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise(
        String enterprise,
        int runnerGroupId, { 
        InlineObject17 inlineObject17,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject17) as Serializer<InlineObject17>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject17);
        final jsoninlineObject17 = json.encode(serializedBody);
        bodyData = jsoninlineObject17;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
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
        );
    }

    /// Update an attribute for a SCIM enterprise group
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned group’s individual attributes. To change a group’s values, you must provide a specific Operations JSON format that contains at least one of the add, remove, or replace operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).
    Future<Response<ScimEnterpriseGroup>> enterpriseAdminUpdateAttributeForEnterpriseGroup(
        String enterprise,
        String scimGroupId, { 
        InlineObject156 inlineObject156,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_group_id' '}', scimGroupId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject156) as Serializer<InlineObject156>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject156);
        final jsoninlineObject156 = json.encode(serializedBody);
        bodyData = jsoninlineObject156;

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
            final serializer = _serializers.serializerForType(ScimEnterpriseGroup) as Serializer<ScimEnterpriseGroup>;
            final data = _serializers.deserializeWith<ScimEnterpriseGroup>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseGroup>(
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

    /// Update an attribute for a SCIM enterprise user
    ///
    /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned user's individual attributes. To change a user's values, you must provide a specific `Operations` JSON format that contains at least one of the `add`, `remove`, or `replace` operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM `path` selectors that include filters are not supported. For example, a `path` selector defined as `\"path\": \"emails[type eq \\\"work\\\"]\"` will not work.  **Warning:** If you set `active:false` using the `replace` operation (as shown in the JSON example below), it removes the user from the enterprise, deletes the external identity, and deletes the associated `:scim_user_id`.  ``` {   \"Operations\":[{     \"op\":\"replace\",     \"value\":{       \"active\":false     }   }] } ```
    Future<Response<ScimEnterpriseUser>> enterpriseAdminUpdateAttributeForEnterpriseUser(
        String enterprise,
        String scimUserId, { 
        InlineObject159 inlineObject159,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'scim_user_id' '}', scimUserId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject159) as Serializer<InlineObject159>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject159);
        final jsoninlineObject159 = json.encode(serializedBody);
        bodyData = jsoninlineObject159;

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
            final serializer = _serializers.serializerForType(ScimEnterpriseUser) as Serializer<ScimEnterpriseUser>;
            final data = _serializers.deserializeWith<ScimEnterpriseUser>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<ScimEnterpriseUser>(
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

    /// Update a self-hosted runner group for an enterprise
    ///
    /// Updates the `name` and `visibility` of a self-hosted runner group in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
    Future<Response<RunnerGroupsEnterprise>> enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise(
        String enterprise,
        int runnerGroupId, { 
        InlineObject15 inlineObject15,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}'.replaceAll('{' r'enterprise' '}', enterprise.toString()).replaceAll('{' r'runner_group_id' '}', runnerGroupId.toString());

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

        final bodySerializer = _serializers.serializerForType(InlineObject15) as Serializer<InlineObject15>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject15);
        final jsoninlineObject15 = json.encode(serializedBody);
        bodyData = jsoninlineObject15;

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
            final serializer = _serializers.serializerForType(RunnerGroupsEnterprise) as Serializer<RunnerGroupsEnterprise>;
            final data = _serializers.deserializeWith<RunnerGroupsEnterprise>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<RunnerGroupsEnterprise>(
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
