// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object132.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject132> _$inlineObject132Serializer =
    new _$InlineObject132Serializer();

class _$InlineObject132Serializer
    implements StructuredSerializer<InlineObject132> {
  @override
  final Iterable<Type> types = const [InlineObject132, _$InlineObject132];
  @override
  final String wireName = 'InlineObject132';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject132 object,
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
  InlineObject132 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject132Builder();

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

class _$InlineObject132 extends InlineObject132 {
  @override
  final String body;

  factory _$InlineObject132([void Function(InlineObject132Builder) updates]) =>
      (new InlineObject132Builder()..update(updates)).build();

  _$InlineObject132._({this.body}) : super._();

  @override
  InlineObject132 rebuild(void Function(InlineObject132Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject132Builder toBuilder() =>
      new InlineObject132Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject132 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject132')..add('body', body))
        .toString();
  }
}

class InlineObject132Builder
    implements Builder<InlineObject132, InlineObject132Builder> {
  _$InlineObject132 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject132Builder() {
    InlineObject132._initializeBuilder(this);
  }

  InlineObject132Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject132 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject132;
  }

  @override
  void update(void Function(InlineObject132Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject132 build() {
    final _$result = _$v ?? new _$InlineObject132._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
