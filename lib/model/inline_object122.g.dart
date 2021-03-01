// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object122.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject122> _$inlineObject122Serializer =
    new _$InlineObject122Serializer();

class _$InlineObject122Serializer
    implements StructuredSerializer<InlineObject122> {
  @override
  final Iterable<Type> types = const [InlineObject122, _$InlineObject122];
  @override
  final String wireName = 'InlineObject122';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject122 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject122 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject122Builder();

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
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject122 extends InlineObject122 {
  @override
  final String name;
  @override
  final String color;
  @override
  final String description;

  factory _$InlineObject122([void Function(InlineObject122Builder) updates]) =>
      (new InlineObject122Builder()..update(updates)).build();

  _$InlineObject122._({this.name, this.color, this.description}) : super._();

  @override
  InlineObject122 rebuild(void Function(InlineObject122Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject122Builder toBuilder() =>
      new InlineObject122Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject122 &&
        name == other.name &&
        color == other.color &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), color.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject122')
          ..add('name', name)
          ..add('color', color)
          ..add('description', description))
        .toString();
  }
}

class InlineObject122Builder
    implements Builder<InlineObject122, InlineObject122Builder> {
  _$InlineObject122 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  InlineObject122Builder() {
    InlineObject122._initializeBuilder(this);
  }

  InlineObject122Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _color = _$v.color;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject122 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject122;
  }

  @override
  void update(void Function(InlineObject122Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject122 build() {
    final _$result = _$v ??
        new _$InlineObject122._(
            name: name, color: color, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
