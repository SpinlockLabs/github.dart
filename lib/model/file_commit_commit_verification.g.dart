// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit_commit_verification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommitCommitVerification>
    _$fileCommitCommitVerificationSerializer =
    new _$FileCommitCommitVerificationSerializer();

class _$FileCommitCommitVerificationSerializer
    implements StructuredSerializer<FileCommitCommitVerification> {
  @override
  final Iterable<Type> types = const [
    FileCommitCommitVerification,
    _$FileCommitCommitVerification
  ];
  @override
  final String wireName = 'FileCommitCommitVerification';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FileCommitCommitVerification object,
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
    if (object.signature != null) {
      result
        ..add('signature')
        ..add(serializers.serialize(object.signature,
            specifiedType: const FullType(String)));
    }
    if (object.payload != null) {
      result
        ..add('payload')
        ..add(serializers.serialize(object.payload,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FileCommitCommitVerification deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitCommitVerificationBuilder();

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
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payload':
          result.payload = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FileCommitCommitVerification extends FileCommitCommitVerification {
  @override
  final bool verified;
  @override
  final String reason;
  @override
  final String signature;
  @override
  final String payload;

  factory _$FileCommitCommitVerification(
          [void Function(FileCommitCommitVerificationBuilder) updates]) =>
      (new FileCommitCommitVerificationBuilder()..update(updates)).build();

  _$FileCommitCommitVerification._(
      {this.verified, this.reason, this.signature, this.payload})
      : super._();

  @override
  FileCommitCommitVerification rebuild(
          void Function(FileCommitCommitVerificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitCommitVerificationBuilder toBuilder() =>
      new FileCommitCommitVerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommitCommitVerification &&
        verified == other.verified &&
        reason == other.reason &&
        signature == other.signature &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, verified.hashCode), reason.hashCode),
            signature.hashCode),
        payload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommitCommitVerification')
          ..add('verified', verified)
          ..add('reason', reason)
          ..add('signature', signature)
          ..add('payload', payload))
        .toString();
  }
}

class FileCommitCommitVerificationBuilder
    implements
        Builder<FileCommitCommitVerification,
            FileCommitCommitVerificationBuilder> {
  _$FileCommitCommitVerification _$v;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  String _reason;
  String get reason => _$this._reason;
  set reason(String reason) => _$this._reason = reason;

  String _signature;
  String get signature => _$this._signature;
  set signature(String signature) => _$this._signature = signature;

  String _payload;
  String get payload => _$this._payload;
  set payload(String payload) => _$this._payload = payload;

  FileCommitCommitVerificationBuilder() {
    FileCommitCommitVerification._initializeBuilder(this);
  }

  FileCommitCommitVerificationBuilder get _$this {
    if (_$v != null) {
      _verified = _$v.verified;
      _reason = _$v.reason;
      _signature = _$v.signature;
      _payload = _$v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommitCommitVerification other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommitCommitVerification;
  }

  @override
  void update(void Function(FileCommitCommitVerificationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommitCommitVerification build() {
    final _$result = _$v ??
        new _$FileCommitCommitVerification._(
            verified: verified,
            reason: reason,
            signature: signature,
            payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
