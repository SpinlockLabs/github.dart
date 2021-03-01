// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'key_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KeySimple> _$keySimpleSerializer = new _$KeySimpleSerializer();

class _$KeySimpleSerializer implements StructuredSerializer<KeySimple> {
  @override
  final Iterable<Type> types = const [KeySimple, _$KeySimple];
  @override
  final String wireName = 'KeySimple';

  @override
  Iterable<Object> serialize(Serializers serializers, KeySimple object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  KeySimple deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeySimpleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$KeySimple extends KeySimple {
  @override
  final int id;
  @override
  final String key;

  factory _$KeySimple([void Function(KeySimpleBuilder) updates]) =>
      (new KeySimpleBuilder()..update(updates)).build();

  _$KeySimple._({this.id, this.key}) : super._();

  @override
  KeySimple rebuild(void Function(KeySimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeySimpleBuilder toBuilder() => new KeySimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeySimple && id == other.id && key == other.key;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), key.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KeySimple')
          ..add('id', id)
          ..add('key', key))
        .toString();
  }
}

class KeySimpleBuilder implements Builder<KeySimple, KeySimpleBuilder> {
  _$KeySimple _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  KeySimpleBuilder() {
    KeySimple._initializeBuilder(this);
  }

  KeySimpleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _key = _$v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeySimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$KeySimple;
  }

  @override
  void update(void Function(KeySimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KeySimple build() {
    final _$result = _$v ?? new _$KeySimple._(id: id, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
