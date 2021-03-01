// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object116.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject116> _$inlineObject116Serializer =
    new _$InlineObject116Serializer();

class _$InlineObject116Serializer
    implements StructuredSerializer<InlineObject116> {
  @override
  final Iterable<Type> types = const [InlineObject116, _$InlineObject116];
  @override
  final String wireName = 'InlineObject116';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject116 object,
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
  InlineObject116 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject116Builder();

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

class _$InlineObject116 extends InlineObject116 {
  @override
  final String body;

  factory _$InlineObject116([void Function(InlineObject116Builder) updates]) =>
      (new InlineObject116Builder()..update(updates)).build();

  _$InlineObject116._({this.body}) : super._();

  @override
  InlineObject116 rebuild(void Function(InlineObject116Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject116Builder toBuilder() =>
      new InlineObject116Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject116 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject116')..add('body', body))
        .toString();
  }
}

class InlineObject116Builder
    implements Builder<InlineObject116, InlineObject116Builder> {
  _$InlineObject116 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject116Builder() {
    InlineObject116._initializeBuilder(this);
  }

  InlineObject116Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject116 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject116;
  }

  @override
  void update(void Function(InlineObject116Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject116 build() {
    final _$result = _$v ?? new _$InlineObject116._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
