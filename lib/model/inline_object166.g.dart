// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object166.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject166> _$inlineObject166Serializer =
    new _$InlineObject166Serializer();

class _$InlineObject166Serializer
    implements StructuredSerializer<InlineObject166> {
  @override
  final Iterable<Type> types = const [InlineObject166, _$InlineObject166];
  @override
  final String wireName = 'InlineObject166';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject166 object,
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
  InlineObject166 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject166Builder();

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

class _$InlineObject166 extends InlineObject166 {
  @override
  final String body;

  factory _$InlineObject166([void Function(InlineObject166Builder) updates]) =>
      (new InlineObject166Builder()..update(updates)).build();

  _$InlineObject166._({this.body}) : super._();

  @override
  InlineObject166 rebuild(void Function(InlineObject166Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject166Builder toBuilder() =>
      new InlineObject166Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject166 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject166')..add('body', body))
        .toString();
  }
}

class InlineObject166Builder
    implements Builder<InlineObject166, InlineObject166Builder> {
  _$InlineObject166 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject166Builder() {
    InlineObject166._initializeBuilder(this);
  }

  InlineObject166Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject166 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject166;
  }

  @override
  void update(void Function(InlineObject166Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject166 build() {
    final _$result = _$v ?? new _$InlineObject166._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
