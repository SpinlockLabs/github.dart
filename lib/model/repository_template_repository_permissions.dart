//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_template_repository_permissions.g.dart';

abstract class RepositoryTemplateRepositoryPermissions implements Built<RepositoryTemplateRepositoryPermissions, RepositoryTemplateRepositoryPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'admin')
    bool get admin;

    @nullable
    @BuiltValueField(wireName: r'push')
    bool get push;

    @nullable
    @BuiltValueField(wireName: r'pull')
    bool get pull;

    // Boilerplate code needed to wire-up generated code
    RepositoryTemplateRepositoryPermissions._();

    static void _initializeBuilder(RepositoryTemplateRepositoryPermissionsBuilder b) => b;

    factory RepositoryTemplateRepositoryPermissions([void updates(RepositoryTemplateRepositoryPermissionsBuilder b)]) = _$RepositoryTemplateRepositoryPermissions;
    static Serializer<RepositoryTemplateRepositoryPermissions> get serializer => _$repositoryTemplateRepositoryPermissionsSerializer;
}

