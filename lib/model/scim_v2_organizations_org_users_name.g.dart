// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_organizations_org_users_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2OrganizationsOrgUsersName>
    _$scimV2OrganizationsOrgUsersNameSerializer =
    new _$ScimV2OrganizationsOrgUsersNameSerializer();

class _$ScimV2OrganizationsOrgUsersNameSerializer
    implements StructuredSerializer<ScimV2OrganizationsOrgUsersName> {
  @override
  final Iterable<Type> types = const [
    ScimV2OrganizationsOrgUsersName,
    _$ScimV2OrganizationsOrgUsersName
  ];
  @override
  final String wireName = 'ScimV2OrganizationsOrgUsersName';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimV2OrganizationsOrgUsersName object,
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
    if (object.formatted != null) {
      result
        ..add('formatted')
        ..add(serializers.serialize(object.formatted,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimV2OrganizationsOrgUsersName deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2OrganizationsOrgUsersNameBuilder();

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
        case 'formatted':
          result.formatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimV2OrganizationsOrgUsersName
    extends ScimV2OrganizationsOrgUsersName {
  @override
  final String givenName;
  @override
  final String familyName;
  @override
  final String formatted;

  factory _$ScimV2OrganizationsOrgUsersName(
          [void Function(ScimV2OrganizationsOrgUsersNameBuilder) updates]) =>
      (new ScimV2OrganizationsOrgUsersNameBuilder()..update(updates)).build();

  _$ScimV2OrganizationsOrgUsersName._(
      {this.givenName, this.familyName, this.formatted})
      : super._();

  @override
  ScimV2OrganizationsOrgUsersName rebuild(
          void Function(ScimV2OrganizationsOrgUsersNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2OrganizationsOrgUsersNameBuilder toBuilder() =>
      new ScimV2OrganizationsOrgUsersNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2OrganizationsOrgUsersName &&
        givenName == other.givenName &&
        familyName == other.familyName &&
        formatted == other.formatted;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, givenName.hashCode), familyName.hashCode),
        formatted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimV2OrganizationsOrgUsersName')
          ..add('givenName', givenName)
          ..add('familyName', familyName)
          ..add('formatted', formatted))
        .toString();
  }
}

class ScimV2OrganizationsOrgUsersNameBuilder
    implements
        Builder<ScimV2OrganizationsOrgUsersName,
            ScimV2OrganizationsOrgUsersNameBuilder> {
  _$ScimV2OrganizationsOrgUsersName _$v;

  String _givenName;
  String get givenName => _$this._givenName;
  set givenName(String givenName) => _$this._givenName = givenName;

  String _familyName;
  String get familyName => _$this._familyName;
  set familyName(String familyName) => _$this._familyName = familyName;

  String _formatted;
  String get formatted => _$this._formatted;
  set formatted(String formatted) => _$this._formatted = formatted;

  ScimV2OrganizationsOrgUsersNameBuilder() {
    ScimV2OrganizationsOrgUsersName._initializeBuilder(this);
  }

  ScimV2OrganizationsOrgUsersNameBuilder get _$this {
    if (_$v != null) {
      _givenName = _$v.givenName;
      _familyName = _$v.familyName;
      _formatted = _$v.formatted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2OrganizationsOrgUsersName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2OrganizationsOrgUsersName;
  }

  @override
  void update(void Function(ScimV2OrganizationsOrgUsersNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2OrganizationsOrgUsersName build() {
    final _$result = _$v ??
        new _$ScimV2OrganizationsOrgUsersName._(
            givenName: givenName, familyName: familyName, formatted: formatted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
