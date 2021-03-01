// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_enterprises_enterprise_groups_members.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2EnterprisesEnterpriseGroupsMembers>
    _$scimV2EnterprisesEnterpriseGroupsMembersSerializer =
    new _$ScimV2EnterprisesEnterpriseGroupsMembersSerializer();

class _$ScimV2EnterprisesEnterpriseGroupsMembersSerializer
    implements StructuredSerializer<ScimV2EnterprisesEnterpriseGroupsMembers> {
  @override
  final Iterable<Type> types = const [
    ScimV2EnterprisesEnterpriseGroupsMembers,
    _$ScimV2EnterprisesEnterpriseGroupsMembers
  ];
  @override
  final String wireName = 'ScimV2EnterprisesEnterpriseGroupsMembers';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimV2EnterprisesEnterpriseGroupsMembers object,
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
  ScimV2EnterprisesEnterpriseGroupsMembers deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2EnterprisesEnterpriseGroupsMembersBuilder();

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

class _$ScimV2EnterprisesEnterpriseGroupsMembers
    extends ScimV2EnterprisesEnterpriseGroupsMembers {
  @override
  final String value;

  factory _$ScimV2EnterprisesEnterpriseGroupsMembers(
          [void Function(ScimV2EnterprisesEnterpriseGroupsMembersBuilder)
              updates]) =>
      (new ScimV2EnterprisesEnterpriseGroupsMembersBuilder()..update(updates))
          .build();

  _$ScimV2EnterprisesEnterpriseGroupsMembers._({this.value}) : super._();

  @override
  ScimV2EnterprisesEnterpriseGroupsMembers rebuild(
          void Function(ScimV2EnterprisesEnterpriseGroupsMembersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2EnterprisesEnterpriseGroupsMembersBuilder toBuilder() =>
      new ScimV2EnterprisesEnterpriseGroupsMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2EnterprisesEnterpriseGroupsMembers &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ScimV2EnterprisesEnterpriseGroupsMembers')
          ..add('value', value))
        .toString();
  }
}

class ScimV2EnterprisesEnterpriseGroupsMembersBuilder
    implements
        Builder<ScimV2EnterprisesEnterpriseGroupsMembers,
            ScimV2EnterprisesEnterpriseGroupsMembersBuilder> {
  _$ScimV2EnterprisesEnterpriseGroupsMembers _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ScimV2EnterprisesEnterpriseGroupsMembersBuilder() {
    ScimV2EnterprisesEnterpriseGroupsMembers._initializeBuilder(this);
  }

  ScimV2EnterprisesEnterpriseGroupsMembersBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2EnterprisesEnterpriseGroupsMembers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2EnterprisesEnterpriseGroupsMembers;
  }

  @override
  void update(
      void Function(ScimV2EnterprisesEnterpriseGroupsMembersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2EnterprisesEnterpriseGroupsMembers build() {
    final _$result =
        _$v ?? new _$ScimV2EnterprisesEnterpriseGroupsMembers._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
