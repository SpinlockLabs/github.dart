// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object45.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject45> _$inlineObject45Serializer =
    new _$InlineObject45Serializer();

class _$InlineObject45Serializer
    implements StructuredSerializer<InlineObject45> {
  @override
  final Iterable<Type> types = const [InlineObject45, _$InlineObject45];
  @override
  final String wireName = 'InlineObject45';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject45 object,
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
  InlineObject45 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject45Builder();

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

class _$InlineObject45 extends InlineObject45 {
  @override
  final String body;

  factory _$InlineObject45([void Function(InlineObject45Builder) updates]) =>
      (new InlineObject45Builder()..update(updates)).build();

  _$InlineObject45._({this.body}) : super._();

  @override
  InlineObject45 rebuild(void Function(InlineObject45Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject45Builder toBuilder() =>
      new InlineObject45Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject45 && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject45')..add('body', body))
        .toString();
  }
}

class InlineObject45Builder
    implements Builder<InlineObject45, InlineObject45Builder> {
  _$InlineObject45 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject45Builder() {
    InlineObject45._initializeBuilder(this);
  }

  InlineObject45Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject45 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject45;
  }

  @override
  void update(void Function(InlineObject45Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject45 build() {
    final _$result = _$v ?? new _$InlineObject45._(body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
