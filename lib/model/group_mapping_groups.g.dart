// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'group_mapping_groups.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupMappingGroups> _$groupMappingGroupsSerializer =
    new _$GroupMappingGroupsSerializer();

class _$GroupMappingGroupsSerializer
    implements StructuredSerializer<GroupMappingGroups> {
  @override
  final Iterable<Type> types = const [GroupMappingGroups, _$GroupMappingGroups];
  @override
  final String wireName = 'GroupMappingGroups';

  @override
  Iterable<Object> serialize(Serializers serializers, GroupMappingGroups object,
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
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.syncedAt != null) {
      result
        ..add('synced_at')
        ..add(serializers.serialize(object.syncedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GroupMappingGroups deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupMappingGroupsBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'synced_at':
          result.syncedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GroupMappingGroups extends GroupMappingGroups {
  @override
  final String groupId;
  @override
  final String groupName;
  @override
  final String groupDescription;
  @override
  final String status;
  @override
  final String syncedAt;

  factory _$GroupMappingGroups(
          [void Function(GroupMappingGroupsBuilder) updates]) =>
      (new GroupMappingGroupsBuilder()..update(updates)).build();

  _$GroupMappingGroups._(
      {this.groupId,
      this.groupName,
      this.groupDescription,
      this.status,
      this.syncedAt})
      : super._();

  @override
  GroupMappingGroups rebuild(
          void Function(GroupMappingGroupsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupMappingGroupsBuilder toBuilder() =>
      new GroupMappingGroupsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupMappingGroups &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        groupDescription == other.groupDescription &&
        status == other.status &&
        syncedAt == other.syncedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, groupId.hashCode), groupName.hashCode),
                groupDescription.hashCode),
            status.hashCode),
        syncedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupMappingGroups')
          ..add('groupId', groupId)
          ..add('groupName', groupName)
          ..add('groupDescription', groupDescription)
          ..add('status', status)
          ..add('syncedAt', syncedAt))
        .toString();
  }
}

class GroupMappingGroupsBuilder
    implements Builder<GroupMappingGroups, GroupMappingGroupsBuilder> {
  _$GroupMappingGroups _$v;

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

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _syncedAt;
  String get syncedAt => _$this._syncedAt;
  set syncedAt(String syncedAt) => _$this._syncedAt = syncedAt;

  GroupMappingGroupsBuilder() {
    GroupMappingGroups._initializeBuilder(this);
  }

  GroupMappingGroupsBuilder get _$this {
    if (_$v != null) {
      _groupId = _$v.groupId;
      _groupName = _$v.groupName;
      _groupDescription = _$v.groupDescription;
      _status = _$v.status;
      _syncedAt = _$v.syncedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupMappingGroups other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GroupMappingGroups;
  }

  @override
  void update(void Function(GroupMappingGroupsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupMappingGroups build() {
    final _$result = _$v ??
        new _$GroupMappingGroups._(
            groupId: groupId,
            groupName: groupName,
            groupDescription: groupDescription,
            status: status,
            syncedAt: syncedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
