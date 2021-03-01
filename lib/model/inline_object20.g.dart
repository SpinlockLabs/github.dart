// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object20.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject20> _$inlineObject20Serializer =
    new _$InlineObject20Serializer();

class _$InlineObject20Serializer
    implements StructuredSerializer<InlineObject20> {
  @override
  final Iterable<Type> types = const [InlineObject20, _$InlineObject20];
  @override
  final String wireName = 'InlineObject20';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject20 object,
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
  InlineObject20 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject20Builder();

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

class _$InlineObject20 extends InlineObject20 {
  @override
  final String body;

  factory _$InlineObject20([void Function(InlineObject20Builder) updates]) =>
      (new InlineObject20Builder()..update(updates)).build();

  _$InlineObject20._({this.body}) : super._();

  @override
  InlineObject20 rebuild(void Function(InlineObject20Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject20Builder toBuilder() =>
      new InlineObject20Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject20 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject20')..add('body', body))
        .toString();
  }
}

class InlineObject20Builder
    implements Builder<InlineObject20, InlineObject20Builder> {
  _$InlineObject20 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject20Builder() {
    InlineObject20._initializeBuilder(this);
  }

  InlineObject20Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject20 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject20;
  }

  @override
  void update(void Function(InlineObject20Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject20 build() {
    final _$result = _$v ?? new _$InlineObject20._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
