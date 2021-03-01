// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_organizations_org_users_emails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2OrganizationsOrgUsersEmails>
    _$scimV2OrganizationsOrgUsersEmailsSerializer =
    new _$ScimV2OrganizationsOrgUsersEmailsSerializer();

class _$ScimV2OrganizationsOrgUsersEmailsSerializer
    implements StructuredSerializer<ScimV2OrganizationsOrgUsersEmails> {
  @override
  final Iterable<Type> types = const [
    ScimV2OrganizationsOrgUsersEmails,
    _$ScimV2OrganizationsOrgUsersEmails
  ];
  @override
  final String wireName = 'ScimV2OrganizationsOrgUsersEmails';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimV2OrganizationsOrgUsersEmails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    if (object.primary != null) {
      result
        ..add('primary')
        ..add(serializers.serialize(object.primary,
            specifiedType: const FullType(bool)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimV2OrganizationsOrgUsersEmails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2OrganizationsOrgUsersEmailsBuilder();

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
        case 'primary':
          result.primary = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimV2OrganizationsOrgUsersEmails
    extends ScimV2OrganizationsOrgUsersEmails {
  @override
  final String value;
  @override
  final bool primary;
  @override
  final String type;

  factory _$ScimV2OrganizationsOrgUsersEmails(
          [void Function(ScimV2OrganizationsOrgUsersEmailsBuilder) updates]) =>
      (new ScimV2OrganizationsOrgUsersEmailsBuilder()..update(updates)).build();

  _$ScimV2OrganizationsOrgUsersEmails._({this.value, this.primary, this.type})
      : super._();

  @override
  ScimV2OrganizationsOrgUsersEmails rebuild(
          void Function(ScimV2OrganizationsOrgUsersEmailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2OrganizationsOrgUsersEmailsBuilder toBuilder() =>
      new ScimV2OrganizationsOrgUsersEmailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2OrganizationsOrgUsersEmails &&
        value == other.value &&
        primary == other.primary &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, value.hashCode), primary.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimV2OrganizationsOrgUsersEmails')
          ..add('value', value)
          ..add('primary', primary)
          ..add('type', type))
        .toString();
  }
}

class ScimV2OrganizationsOrgUsersEmailsBuilder
    implements
        Builder<ScimV2OrganizationsOrgUsersEmails,
            ScimV2OrganizationsOrgUsersEmailsBuilder> {
  _$ScimV2OrganizationsOrgUsersEmails _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  bool _primary;
  bool get primary => _$this._primary;
  set primary(bool primary) => _$this._primary = primary;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ScimV2OrganizationsOrgUsersEmailsBuilder() {
    ScimV2OrganizationsOrgUsersEmails._initializeBuilder(this);
  }

  ScimV2OrganizationsOrgUsersEmailsBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _primary = _$v.primary;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2OrganizationsOrgUsersEmails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2OrganizationsOrgUsersEmails;
  }

  @override
  void update(void Function(ScimV2OrganizationsOrgUsersEmailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2OrganizationsOrgUsersEmails build() {
    final _$result = _$v ??
        new _$ScimV2OrganizationsOrgUsersEmails._(
            value: value, primary: primary, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
