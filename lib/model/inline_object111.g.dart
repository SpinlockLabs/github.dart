// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object111.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject111> _$inlineObject111Serializer =
    new _$InlineObject111Serializer();

class _$InlineObject111Serializer
    implements StructuredSerializer<InlineObject111> {
  @override
  final Iterable<Type> types = const [InlineObject111, _$InlineObject111];
  @override
  final String wireName = 'InlineObject111';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject111 object,
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
  InlineObject111 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject111Builder();

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

class _$InlineObject111 extends InlineObject111 {
  @override
  final String body;

  factory _$InlineObject111([void Function(InlineObject111Builder) updates]) =>
      (new InlineObject111Builder()..update(updates)).build();

  _$InlineObject111._({this.body}) : super._();

  @override
  InlineObject111 rebuild(void Function(InlineObject111Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject111Builder toBuilder() =>
      new InlineObject111Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject111 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject111')..add('body', body))
        .toString();
  }
}

class InlineObject111Builder
    implements Builder<InlineObject111, InlineObject111Builder> {
  _$InlineObject111 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject111Builder() {
    InlineObject111._initializeBuilder(this);
  }

  InlineObject111Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject111 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject111;
  }

  @override
  void update(void Function(InlineObject111Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject111 build() {
    final _$result = _$v ?? new _$InlineObject111._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
