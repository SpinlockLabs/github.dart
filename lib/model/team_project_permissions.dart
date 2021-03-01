//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_project_permissions.g.dart';

abstract class TeamProjectPermissions implements Built<TeamProjectPermissions, TeamProjectPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'read')
    bool get read;

    @nullable
    @BuiltValueField(wireName: r'write')
    bool get write;

    @nullable
    @BuiltValueField(wireName: r'admin')
    bool get admin;

    // Boilerplate code needed to wire-up generated code
    TeamProjectPermissions._();

    static void _initializeBuilder(TeamProjectPermissionsBuilder b) => b;

    factory TeamProjectPermissions([void updates(TeamProjectPermissionsBuilder b)]) = _$TeamProjectPermissions;
    static Serializer<TeamProjectPermissions> get serializer => _$teamProjectPermissionsSerializer;
}

