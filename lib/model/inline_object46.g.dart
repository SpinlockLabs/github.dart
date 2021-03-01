// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object46.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject46> _$inlineObject46Serializer =
    new _$InlineObject46Serializer();

class _$InlineObject46Serializer
    implements StructuredSerializer<InlineObject46> {
  @override
  final Iterable<Type> types = const [InlineObject46, _$InlineObject46];
  @override
  final String wireName = 'InlineObject46';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject46 object,
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
  InlineObject46 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject46Builder();

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

class _$InlineObject46 extends InlineObject46 {
  @override
  final String body;

  factory _$InlineObject46([void Function(InlineObject46Builder) updates]) =>
      (new InlineObject46Builder()..update(updates)).build();

  _$InlineObject46._({this.body}) : super._();

  @override
  InlineObject46 rebuild(void Function(InlineObject46Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject46Builder toBuilder() =>
      new InlineObject46Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject46 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject46')..add('body', body))
        .toString();
  }
}

class InlineObject46Builder
    implements Builder<InlineObject46, InlineObject46Builder> {
  _$InlineObject46 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject46Builder() {
    InlineObject46._initializeBuilder(this);
  }

  InlineObject46Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject46 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject46;
  }

  @override
  void update(void Function(InlineObject46Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject46 build() {
    final _$result = _$v ?? new _$InlineObject46._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
