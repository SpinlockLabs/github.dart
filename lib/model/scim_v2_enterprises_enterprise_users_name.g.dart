// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_enterprises_enterprise_users_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2EnterprisesEnterpriseUsersName>
    _$scimV2EnterprisesEnterpriseUsersNameSerializer =
    new _$ScimV2EnterprisesEnterpriseUsersNameSerializer();

class _$ScimV2EnterprisesEnterpriseUsersNameSerializer
    implements StructuredSerializer<ScimV2EnterprisesEnterpriseUsersName> {
  @override
  final Iterable<Type> types = const [
    ScimV2EnterprisesEnterpriseUsersName,
    _$ScimV2EnterprisesEnterpriseUsersName
  ];
  @override
  final String wireName = 'ScimV2EnterprisesEnterpriseUsersName';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimV2EnterprisesEnterpriseUsersName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.givenName != null) {
      result
        ..add('givenName')
        ..add(serializers.serialize(object.givenName,
            specifiedType: const FullType(String)));
    }
    if (object.familyName != null) {
      result
        ..add('familyName')
        ..add(serializers.serialize(object.familyName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimV2EnterprisesEnterpriseUsersName deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2EnterprisesEnterpriseUsersNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'givenName':
          result.givenName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'familyName':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimV2EnterprisesEnterpriseUsersName
    extends ScimV2EnterprisesEnterpriseUsersName {
  @override
  final String givenName;
  @override
  final String familyName;

  factory _$ScimV2EnterprisesEnterpriseUsersName(
          [void Function(ScimV2EnterprisesEnterpriseUsersNameBuilder)
              updates]) =>
      (new ScimV2EnterprisesEnterpriseUsersNameBuilder()..update(updates))
          .build();

  _$ScimV2EnterprisesEnterpriseUsersName._({this.givenName, this.familyName})
      : super._();

  @override
  ScimV2EnterprisesEnterpriseUsersName rebuild(
          void Function(ScimV2EnterprisesEnterpriseUsersNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2EnterprisesEnterpriseUsersNameBuilder toBuilder() =>
      new ScimV2EnterprisesEnterpriseUsersNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2EnterprisesEnterpriseUsersName &&
        givenName == other.givenName &&
        familyName == other.familyName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, givenName.hashCode), familyName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimV2EnterprisesEnterpriseUsersName')
          ..add('givenName', givenName)
          ..add('familyName', familyName))
        .toString();
  }
}

class ScimV2EnterprisesEnterpriseUsersNameBuilder
    implements
        Builder<ScimV2EnterprisesEnterpriseUsersName,
            ScimV2EnterprisesEnterpriseUsersNameBuilder> {
  _$ScimV2EnterprisesEnterpriseUsersName _$v;

  String _givenName;
  String get givenName => _$this._givenName;
  set givenName(String givenName) => _$this._givenName = givenName;

  String _familyName;
  String get familyName => _$this._familyName;
  set familyName(String familyName) => _$this._familyName = familyName;

  ScimV2EnterprisesEnterpriseUsersNameBuilder() {
    ScimV2EnterprisesEnterpriseUsersName._initializeBuilder(this);
  }

  ScimV2EnterprisesEnterpriseUsersNameBuilder get _$this {
    if (_$v != null) {
      _givenName = _$v.givenName;
      _familyName = _$v.familyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2EnterprisesEnterpriseUsersName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2EnterprisesEnterpriseUsersName;
  }

  @override
  void update(
      void Function(ScimV2EnterprisesEnterpriseUsersNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2EnterprisesEnterpriseUsersName build() {
    final _$result = _$v ??
        new _$ScimV2EnterprisesEnterpriseUsersName._(
            givenName: givenName, familyName: familyName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
