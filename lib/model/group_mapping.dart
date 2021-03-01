//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/group_mapping_groups.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_mapping.g.dart';

abstract class GroupMapping implements Built<GroupMapping, GroupMappingBuilder> {

    /// Array of groups to be mapped to this team
    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<GroupMappingGroups> get groups;

    // Boilerplate code needed to wire-up generated code
    GroupMapping._();

    static void _initializeBuilder(GroupMappingBuilder b) => b;

    factory GroupMapping([void updates(GroupMappingBuilder b)]) = _$GroupMapping;
    static Serializer<GroupMapping> get serializer => _$groupMappingSerializer;
}

