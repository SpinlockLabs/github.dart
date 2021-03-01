// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object63.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject63> _$inlineObject63Serializer =
    new _$InlineObject63Serializer();

class _$InlineObject63Serializer
    implements StructuredSerializer<InlineObject63> {
  @override
  final Iterable<Type> types = const [InlineObject63, _$InlineObject63];
  @override
  final String wireName = 'InlineObject63';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject63 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.encryptedValue != null) {
      result
        ..add('encrypted_value')
        ..add(serializers.serialize(object.encryptedValue,
            specifiedType: const FullType(String)));
    }
    if (object.keyId != null) {
      result
        ..add('key_id')
        ..add(serializers.serialize(object.keyId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject63 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject63Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'encrypted_value':
          result.encryptedValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key_id':
          result.keyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject63 extends InlineObject63 {
  @override
  final String encryptedValue;
  @override
  final String keyId;

  factory _$InlineObject63([void Function(InlineObject63Builder) updates]) =>
      (new InlineObject63Builder()..update(updates)).build();

  _$InlineObject63._({this.encryptedValue, this.keyId}) : super._();

  @override
  InlineObject63 rebuild(void Function(InlineObject63Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject63Builder toBuilder() =>
      new InlineObject63Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject63 &&
        encryptedValue == other.encryptedValue &&
        keyId == other.keyId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, encryptedValue.hashCode), keyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject63')
          ..add('encryptedValue', encryptedValue)
          ..add('keyId', keyId))
        .toString();
  }
}

class InlineObject63Builder
    implements Builder<InlineObject63, InlineObject63Builder> {
  _$InlineObject63 _$v;

  String _encryptedValue;
  String get encryptedValue => _$this._encryptedValue;
  set encryptedValue(String encryptedValue) =>
      _$this._encryptedValue = encryptedValue;

  String _keyId;
  String get keyId => _$this._keyId;
  set keyId(String keyId) => _$this._keyId = keyId;

  InlineObject63Builder() {
    InlineObject63._initializeBuilder(this);
  }

  InlineObject63Builder get _$this {
    if (_$v != null) {
      _encryptedValue = _$v.encryptedValue;
      _keyId = _$v.keyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject63 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject63;
  }

  @override
  void update(void Function(InlineObject63Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject63 build() {
    final _$result = _$v ??
        new _$InlineObject63._(encryptedValue: encryptedValue, keyId: keyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
