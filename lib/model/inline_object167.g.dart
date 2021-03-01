// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object167.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject167> _$inlineObject167Serializer =
    new _$InlineObject167Serializer();

class _$InlineObject167Serializer
    implements StructuredSerializer<InlineObject167> {
  @override
  final Iterable<Type> types = const [InlineObject167, _$InlineObject167];
  @override
  final String wireName = 'InlineObject167';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject167 object,
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
  InlineObject167 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject167Builder();

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

class _$InlineObject167 extends InlineObject167 {
  @override
  final String body;

  factory _$InlineObject167([void Function(InlineObject167Builder) updates]) =>
      (new InlineObject167Builder()..update(updates)).build();

  _$InlineObject167._({this.body}) : super._();

  @override
  InlineObject167 rebuild(void Function(InlineObject167Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject167Builder toBuilder() =>
      new InlineObject167Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject167 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject167')..add('body', body))
        .toString();
  }
}

class InlineObject167Builder
    implements Builder<InlineObject167, InlineObject167Builder> {
  _$InlineObject167 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject167Builder() {
    InlineObject167._initializeBuilder(this);
  }

  InlineObject167Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject167 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject167;
  }

  @override
  void update(void Function(InlineObject167Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject167 build() {
    final _$result = _$v ?? new _$InlineObject167._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
