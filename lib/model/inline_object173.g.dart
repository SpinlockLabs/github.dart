// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object173.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject173> _$inlineObject173Serializer =
    new _$InlineObject173Serializer();

class _$InlineObject173Serializer
    implements StructuredSerializer<InlineObject173> {
  @override
  final Iterable<Type> types = const [InlineObject173, _$InlineObject173];
  @override
  final String wireName = 'InlineObject173';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject173 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.groups != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(object.groups,
            specifiedType: const FullType(BuiltList, const [
              const FullType(TeamsTeamIdTeamSyncGroupMappingsGroups)
            ])));
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
  InlineObject173 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject173Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TeamsTeamIdTeamSyncGroupMappingsGroups)
              ])) as BuiltList<Object>);
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

class _$InlineObject173 extends InlineObject173 {
  @override
  final BuiltList<TeamsTeamIdTeamSyncGroupMappingsGroups> groups;
  @override
  final String syncedAt;

  factory _$InlineObject173([void Function(InlineObject173Builder) updates]) =>
      (new InlineObject173Builder()..update(updates)).build();

  _$InlineObject173._({this.groups, this.syncedAt}) : super._();

  @override
  InlineObject173 rebuild(void Function(InlineObject173Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject173Builder toBuilder() =>
      new InlineObject173Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject173 &&
        groups == other.groups &&
        syncedAt == other.syncedAt;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, groups.hashCode), syncedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject173')
          ..add('groups', groups)
          ..add('syncedAt', syncedAt))
        .toString();
  }
}

class InlineObject173Builder
    implements Builder<InlineObject173, InlineObject173Builder> {
  _$InlineObject173 _$v;

  ListBuilder<TeamsTeamIdTeamSyncGroupMappingsGroups> _groups;
  ListBuilder<TeamsTeamIdTeamSyncGroupMappingsGroups> get groups =>
      _$this._groups ??=
          new ListBuilder<TeamsTeamIdTeamSyncGroupMappingsGroups>();
  set groups(ListBuilder<TeamsTeamIdTeamSyncGroupMappingsGroups> groups) =>
      _$this._groups = groups;

  String _syncedAt;
  String get syncedAt => _$this._syncedAt;
  set syncedAt(String syncedAt) => _$this._syncedAt = syncedAt;

  InlineObject173Builder() {
    InlineObject173._initializeBuilder(this);
  }

  InlineObject173Builder get _$this {
    if (_$v != null) {
      _groups = _$v.groups?.toBuilder();
      _syncedAt = _$v.syncedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject173 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject173;
  }

  @override
  void update(void Function(InlineObject173Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject173 build() {
    _$InlineObject173 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject173._(groups: _groups?.build(), syncedAt: syncedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject173', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
