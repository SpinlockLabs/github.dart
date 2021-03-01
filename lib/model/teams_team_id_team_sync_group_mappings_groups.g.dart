// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'teams_team_id_team_sync_group_mappings_groups.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamsTeamIdTeamSyncGroupMappingsGroups>
    _$teamsTeamIdTeamSyncGroupMappingsGroupsSerializer =
    new _$TeamsTeamIdTeamSyncGroupMappingsGroupsSerializer();

class _$TeamsTeamIdTeamSyncGroupMappingsGroupsSerializer
    implements StructuredSerializer<TeamsTeamIdTeamSyncGroupMappingsGroups> {
  @override
  final Iterable<Type> types = const [
    TeamsTeamIdTeamSyncGroupMappingsGroups,
    _$TeamsTeamIdTeamSyncGroupMappingsGroups
  ];
  @override
  final String wireName = 'TeamsTeamIdTeamSyncGroupMappingsGroups';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TeamsTeamIdTeamSyncGroupMappingsGroups object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.groupId != null) {
      result
        ..add('group_id')
        ..add(serializers.serialize(object.groupId,
            specifiedType: const FullType(String)));
    }
    if (object.groupName != null) {
      result
        ..add('group_name')
        ..add(serializers.serialize(object.groupName,
            specifiedType: const FullType(String)));
    }
    if (object.groupDescription != null) {
      result
        ..add('group_description')
        ..add(serializers.serialize(object.groupDescription,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamsTeamIdTeamSyncGroupMappingsGroups deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'group_id':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'group_name':
          result.groupName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'group_description':
          result.groupDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamsTeamIdTeamSyncGroupMappingsGroups
    extends TeamsTeamIdTeamSyncGroupMappingsGroups {
  @override
  final String groupId;
  @override
  final String groupName;
  @override
  final String groupDescription;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;

  factory _$TeamsTeamIdTeamSyncGroupMappingsGroups(
          [void Function(TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder)
              updates]) =>
      (new TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder()..update(updates))
          .build();

  _$TeamsTeamIdTeamSyncGroupMappingsGroups._(
      {this.groupId,
      this.groupName,
      this.groupDescription,
      this.id,
      this.name,
      this.description})
      : super._();

  @override
  TeamsTeamIdTeamSyncGroupMappingsGroups rebuild(
          void Function(TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder toBuilder() =>
      new TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamsTeamIdTeamSyncGroupMappingsGroups &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        groupDescription == other.groupDescription &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, groupId.hashCode), groupName.hashCode),
                    groupDescription.hashCode),
                id.hashCode),
            name.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'TeamsTeamIdTeamSyncGroupMappingsGroups')
          ..add('groupId', groupId)
          ..add('groupName', groupName)
          ..add('groupDescription', groupDescription)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder
    implements
        Builder<TeamsTeamIdTeamSyncGroupMappingsGroups,
            TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder> {
  _$TeamsTeamIdTeamSyncGroupMappingsGroups _$v;

  String _groupId;
  String get groupId => _$this._groupId;
  set groupId(String groupId) => _$this._groupId = groupId;

  String _groupName;
  String get groupName => _$this._groupName;
  set groupName(String groupName) => _$this._groupName = groupName;

  String _groupDescription;
  String get groupDescription => _$this._groupDescription;
  set groupDescription(String groupDescription) =>
      _$this._groupDescription = groupDescription;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder() {
    TeamsTeamIdTeamSyncGroupMappingsGroups._initializeBuilder(this);
  }

  TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder get _$this {
    if (_$v != null) {
      _groupId = _$v.groupId;
      _groupName = _$v.groupName;
      _groupDescription = _$v.groupDescription;
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamsTeamIdTeamSyncGroupMappingsGroups other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamsTeamIdTeamSyncGroupMappingsGroups;
  }

  @override
  void update(
      void Function(TeamsTeamIdTeamSyncGroupMappingsGroupsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamsTeamIdTeamSyncGroupMappingsGroups build() {
    final _$result = _$v ??
        new _$TeamsTeamIdTeamSyncGroupMappingsGroups._(
            groupId: groupId,
            groupName: groupName,
            groupDescription: groupDescription,
            id: id,
            name: name,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
