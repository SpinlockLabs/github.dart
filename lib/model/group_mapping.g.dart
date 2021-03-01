// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'group_mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupMapping> _$groupMappingSerializer =
    new _$GroupMappingSerializer();

class _$GroupMappingSerializer implements StructuredSerializer<GroupMapping> {
  @override
  final Iterable<Type> types = const [GroupMapping, _$GroupMapping];
  @override
  final String wireName = 'GroupMapping';

  @override
  Iterable<Object> serialize(Serializers serializers, GroupMapping object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.groups != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(object.groups,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GroupMappingGroups)])));
    }
    return result;
  }

  @override
  GroupMapping deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupMappingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GroupMappingGroups)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GroupMapping extends GroupMapping {
  @override
  final BuiltList<GroupMappingGroups> groups;

  factory _$GroupMapping([void Function(GroupMappingBuilder) updates]) =>
      (new GroupMappingBuilder()..update(updates)).build();

  _$GroupMapping._({this.groups}) : super._();

  @override
  GroupMapping rebuild(void Function(GroupMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupMappingBuilder toBuilder() => new GroupMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupMapping && groups == other.groups;
  }

  @override
  int get hashCode {
    return $jf($jc(0, groups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupMapping')..add('groups', groups))
        .toString();
  }
}

class GroupMappingBuilder
    implements Builder<GroupMapping, GroupMappingBuilder> {
  _$GroupMapping _$v;

  ListBuilder<GroupMappingGroups> _groups;
  ListBuilder<GroupMappingGroups> get groups =>
      _$this._groups ??= new ListBuilder<GroupMappingGroups>();
  set groups(ListBuilder<GroupMappingGroups> groups) => _$this._groups = groups;

  GroupMappingBuilder() {
    GroupMapping._initializeBuilder(this);
  }

  GroupMappingBuilder get _$this {
    if (_$v != null) {
      _groups = _$v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupMapping other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GroupMapping;
  }

  @override
  void update(void Function(GroupMappingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupMapping build() {
    _$GroupMapping _$result;
    try {
      _$result = _$v ?? new _$GroupMapping._(groups: _groups?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupMapping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
