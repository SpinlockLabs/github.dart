// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'email.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Email> _$emailSerializer = new _$EmailSerializer();

class _$EmailSerializer implements StructuredSerializer<Email> {
  @override
  final Iterable<Type> types = const [Email, _$Email];
  @override
  final String wireName = 'Email';

  @override
  Iterable<Object> serialize(Serializers serializers, Email object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.primary != null) {
      result
        ..add('primary')
        ..add(serializers.serialize(object.primary,
            specifiedType: const FullType(bool)));
    }
    if (object.verified != null) {
      result
        ..add('verified')
        ..add(serializers.serialize(object.verified,
            specifiedType: const FullType(bool)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Email deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'primary':
          result.primary = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Email extends Email {
  @override
  final String email;
  @override
  final bool primary;
  @override
  final bool verified;
  @override
  final String visibility;

  factory _$Email([void Function(EmailBuilder) updates]) =>
      (new EmailBuilder()..update(updates)).build();

  _$Email._({this.email, this.primary, this.verified, this.visibility})
      : super._();

  @override
  Email rebuild(void Function(EmailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailBuilder toBuilder() => new EmailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Email &&
        email == other.email &&
        primary == other.primary &&
        verified == other.verified &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), primary.hashCode), verified.hashCode),
        visibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Email')
          ..add('email', email)
          ..add('primary', primary)
          ..add('verified', verified)
          ..add('visibility', visibility))
        .toString();
  }
}

class EmailBuilder implements Builder<Email, EmailBuilder> {
  _$Email _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _primary;
  bool get primary => _$this._primary;
  set primary(bool primary) => _$this._primary = primary;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  String _visibility;
  String get visibility => _$this._visibility;
  set visibility(String visibility) => _$this._visibility = visibility;

  EmailBuilder() {
    Email._initializeBuilder(this);
  }

  EmailBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _primary = _$v.primary;
      _verified = _$v.verified;
      _visibility = _$v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Email other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Email;
  }

  @override
  void update(void Function(EmailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Email build() {
    final _$result = _$v ??
        new _$Email._(
            email: email,
            primary: primary,
            verified: verified,
            visibility: visibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
