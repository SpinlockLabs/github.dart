// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object140.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject140> _$inlineObject140Serializer =
    new _$InlineObject140Serializer();

class _$InlineObject140Serializer
    implements StructuredSerializer<InlineObject140> {
  @override
  final Iterable<Type> types = const [InlineObject140, _$InlineObject140];
  @override
  final String wireName = 'InlineObject140';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject140 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject140 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject140Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject140 extends InlineObject140 {
  @override
  final String body;

  factory _$InlineObject140([void Function(InlineObject140Builder) updates]) =>
      (new InlineObject140Builder()..update(updates)).build();

  _$InlineObject140._({this.body}) : super._();

  @override
  InlineObject140 rebuild(void Function(InlineObject140Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject140Builder toBuilder() =>
      new InlineObject140Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject140 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject140')..add('body', body))
        .toString();
  }
}

class InlineObject140Builder
    implements Builder<InlineObject140, InlineObject140Builder> {
  _$InlineObject140 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject140Builder() {
    InlineObject140._initializeBuilder(this);
  }

  InlineObject140Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject140 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject140;
  }

  @override
  void update(void Function(InlineObject140Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject140 build() {
    final _$result = _$v ?? new _$InlineObject140._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
