//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'full_repository_permissions.g.dart';

abstract class FullRepositoryPermissions implements Built<FullRepositoryPermissions, FullRepositoryPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'admin')
    bool get admin;

    @nullable
    @BuiltValueField(wireName: r'pull')
    bool get pull;

    @nullable
    @BuiltValueField(wireName: r'push')
    bool get push;

    // Boilerplate code needed to wire-up generated code
    FullRepositoryPermissions._();

    static void _initializeBuilder(FullRepositoryPermissionsBuilder b) => b;

    factory FullRepositoryPermissions([void updates(FullRepositoryPermissionsBuilder b)]) = _$FullRepositoryPermissions;
    static Serializer<FullRepositoryPermissions> get serializer => _$fullRepositoryPermissionsSerializer;
}

