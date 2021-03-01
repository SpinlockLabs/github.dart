// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object153.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject153> _$inlineObject153Serializer =
    new _$InlineObject153Serializer();

class _$InlineObject153Serializer
    implements StructuredSerializer<InlineObject153> {
  @override
  final Iterable<Type> types = const [InlineObject153, _$InlineObject153];
  @override
  final String wireName = 'InlineObject153';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject153 object,
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
  InlineObject153 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject153Builder();

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

class _$InlineObject153 extends InlineObject153 {
  @override
  final String encryptedValue;
  @override
  final String keyId;

  factory _$InlineObject153([void Function(InlineObject153Builder) updates]) =>
      (new InlineObject153Builder()..update(updates)).build();

  _$InlineObject153._({this.encryptedValue, this.keyId}) : super._();

  @override
  InlineObject153 rebuild(void Function(InlineObject153Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject153Builder toBuilder() =>
      new InlineObject153Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject153 &&
        encryptedValue == other.encryptedValue &&
        keyId == other.keyId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, encryptedValue.hashCode), keyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject153')
          ..add('encryptedValue', encryptedValue)
          ..add('keyId', keyId))
        .toString();
  }
}

class InlineObject153Builder
    implements Builder<InlineObject153, InlineObject153Builder> {
  _$InlineObject153 _$v;

  String _encryptedValue;
  String get encryptedValue => _$this._encryptedValue;
  set encryptedValue(String encryptedValue) =>
      _$this._encryptedValue = encryptedValue;

  String _keyId;
  String get keyId => _$this._keyId;
  set keyId(String keyId) => _$this._keyId = keyId;

  InlineObject153Builder() {
    InlineObject153._initializeBuilder(this);
  }

  InlineObject153Builder get _$this {
    if (_$v != null) {
      _encryptedValue = _$v.encryptedValue;
      _keyId = _$v.keyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject153 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject153;
  }

  @override
  void update(void Function(InlineObject153Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject153 build() {
    final _$result = _$v ??
        new _$InlineObject153._(encryptedValue: encryptedValue, keyId: keyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
