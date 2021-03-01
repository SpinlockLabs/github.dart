// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_emails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserEmails> _$scimUserEmailsSerializer =
    new _$ScimUserEmailsSerializer();

class _$ScimUserEmailsSerializer
    implements StructuredSerializer<ScimUserEmails> {
  @override
  final Iterable<Type> types = const [ScimUserEmails, _$ScimUserEmails];
  @override
  final String wireName = 'ScimUserEmails';

  @override
  Iterable<Object> serialize(Serializers serializers, ScimUserEmails object,
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
    return result;
  }

  @override
  ScimUserEmails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserEmailsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ScimUserEmails extends ScimUserEmails {
  @override
  final String value;
  @override
  final bool primary;

  factory _$ScimUserEmails([void Function(ScimUserEmailsBuilder) updates]) =>
      (new ScimUserEmailsBuilder()..update(updates)).build();

  _$ScimUserEmails._({this.value, this.primary}) : super._();

  @override
  ScimUserEmails rebuild(void Function(ScimUserEmailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserEmailsBuilder toBuilder() =>
      new ScimUserEmailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserEmails &&
        value == other.value &&
        primary == other.primary;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, value.hashCode), primary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimUserEmails')
          ..add('value', value)
          ..add('primary', primary))
        .toString();
  }
}

class ScimUserEmailsBuilder
    implements Builder<ScimUserEmails, ScimUserEmailsBuilder> {
  _$ScimUserEmails _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  bool _primary;
  bool get primary => _$this._primary;
  set primary(bool primary) => _$this._primary = primary;

  ScimUserEmailsBuilder() {
    ScimUserEmails._initializeBuilder(this);
  }

  ScimUserEmailsBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _primary = _$v.primary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUserEmails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserEmails;
  }

  @override
  void update(void Function(ScimUserEmailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserEmails build() {
    final _$result =
        _$v ?? new _$ScimUserEmails._(value: value, primary: primary);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
