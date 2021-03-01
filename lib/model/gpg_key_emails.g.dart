// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gpg_key_emails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpgKeyEmails> _$gpgKeyEmailsSerializer =
    new _$GpgKeyEmailsSerializer();

class _$GpgKeyEmailsSerializer implements StructuredSerializer<GpgKeyEmails> {
  @override
  final Iterable<Type> types = const [GpgKeyEmails, _$GpgKeyEmails];
  @override
  final String wireName = 'GpgKeyEmails';

  @override
  Iterable<Object> serialize(Serializers serializers, GpgKeyEmails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.verified != null) {
      result
        ..add('verified')
        ..add(serializers.serialize(object.verified,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GpgKeyEmails deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpgKeyEmailsBuilder();

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
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GpgKeyEmails extends GpgKeyEmails {
  @override
  final String email;
  @override
  final bool verified;

  factory _$GpgKeyEmails([void Function(GpgKeyEmailsBuilder) updates]) =>
      (new GpgKeyEmailsBuilder()..update(updates)).build();

  _$GpgKeyEmails._({this.email, this.verified}) : super._();

  @override
  GpgKeyEmails rebuild(void Function(GpgKeyEmailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpgKeyEmailsBuilder toBuilder() => new GpgKeyEmailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpgKeyEmails &&
        email == other.email &&
        verified == other.verified;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), verified.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpgKeyEmails')
          ..add('email', email)
          ..add('verified', verified))
        .toString();
  }
}

class GpgKeyEmailsBuilder
    implements Builder<GpgKeyEmails, GpgKeyEmailsBuilder> {
  _$GpgKeyEmails _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  GpgKeyEmailsBuilder() {
    GpgKeyEmails._initializeBuilder(this);
  }

  GpgKeyEmailsBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _verified = _$v.verified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpgKeyEmails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpgKeyEmails;
  }

  @override
  void update(void Function(GpgKeyEmailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpgKeyEmails build() {
    final _$result =
        _$v ?? new _$GpgKeyEmails._(email: email, verified: verified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
