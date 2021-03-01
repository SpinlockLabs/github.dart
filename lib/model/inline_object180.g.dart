// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object180.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject180> _$inlineObject180Serializer =
    new _$InlineObject180Serializer();

class _$InlineObject180Serializer
    implements StructuredSerializer<InlineObject180> {
  @override
  final Iterable<Type> types = const [InlineObject180, _$InlineObject180];
  @override
  final String wireName = 'InlineObject180';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject180 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject180 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject180Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject180 extends InlineObject180 {
  @override
  final String name;
  @override
  final String body;

  factory _$InlineObject180([void Function(InlineObject180Builder) updates]) =>
      (new InlineObject180Builder()..update(updates)).build();

  _$InlineObject180._({this.name, this.body}) : super._();

  @override
  InlineObject180 rebuild(void Function(InlineObject180Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject180Builder toBuilder() =>
      new InlineObject180Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject180 && name == other.name && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject180')
          ..add('name', name)
          ..add('body', body))
        .toString();
  }
}

class InlineObject180Builder
    implements Builder<InlineObject180, InlineObject180Builder> {
  _$InlineObject180 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject180Builder() {
    InlineObject180._initializeBuilder(this);
  }

  InlineObject180Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject180 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject180;
  }

  @override
  void update(void Function(InlineObject180Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject180 build() {
    final _$result = _$v ?? new _$InlineObject180._(name: name, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
