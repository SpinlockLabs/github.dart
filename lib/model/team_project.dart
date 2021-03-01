//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/team_project_permissions.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_project.g.dart';

abstract class TeamProject implements Built<TeamProject, TeamProjectBuilder> {

    @nullable
    @BuiltValueField(wireName: r'owner_url')
    String get ownerUrl;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'columns_url')
    String get columnsUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    /// The organization permission for this project. Only present when owner is an organization.
    @nullable
    @BuiltValueField(wireName: r'organization_permission')
    String get organizationPermission;

    /// Whether the project is private or not. Only present when owner is an organization.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    TeamProjectPermissions get permissions;

    // Boilerplate code needed to wire-up generated code
    TeamProject._();

    static void _initializeBuilder(TeamProjectBuilder b) => b;

    factory TeamProject([void updates(TeamProjectBuilder b)]) = _$TeamProject;
    static Serializer<TeamProject> get serializer => _$teamProjectSerializer;
}

