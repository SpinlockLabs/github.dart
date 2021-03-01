//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_mapping_groups.g.dart';

abstract class GroupMappingGroups implements Built<GroupMappingGroups, GroupMappingGroupsBuilder> {

    /// The ID of the group
    @nullable
    @BuiltValueField(wireName: r'group_id')
    String get groupId;

    /// The name of the group
    @nullable
    @BuiltValueField(wireName: r'group_name')
    String get groupName;

    /// a description of the group
    @nullable
    @BuiltValueField(wireName: r'group_description')
    String get groupDescription;

    /// synchronization status for this group mapping
    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    /// the time of the last sync for this group-mapping
    @nullable
    @BuiltValueField(wireName: r'synced_at')
    String get syncedAt;

    // Boilerplate code needed to wire-up generated code
    GroupMappingGroups._();

    static void _initializeBuilder(GroupMappingGroupsBuilder b) => b;

    factory GroupMappingGroups([void updates(GroupMappingGroupsBuilder b)]) = _$GroupMappingGroups;
    static Serializer<GroupMappingGroups> get serializer => _$groupMappingGroupsSerializer;
}

