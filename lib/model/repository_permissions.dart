//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_permissions.g.dart';

abstract class RepositoryPermissions implements Built<RepositoryPermissions, RepositoryPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'admin')
    bool get admin;

    @nullable
    @BuiltValueField(wireName: r'pull')
    bool get pull;

    @nullable
    @BuiltValueField(wireName: r'triage')
    bool get triage;

    @nullable
    @BuiltValueField(wireName: r'push')
    bool get push;

    @nullable
    @BuiltValueField(wireName: r'maintain')
    bool get maintain;

    // Boilerplate code needed to wire-up generated code
    RepositoryPermissions._();

    static void _initializeBuilder(RepositoryPermissionsBuilder b) => b;

    factory RepositoryPermissions([void updates(RepositoryPermissionsBuilder b)]) = _$RepositoryPermissions;
    static Serializer<RepositoryPermissions> get serializer => _$repositoryPermissionsSerializer;
}

