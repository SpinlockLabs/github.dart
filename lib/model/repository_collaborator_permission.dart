//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_collaborator_permission.g.dart';

abstract class RepositoryCollaboratorPermission implements Built<RepositoryCollaboratorPermission, RepositoryCollaboratorPermissionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'permission')
    String get permission;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    // Boilerplate code needed to wire-up generated code
    RepositoryCollaboratorPermission._();

    static void _initializeBuilder(RepositoryCollaboratorPermissionBuilder b) => b;

    factory RepositoryCollaboratorPermission([void updates(RepositoryCollaboratorPermissionBuilder b)]) = _$RepositoryCollaboratorPermission;
    static Serializer<RepositoryCollaboratorPermission> get serializer => _$repositoryCollaboratorPermissionSerializer;
}

