// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object86.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject86> _$inlineObject86Serializer =
    new _$InlineObject86Serializer();

class _$InlineObject86Serializer
    implements StructuredSerializer<InlineObject86> {
  @override
  final Iterable<Type> types = const [InlineObject86, _$InlineObject86];
  @override
  final String wireName = 'InlineObject86';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject86 object,
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
  InlineObject86 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject86Builder();

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

class _$InlineObject86 extends InlineObject86 {
  @override
  final String body;

  factory _$InlineObject86([void Function(InlineObject86Builder) updates]) =>
      (new InlineObject86Builder()..update(updates)).build();

  _$InlineObject86._({this.body}) : super._();

  @override
  InlineObject86 rebuild(void Function(InlineObject86Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject86Builder toBuilder() =>
      new InlineObject86Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject86 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject86')..add('body', body))
        .toString();
  }
}

class InlineObject86Builder
    implements Builder<InlineObject86, InlineObject86Builder> {
  _$InlineObject86 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject86Builder() {
    InlineObject86._initializeBuilder(this);
  }

  InlineObject86Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject86 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject86;
  }

  @override
  void update(void Function(InlineObject86Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject86 build() {
    final _$result = _$v ?? new _$InlineObject86._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
