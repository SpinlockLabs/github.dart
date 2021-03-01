// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object39.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject39> _$inlineObject39Serializer =
    new _$InlineObject39Serializer();

class _$InlineObject39Serializer
    implements StructuredSerializer<InlineObject39> {
  @override
  final Iterable<Type> types = const [InlineObject39, _$InlineObject39];
  @override
  final String wireName = 'InlineObject39';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject39 object,
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
  InlineObject39 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject39Builder();

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

class _$InlineObject39 extends InlineObject39 {
  @override
  final String name;
  @override
  final String body;

  factory _$InlineObject39([void Function(InlineObject39Builder) updates]) =>
      (new InlineObject39Builder()..update(updates)).build();

  _$InlineObject39._({this.name, this.body}) : super._();

  @override
  InlineObject39 rebuild(void Function(InlineObject39Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject39Builder toBuilder() =>
      new InlineObject39Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject39 && name == other.name && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject39')
          ..add('name', name)
          ..add('body', body))
        .toString();
  }
}

class InlineObject39Builder
    implements Builder<InlineObject39, InlineObject39Builder> {
  _$InlineObject39 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject39Builder() {
    InlineObject39._initializeBuilder(this);
  }

  InlineObject39Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject39 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject39;
  }

  @override
  void update(void Function(InlineObject39Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject39 build() {
    final _$result = _$v ?? new _$InlineObject39._(name: name, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
