//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/orgs_org_teams_team_slug_team_sync_group_mappings_groups.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object52.g.dart';

abstract class InlineObject52 implements Built<InlineObject52, InlineObject52Builder> {

    /// The IdP groups you want to connect to a GitHub team. When updating, the new `groups` object will replace the original one. You must include any existing groups that you don't want to remove.
    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups> get groups;

    // Boilerplate code needed to wire-up generated code
    InlineObject52._();

    static void _initializeBuilder(InlineObject52Builder b) => b;

    factory InlineObject52([void updates(InlineObject52Builder b)]) = _$InlineObject52;
    static Serializer<InlineObject52> get serializer => _$inlineObject52Serializer;
}

