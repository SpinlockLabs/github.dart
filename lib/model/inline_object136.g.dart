// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object136.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject136> _$inlineObject136Serializer =
    new _$InlineObject136Serializer();

class _$InlineObject136Serializer
    implements StructuredSerializer<InlineObject136> {
  @override
  final Iterable<Type> types = const [InlineObject136, _$InlineObject136];
  @override
  final String wireName = 'InlineObject136';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject136 object,
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
  InlineObject136 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject136Builder();

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

class _$InlineObject136 extends InlineObject136 {
  @override
  final String body;

  factory _$InlineObject136([void Function(InlineObject136Builder) updates]) =>
      (new InlineObject136Builder()..update(updates)).build();

  _$InlineObject136._({this.body}) : super._();

  @override
  InlineObject136 rebuild(void Function(InlineObject136Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject136Builder toBuilder() =>
      new InlineObject136Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject136 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject136')..add('body', body))
        .toString();
  }
}

class InlineObject136Builder
    implements Builder<InlineObject136, InlineObject136Builder> {
  _$InlineObject136 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject136Builder() {
    InlineObject136._initializeBuilder(this);
  }

  InlineObject136Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject136 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject136;
  }

  @override
  void update(void Function(InlineObject136Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject136 build() {
    final _$result = _$v ?? new _$InlineObject136._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
