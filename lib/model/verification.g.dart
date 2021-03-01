// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'verification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Verification> _$verificationSerializer =
    new _$VerificationSerializer();

class _$VerificationSerializer implements StructuredSerializer<Verification> {
  @override
  final Iterable<Type> types = const [Verification, _$Verification];
  @override
  final String wireName = 'Verification';

  @override
  Iterable<Object> serialize(Serializers serializers, Verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.verified != null) {
      result
        ..add('verified')
        ..add(serializers.serialize(object.verified,
            specifiedType: const FullType(bool)));
    }
    if (object.reason != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(object.reason,
            specifiedType: const FullType(String)));
    }
    if (object.payload != null) {
      result
        ..add('payload')
        ..add(serializers.serialize(object.payload,
            specifiedType: const FullType(String)));
    }
    if (object.signature != null) {
      result
        ..add('signature')
        ..add(serializers.serialize(object.signature,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Verification deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payload':
          result.payload = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Verification extends Verification {
  @override
  final bool verified;
  @override
  final String reason;
  @override
  final String payload;
  @override
  final String signature;

  factory _$Verification([void Function(VerificationBuilder) updates]) =>
      (new VerificationBuilder()..update(updates)).build();

  _$Verification._({this.verified, this.reason, this.payload, this.signature})
      : super._();

  @override
  Verification rebuild(void Function(VerificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerificationBuilder toBuilder() => new VerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verification &&
        verified == other.verified &&
        reason == other.reason &&
        payload == other.payload &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, verified.hashCode), reason.hashCode), payload.hashCode),
        signature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Verification')
          ..add('verified', verified)
          ..add('reason', reason)
          ..add('payload', payload)
          ..add('signature', signature))
        .toString();
  }
}

class VerificationBuilder
    implements Builder<Verification, VerificationBuilder> {
  _$Verification _$v;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  String _reason;
  String get reason => _$this._reason;
  set reason(String reason) => _$this._reason = reason;

  String _payload;
  String get payload => _$this._payload;
  set payload(String payload) => _$this._payload = payload;

  String _signature;
  String get signature => _$this._signature;
  set signature(String signature) => _$this._signature = signature;

  VerificationBuilder() {
    Verification._initializeBuilder(this);
  }

  VerificationBuilder get _$this {
    if (_$v != null) {
      _verified = _$v.verified;
      _reason = _$v.reason;
      _payload = _$v.payload;
      _signature = _$v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verification other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Verification;
  }

  @override
  void update(void Function(VerificationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Verification build() {
    final _$result = _$v ??
        new _$Verification._(
            verified: verified,
            reason: reason,
            payload: payload,
            signature: signature);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
