//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'installation_token_permissions.g.dart';

abstract class InstallationTokenPermissions implements Built<InstallationTokenPermissions, InstallationTokenPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'issues')
    String get issues;

    @nullable
    @BuiltValueField(wireName: r'contents')
    String get contents;

    @nullable
    @BuiltValueField(wireName: r'metadata')
    String get metadata;

    @nullable
    @BuiltValueField(wireName: r'single_file')
    String get singleFile;

    // Boilerplate code needed to wire-up generated code
    InstallationTokenPermissions._();

    static void _initializeBuilder(InstallationTokenPermissionsBuilder b) => b;

    factory InstallationTokenPermissions([void updates(InstallationTokenPermissionsBuilder b)]) = _$InstallationTokenPermissions;
    static Serializer<InstallationTokenPermissions> get serializer => _$installationTokenPermissionsSerializer;
}

