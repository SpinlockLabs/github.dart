//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orgs_org_teams_team_slug_team_sync_group_mappings_groups.g.dart';

abstract class OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups implements Built<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups, OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroupsBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups._();

    static void _initializeBuilder(OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroupsBuilder b) => b;

    factory OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups([void updates(OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroupsBuilder b)]) = _$OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups;
    static Serializer<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups> get serializer => _$orgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroupsSerializer;
}

