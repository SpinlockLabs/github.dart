// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_organizations_org_users_scim_user_id_emails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2OrganizationsOrgUsersScimUserIdEmails>
    _$scimV2OrganizationsOrgUsersScimUserIdEmailsSerializer =
    new _$ScimV2OrganizationsOrgUsersScimUserIdEmailsSerializer();

class _$ScimV2OrganizationsOrgUsersScimUserIdEmailsSerializer
    implements
        StructuredSerializer<ScimV2OrganizationsOrgUsersScimUserIdEmails> {
  @override
  final Iterable<Type> types = const [
    ScimV2OrganizationsOrgUsersScimUserIdEmails,
    _$ScimV2OrganizationsOrgUsersScimUserIdEmails
  ];
  @override
  final String wireName = 'ScimV2OrganizationsOrgUsersScimUserIdEmails';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ScimV2OrganizationsOrgUsersScimUserIdEmails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
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
    return result;
  }

  @override
  ScimV2OrganizationsOrgUsersScimUserIdEmails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'primary':
          result.primary = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimV2OrganizationsOrgUsersScimUserIdEmails
    extends ScimV2OrganizationsOrgUsersScimUserIdEmails {
  @override
  final String type;
  @override
  final String value;
  @override
  final bool primary;

  factory _$ScimV2OrganizationsOrgUsersScimUserIdEmails(
          [void Function(ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder)
              updates]) =>
      (new ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder()
            ..update(updates))
          .build();

  _$ScimV2OrganizationsOrgUsersScimUserIdEmails._(
      {this.type, this.value, this.primary})
      : super._();

  @override
  ScimV2OrganizationsOrgUsersScimUserIdEmails rebuild(
          void Function(ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder toBuilder() =>
      new ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2OrganizationsOrgUsersScimUserIdEmails &&
        type == other.type &&
        value == other.value &&
        primary == other.primary;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, type.hashCode), value.hashCode), primary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ScimV2OrganizationsOrgUsersScimUserIdEmails')
          ..add('type', type)
          ..add('value', value)
          ..add('primary', primary))
        .toString();
  }
}

class ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder
    implements
        Builder<ScimV2OrganizationsOrgUsersScimUserIdEmails,
            ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder> {
  _$ScimV2OrganizationsOrgUsersScimUserIdEmails _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  bool _primary;
  bool get primary => _$this._primary;
  set primary(bool primary) => _$this._primary = primary;

  ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder() {
    ScimV2OrganizationsOrgUsersScimUserIdEmails._initializeBuilder(this);
  }

  ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _value = _$v.value;
      _primary = _$v.primary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2OrganizationsOrgUsersScimUserIdEmails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2OrganizationsOrgUsersScimUserIdEmails;
  }

  @override
  void update(
      void Function(ScimV2OrganizationsOrgUsersScimUserIdEmailsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2OrganizationsOrgUsersScimUserIdEmails build() {
    final _$result = _$v ??
        new _$ScimV2OrganizationsOrgUsersScimUserIdEmails._(
            type: type, value: value, primary: primary);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
