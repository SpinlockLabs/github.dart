// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_v2_enterprises_enterprise_users_emails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimV2EnterprisesEnterpriseUsersEmails>
    _$scimV2EnterprisesEnterpriseUsersEmailsSerializer =
    new _$ScimV2EnterprisesEnterpriseUsersEmailsSerializer();

class _$ScimV2EnterprisesEnterpriseUsersEmailsSerializer
    implements StructuredSerializer<ScimV2EnterprisesEnterpriseUsersEmails> {
  @override
  final Iterable<Type> types = const [
    ScimV2EnterprisesEnterpriseUsersEmails,
    _$ScimV2EnterprisesEnterpriseUsersEmails
  ];
  @override
  final String wireName = 'ScimV2EnterprisesEnterpriseUsersEmails';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimV2EnterprisesEnterpriseUsersEmails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
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
  ScimV2EnterprisesEnterpriseUsersEmails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimV2EnterprisesEnterpriseUsersEmailsBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
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

class _$ScimV2EnterprisesEnterpriseUsersEmails
    extends ScimV2EnterprisesEnterpriseUsersEmails {
  @override
  final String value;
  @override
  final String type;
  @override
  final bool primary;

  factory _$ScimV2EnterprisesEnterpriseUsersEmails(
          [void Function(ScimV2EnterprisesEnterpriseUsersEmailsBuilder)
              updates]) =>
      (new ScimV2EnterprisesEnterpriseUsersEmailsBuilder()..update(updates))
          .build();

  _$ScimV2EnterprisesEnterpriseUsersEmails._(
      {this.value, this.type, this.primary})
      : super._();

  @override
  ScimV2EnterprisesEnterpriseUsersEmails rebuild(
          void Function(ScimV2EnterprisesEnterpriseUsersEmailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimV2EnterprisesEnterpriseUsersEmailsBuilder toBuilder() =>
      new ScimV2EnterprisesEnterpriseUsersEmailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimV2EnterprisesEnterpriseUsersEmails &&
        value == other.value &&
        type == other.type &&
        primary == other.primary;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, value.hashCode), type.hashCode), primary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ScimV2EnterprisesEnterpriseUsersEmails')
          ..add('value', value)
          ..add('type', type)
          ..add('primary', primary))
        .toString();
  }
}

class ScimV2EnterprisesEnterpriseUsersEmailsBuilder
    implements
        Builder<ScimV2EnterprisesEnterpriseUsersEmails,
            ScimV2EnterprisesEnterpriseUsersEmailsBuilder> {
  _$ScimV2EnterprisesEnterpriseUsersEmails _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  bool _primary;
  bool get primary => _$this._primary;
  set primary(bool primary) => _$this._primary = primary;

  ScimV2EnterprisesEnterpriseUsersEmailsBuilder() {
    ScimV2EnterprisesEnterpriseUsersEmails._initializeBuilder(this);
  }

  ScimV2EnterprisesEnterpriseUsersEmailsBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _type = _$v.type;
      _primary = _$v.primary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimV2EnterprisesEnterpriseUsersEmails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimV2EnterprisesEnterpriseUsersEmails;
  }

  @override
  void update(
      void Function(ScimV2EnterprisesEnterpriseUsersEmailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimV2EnterprisesEnterpriseUsersEmails build() {
    final _$result = _$v ??
        new _$ScimV2EnterprisesEnterpriseUsersEmails._(
            value: value, type: type, primary: primary);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
