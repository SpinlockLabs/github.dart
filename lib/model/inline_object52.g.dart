// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object52.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject52> _$inlineObject52Serializer =
    new _$InlineObject52Serializer();

class _$InlineObject52Serializer
    implements StructuredSerializer<InlineObject52> {
  @override
  final Iterable<Type> types = const [InlineObject52, _$InlineObject52];
  @override
  final String wireName = 'InlineObject52';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject52 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.groups != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(object.groups,
            specifiedType: const FullType(BuiltList, const [
              const FullType(OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups)
            ])));
    }
    return result;
  }

  @override
  InlineObject52 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject52Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject52 extends InlineObject52 {
  @override
  final BuiltList<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups> groups;

  factory _$InlineObject52([void Function(InlineObject52Builder) updates]) =>
      (new InlineObject52Builder()..update(updates)).build();

  _$InlineObject52._({this.groups}) : super._();

  @override
  InlineObject52 rebuild(void Function(InlineObject52Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject52Builder toBuilder() =>
      new InlineObject52Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject52 && groups == other.groups;
  }

  @override
  int get hashCode {
    return $jf($jc(0, groups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject52')
          ..add('groups', groups))
        .toString();
  }
}

class InlineObject52Builder
    implements Builder<InlineObject52, InlineObject52Builder> {
  _$InlineObject52 _$v;

  ListBuilder<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups> _groups;
  ListBuilder<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups> get groups =>
      _$this._groups ??=
          new ListBuilder<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups>();
  set groups(
          ListBuilder<OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups>
              groups) =>
      _$this._groups = groups;

  InlineObject52Builder() {
    InlineObject52._initializeBuilder(this);
  }

  InlineObject52Builder get _$this {
    if (_$v != null) {
      _groups = _$v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject52 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject52;
  }

  @override
  void update(void Function(InlineObject52Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject52 build() {
    _$InlineObject52 _$result;
    try {
      _$result = _$v ?? new _$InlineObject52._(groups: _groups?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject52', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
