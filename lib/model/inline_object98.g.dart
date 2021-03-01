// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object98.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject98> _$inlineObject98Serializer =
    new _$InlineObject98Serializer();

class _$InlineObject98Serializer
    implements StructuredSerializer<InlineObject98> {
  @override
  final Iterable<Type> types = const [InlineObject98, _$InlineObject98];
  @override
  final String wireName = 'InlineObject98';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject98 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
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
  InlineObject98 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject98Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$InlineObject98 extends InlineObject98 {
  @override
  final String ref;
  @override
  final String sha;
  @override
  final String key;

  factory _$InlineObject98([void Function(InlineObject98Builder) updates]) =>
      (new InlineObject98Builder()..update(updates)).build();

  _$InlineObject98._({this.ref, this.sha, this.key}) : super._();

  @override
  InlineObject98 rebuild(void Function(InlineObject98Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject98Builder toBuilder() =>
      new InlineObject98Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject98 &&
        ref == other.ref &&
        sha == other.sha &&
        key == other.key;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, ref.hashCode), sha.hashCode), key.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject98')
          ..add('ref', ref)
          ..add('sha', sha)
          ..add('key', key))
        .toString();
  }
}

class InlineObject98Builder
    implements Builder<InlineObject98, InlineObject98Builder> {
  _$InlineObject98 _$v;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  InlineObject98Builder() {
    InlineObject98._initializeBuilder(this);
  }

  InlineObject98Builder get _$this {
    if (_$v != null) {
      _ref = _$v.ref;
      _sha = _$v.sha;
      _key = _$v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject98 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject98;
  }

  @override
  void update(void Function(InlineObject98Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject98 build() {
    final _$result =
        _$v ?? new _$InlineObject98._(ref: ref, sha: sha, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
