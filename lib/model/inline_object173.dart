//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/teams_team_id_team_sync_group_mappings_groups.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object173.g.dart';

abstract class InlineObject173 implements Built<InlineObject173, InlineObject173Builder> {

    /// The IdP groups you want to connect to a GitHub team. When updating, the new `groups` object will replace the original one. You must include any existing groups that you don't want to remove.
    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<TeamsTeamIdTeamSyncGroupMappingsGroups> get groups;

    @nullable
    @BuiltValueField(wireName: r'synced_at')
    String get syncedAt;

    // Boilerplate code needed to wire-up generated code
    InlineObject173._();

    static void _initializeBuilder(InlineObject173Builder b) => b;

    factory InlineObject173([void updates(InlineObject173Builder b)]) = _$InlineObject173;
    static Serializer<InlineObject173> get serializer => _$inlineObject173Serializer;
}

