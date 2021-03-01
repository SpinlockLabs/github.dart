//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collaborator_permissions.g.dart';

abstract class CollaboratorPermissions implements Built<CollaboratorPermissions, CollaboratorPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'pull')
    bool get pull;

    @nullable
    @BuiltValueField(wireName: r'push')
    bool get push;

    @nullable
    @BuiltValueField(wireName: r'admin')
    bool get admin;

    // Boilerplate code needed to wire-up generated code
    CollaboratorPermissions._();

    static void _initializeBuilder(CollaboratorPermissionsBuilder b) => b;

    factory CollaboratorPermissions([void updates(CollaboratorPermissionsBuilder b)]) = _$CollaboratorPermissions;
    static Serializer<CollaboratorPermissions> get serializer => _$collaboratorPermissionsSerializer;
}

