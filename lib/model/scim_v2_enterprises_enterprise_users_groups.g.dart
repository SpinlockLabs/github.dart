// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_enterprises_enterprise_users_groups.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2EnterprisesEnterpriseUsersGroups>
    _$scimV2EnterprisesEnterpriseUsersGroupsSerializer =
    new _$ScimV2EnterprisesEnterpriseUsersGroupsSerializer();

class _$ScimV2EnterprisesEnterpriseUsersGroupsSerializer
    implements StructuredSerializer<ScimV2EnterprisesEnterpriseUsersGroups> {
  @override
  final Iterable<Type> types = const [
    ScimV2EnterprisesEnterpriseUsersGroups,
    _$ScimV2EnterprisesEnterpriseUsersGroups
  ];
  @override
  final String wireName = 'ScimV2EnterprisesEnterpriseUsersGroups';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimV2EnterprisesEnterpriseUsersGroups object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimV2EnterprisesEnterpriseUsersGroups deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2EnterprisesEnterpriseUsersGroupsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimV2EnterprisesEnterpriseUsersGroups
    extends ScimV2EnterprisesEnterpriseUsersGroups {
  @override
  final String value;

  factory _$ScimV2EnterprisesEnterpriseUsersGroups(
          [void Function(ScimV2EnterprisesEnterpriseUsersGroupsBuilder)
              updates]) =>
      (new ScimV2EnterprisesEnterpriseUsersGroupsBuilder()..update(updates))
          .build();

  _$ScimV2EnterprisesEnterpriseUsersGroups._({this.value}) : super._();

  @override
  ScimV2EnterprisesEnterpriseUsersGroups rebuild(
          void Function(ScimV2EnterprisesEnterpriseUsersGroupsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2EnterprisesEnterpriseUsersGroupsBuilder toBuilder() =>
      new ScimV2EnterprisesEnterpriseUsersGroupsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2EnterprisesEnterpriseUsersGroups &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ScimV2EnterprisesEnterpriseUsersGroups')
          ..add('value', value))
        .toString();
  }
}

class ScimV2EnterprisesEnterpriseUsersGroupsBuilder
    implements
        Builder<ScimV2EnterprisesEnterpriseUsersGroups,
            ScimV2EnterprisesEnterpriseUsersGroupsBuilder> {
  _$ScimV2EnterprisesEnterpriseUsersGroups _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ScimV2EnterprisesEnterpriseUsersGroupsBuilder() {
    ScimV2EnterprisesEnterpriseUsersGroups._initializeBuilder(this);
  }

  ScimV2EnterprisesEnterpriseUsersGroupsBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2EnterprisesEnterpriseUsersGroups other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2EnterprisesEnterpriseUsersGroups;
  }

  @override
  void update(
      void Function(ScimV2EnterprisesEnterpriseUsersGroupsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2EnterprisesEnterpriseUsersGroups build() {
    final _$result =
        _$v ?? new _$ScimV2EnterprisesEnterpriseUsersGroups._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
