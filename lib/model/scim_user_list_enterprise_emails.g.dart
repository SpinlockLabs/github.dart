// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_list_enterprise_emails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserListEnterpriseEmails>
    _$scimUserListEnterpriseEmailsSerializer =
    new _$ScimUserListEnterpriseEmailsSerializer();

class _$ScimUserListEnterpriseEmailsSerializer
    implements StructuredSerializer<ScimUserListEnterpriseEmails> {
  @override
  final Iterable<Type> types = const [
    ScimUserListEnterpriseEmails,
    _$ScimUserListEnterpriseEmails
  ];
  @override
  final String wireName = 'ScimUserListEnterpriseEmails';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimUserListEnterpriseEmails object,
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
  ScimUserListEnterpriseEmails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserListEnterpriseEmailsBuilder();

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

class _$ScimUserListEnterpriseEmails extends ScimUserListEnterpriseEmails {
  @override
  final String value;
  @override
  final bool primary;
  @override
  final String type;

  factory _$ScimUserListEnterpriseEmails(
          [void Function(ScimUserListEnterpriseEmailsBuilder) updates]) =>
      (new ScimUserListEnterpriseEmailsBuilder()..update(updates)).build();

  _$ScimUserListEnterpriseEmails._({this.value, this.primary, this.type})
      : super._();

  @override
  ScimUserListEnterpriseEmails rebuild(
          void Function(ScimUserListEnterpriseEmailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserListEnterpriseEmailsBuilder toBuilder() =>
      new ScimUserListEnterpriseEmailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserListEnterpriseEmails &&
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
    return (newBuiltValueToStringHelper('ScimUserListEnterpriseEmails')
          ..add('value', value)
          ..add('primary', primary)
          ..add('type', type))
        .toString();
  }
}

class ScimUserListEnterpriseEmailsBuilder
    implements
        Builder<ScimUserListEnterpriseEmails,
            ScimUserListEnterpriseEmailsBuilder> {
  _$ScimUserListEnterpriseEmails _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  bool _primary;
  bool get primary => _$this._primary;
  set primary(bool primary) => _$this._primary = primary;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ScimUserListEnterpriseEmailsBuilder() {
    ScimUserListEnterpriseEmails._initializeBuilder(this);
  }

  ScimUserListEnterpriseEmailsBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _primary = _$v.primary;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUserListEnterpriseEmails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserListEnterpriseEmails;
  }

  @override
  void update(void Function(ScimUserListEnterpriseEmailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserListEnterpriseEmails build() {
    final _$result = _$v ??
        new _$ScimUserListEnterpriseEmails._(
            value: value, primary: primary, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
