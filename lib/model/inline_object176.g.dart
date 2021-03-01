// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object176.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject176> _$inlineObject176Serializer =
    new _$InlineObject176Serializer();

class _$InlineObject176Serializer
    implements StructuredSerializer<InlineObject176> {
  @override
  final Iterable<Type> types = const [InlineObject176, _$InlineObject176];
  @override
  final String wireName = 'InlineObject176';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject176 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.armoredPublicKey != null) {
      result
        ..add('armored_public_key')
        ..add(serializers.serialize(object.armoredPublicKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject176 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject176Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'armored_public_key':
          result.armoredPublicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject176 extends InlineObject176 {
  @override
  final String armoredPublicKey;

  factory _$InlineObject176([void Function(InlineObject176Builder) updates]) =>
      (new InlineObject176Builder()..update(updates)).build();

  _$InlineObject176._({this.armoredPublicKey}) : super._();

  @override
  InlineObject176 rebuild(void Function(InlineObject176Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject176Builder toBuilder() =>
      new InlineObject176Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject176 &&
        armoredPublicKey == other.armoredPublicKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, armoredPublicKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject176')
          ..add('armoredPublicKey', armoredPublicKey))
        .toString();
  }
}

class InlineObject176Builder
    implements Builder<InlineObject176, InlineObject176Builder> {
  _$InlineObject176 _$v;

  String _armoredPublicKey;
  String get armoredPublicKey => _$this._armoredPublicKey;
  set armoredPublicKey(String armoredPublicKey) =>
      _$this._armoredPublicKey = armoredPublicKey;

  InlineObject176Builder() {
    InlineObject176._initializeBuilder(this);
  }

  InlineObject176Builder get _$this {
    if (_$v != null) {
      _armoredPublicKey = _$v.armoredPublicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject176 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject176;
  }

  @override
  void update(void Function(InlineObject176Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject176 build() {
    final _$result =
        _$v ?? new _$InlineObject176._(armoredPublicKey: armoredPublicKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
