//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_team_id_team_sync_group_mappings_groups.g.dart';

abstract class TeamsTeamIdTeamSyncGroupMappingsGroups implements Built<TeamsTeamIdTeamSyncGroupMappingsGroups, TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder> {

    /// ID of the IdP group.
    @nullable
    @BuiltValueField(wireName: r'group_id')
    String get groupId;

    /// Name of the IdP group.
    @nullable
    @BuiltValueField(wireName: r'group_name')
    String get groupName;

    /// Description of the IdP group.
    @nullable
    @BuiltValueField(wireName: r'group_description')
    String get groupDescription;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    // Boilerplate code needed to wire-up generated code
    TeamsTeamIdTeamSyncGroupMappingsGroups._();

    static void _initializeBuilder(TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder b) => b;

    factory TeamsTeamIdTeamSyncGroupMappingsGroups([void updates(TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder b)]) = _$TeamsTeamIdTeamSyncGroupMappingsGroups;
    static Serializer<TeamsTeamIdTeamSyncGroupMappingsGroups> get serializer => _$teamsTeamIdTeamSyncGroupMappingsGroupsSerializer;
}

