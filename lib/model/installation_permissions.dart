//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'installation_permissions.g.dart';

abstract class InstallationPermissions implements Built<InstallationPermissions, InstallationPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'deployments')
    String get deployments;

    @nullable
    @BuiltValueField(wireName: r'checks')
    String get checks;

    @nullable
    @BuiltValueField(wireName: r'metadata')
    String get metadata;

    @nullable
    @BuiltValueField(wireName: r'contents')
    String get contents;

    @nullable
    @BuiltValueField(wireName: r'pull_requests')
    String get pullRequests;

    @nullable
    @BuiltValueField(wireName: r'statuses')
    String get statuses;

    @nullable
    @BuiltValueField(wireName: r'issues')
    String get issues;

    @nullable
    @BuiltValueField(wireName: r'organization_administration')
    String get organizationAdministration;

    // Boilerplate code needed to wire-up generated code
    InstallationPermissions._();

    static void _initializeBuilder(InstallationPermissionsBuilder b) => b;

    factory InstallationPermissions([void updates(InstallationPermissionsBuilder b)]) = _$InstallationPermissions;
    static Serializer<InstallationPermissions> get serializer => _$installationPermissionsSerializer;
}

