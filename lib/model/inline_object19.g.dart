// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object19.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject19> _$inlineObject19Serializer =
    new _$InlineObject19Serializer();

class _$InlineObject19Serializer
    implements StructuredSerializer<InlineObject19> {
  @override
  final Iterable<Type> types = const [InlineObject19, _$InlineObject19];
  @override
  final String wireName = 'InlineObject19';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject19 object,
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
  InlineObject19 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject19Builder();

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

class _$InlineObject19 extends InlineObject19 {
  @override
  final String body;

  factory _$InlineObject19([void Function(InlineObject19Builder) updates]) =>
      (new InlineObject19Builder()..update(updates)).build();

  _$InlineObject19._({this.body}) : super._();

  @override
  InlineObject19 rebuild(void Function(InlineObject19Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject19Builder toBuilder() =>
      new InlineObject19Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject19 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject19')..add('body', body))
        .toString();
  }
}

class InlineObject19Builder
    implements Builder<InlineObject19, InlineObject19Builder> {
  _$InlineObject19 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject19Builder() {
    InlineObject19._initializeBuilder(this);
  }

  InlineObject19Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject19 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject19;
  }

  @override
  void update(void Function(InlineObject19Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject19 build() {
    final _$result = _$v ?? new _$InlineObject19._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
