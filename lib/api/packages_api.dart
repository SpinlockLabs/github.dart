//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:github/model/package_version.dart';
import 'package:github/model/package.dart';
import 'package:github/model/basic_error.dart';
import 'package:built_collection/built_collection.dart';

class PackagesApi {

    final Dio _dio;

    final Serializers _serializers;

    const PackagesApi(this._dio, this._serializers);

    /// Delete a package for the authenticated user
    ///
    /// Deletes a package owned by the authenticated user. You cannot delete a public package if any version of the package has more than 25 downloads. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:delete` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<void>> packagesDeletePackageForAuthenticatedUser(
        String packageType,
        String packageName, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString());

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

    /// Delete a package for an organization
    ///
    /// Deletes an entire package in an organization. You cannot delete a public package if any version of the package has more than 25 downloads. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container you want to delete.
    Future<Response<void>> packagesDeletePackageForOrg(
        String packageType,
        String packageName,
        String org, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString());

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

    /// Delete a package version for the authenticated user
    ///
    /// Deletes a specific package version for a package owned by the authenticated user.  If the package is public and the package version has more than 25 downloads, you cannot delete the package version. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<void>> packagesDeletePackageVersionForAuthenticatedUser(
        String packageType,
        String packageName,
        int packageVersionId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}/versions/{package_version_id}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString());

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

    /// Delete package version for an organization
    ///
    /// Deletes a specific package version in an organization. If the package is public and the package version has more than 25 downloads, you cannot delete the package version. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container you want to delete.
    Future<Response<void>> packagesDeletePackageVersionForOrg(
        String packageType,
        String packageName,
        String org,
        int packageVersionId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString());

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

    /// Get all package versions for a package owned by an organization
    ///
    /// Returns all package versions for a package owned by an organization.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<BuiltList<PackageVersion>>> packagesGetAllPackageVersionsForAPackageOwnedByAnOrg(
        String packageType,
        String packageName,
        String org, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}/versions'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString());

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
            const type = FullType(BuiltList, [FullType(PackageVersion)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PackageVersion>;

            return Response<BuiltList<PackageVersion>>(
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

    /// Get all package versions for a package owned by the authenticated user
    ///
    /// Returns all package versions for a package owned by the authenticated user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<BuiltList<PackageVersion>>> packagesGetAllPackageVersionsForAPackageOwnedByTheAuthenticatedUser(
        String packageType,
        String packageName, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}/versions'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString());

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
            const type = FullType(BuiltList, [FullType(PackageVersion)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PackageVersion>;

            return Response<BuiltList<PackageVersion>>(
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

    /// Get all package versions for a package owned by a user
    ///
    /// Returns all package versions for a public package owned by a specified user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<BuiltList<PackageVersion>>> packagesGetAllPackageVersionsForPackageOwnedByUser(
        String packageType,
        String packageName,
        String username, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/users/{username}/packages/{package_type}/{package_name}/versions'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'username' '}', username.toString());

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
            const type = FullType(BuiltList, [FullType(PackageVersion)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PackageVersion>;

            return Response<BuiltList<PackageVersion>>(
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

    /// Get a package for the authenticated user
    ///
    /// Gets a specific package for a package owned by the authenticated user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<Package>> packagesGetPackageForAuthenticatedUser(
        String packageType,
        String packageName, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString());

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
            final serializer = _serializers.serializerForType(Package) as Serializer<Package>;
            final data = _serializers.deserializeWith<Package>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<Package>(
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

    /// Get a package for an organization
    ///
    /// Gets a specific package in an organization.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<Package>> packagesGetPackageForOrganization(
        String packageType,
        String packageName,
        String org, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString());

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
            final serializer = _serializers.serializerForType(Package) as Serializer<Package>;
            final data = _serializers.deserializeWith<Package>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<Package>(
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

    /// Get a package for a user
    ///
    /// Gets a specific package metadata for a public package owned by a user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<Package>> packagesGetPackageForUser(
        String packageType,
        String packageName,
        String username, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/users/{username}/packages/{package_type}/{package_name}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'username' '}', username.toString());

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
            final serializer = _serializers.serializerForType(Package) as Serializer<Package>;
            final data = _serializers.deserializeWith<Package>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<Package>(
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

    /// Get a package version for the authenticated user
    ///
    /// Gets a specific package version for a package owned by the authenticated user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<PackageVersion>> packagesGetPackageVersionForAuthenticatedUser(
        String packageType,
        String packageName,
        int packageVersionId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}/versions/{package_version_id}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString());

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
            final serializer = _serializers.serializerForType(PackageVersion) as Serializer<PackageVersion>;
            final data = _serializers.deserializeWith<PackageVersion>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PackageVersion>(
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

    /// Get a package version for an organization
    ///
    /// Gets a specific package version in an organization.  You must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<PackageVersion>> packagesGetPackageVersionForOrganization(
        String packageType,
        String packageName,
        String org,
        int packageVersionId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString());

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
            final serializer = _serializers.serializerForType(PackageVersion) as Serializer<PackageVersion>;
            final data = _serializers.deserializeWith<PackageVersion>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PackageVersion>(
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

    /// Get a package version for a user
    ///
    /// Gets a specific package version for a public package owned by a specified user.  At this time, to use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<PackageVersion>> packagesGetPackageVersionForUser(
        String packageType,
        String packageName,
        int packageVersionId,
        String username, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString()).replaceAll('{' r'username' '}', username.toString());

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
            final serializer = _serializers.serializerForType(PackageVersion) as Serializer<PackageVersion>;
            final data = _serializers.deserializeWith<PackageVersion>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PackageVersion>(
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

    /// Restore a package for the authenticated user
    ///
    /// Restores a package owned by the authenticated user.  You can restore a deleted package under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:write` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<void>> packagesRestorePackageForAuthenticatedUser(
        String packageType,
        String packageName, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}/restore'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString());

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
        );
    }

    /// Restore a package for an organization
    ///
    /// Restores an entire package in an organization.  You can restore a deleted package under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` and `packages:write` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container that you want to restore.
    Future<Response<void>> packagesRestorePackageForOrg(
        String packageType,
        String packageName,
        String org, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}/restore'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString());

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
        );
    }

    /// Restore a package version for the authenticated user
    ///
    /// Restores a package version owned by the authenticated user.  You can restore a deleted package version under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:write` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    Future<Response<void>> packagesRestorePackageVersionForAuthenticatedUser(
        String packageType,
        String packageName,
        int packageVersionId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/user/packages/{package_type}/{package_name}/versions/{package_version_id}/restore'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString());

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
        );
    }

    /// Restore package version for an organization
    ///
    /// Restores a specific package version in an organization.  You can restore a deleted package under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` and `packages:write` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container that you want to restore.
    Future<Response<void>> packagesRestorePackageVersionForOrg(
        String packageType,
        String packageName,
        String org,
        int packageVersionId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore'.replaceAll('{' r'package_type' '}', packageType.toString()).replaceAll('{' r'package_name' '}', packageName.toString()).replaceAll('{' r'org' '}', org.toString()).replaceAll('{' r'package_version_id' '}', packageVersionId.toString());

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
        );
    }

}
