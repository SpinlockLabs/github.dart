// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object123.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject123> _$inlineObject123Serializer =
    new _$InlineObject123Serializer();

class _$InlineObject123Serializer
    implements StructuredSerializer<InlineObject123> {
  @override
  final Iterable<Type> types = const [InlineObject123, _$InlineObject123];
  @override
  final String wireName = 'InlineObject123';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject123 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.newName != null) {
      result
        ..add('new_name')
        ..add(serializers.serialize(object.newName,
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
  InlineObject123 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject123Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'new_name':
          result.newName = serializers.deserialize(value,
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

class _$InlineObject123 extends InlineObject123 {
  @override
  final String newName;
  @override
  final String color;
  @override
  final String description;

  factory _$InlineObject123([void Function(InlineObject123Builder) updates]) =>
      (new InlineObject123Builder()..update(updates)).build();

  _$InlineObject123._({this.newName, this.color, this.description}) : super._();

  @override
  InlineObject123 rebuild(void Function(InlineObject123Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject123Builder toBuilder() =>
      new InlineObject123Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject123 &&
        newName == other.newName &&
        color == other.color &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, newName.hashCode), color.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject123')
          ..add('newName', newName)
          ..add('color', color)
          ..add('description', description))
        .toString();
  }
}

class InlineObject123Builder
    implements Builder<InlineObject123, InlineObject123Builder> {
  _$InlineObject123 _$v;

  String _newName;
  String get newName => _$this._newName;
  set newName(String newName) => _$this._newName = newName;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  InlineObject123Builder() {
    InlineObject123._initializeBuilder(this);
  }

  InlineObject123Builder get _$this {
    if (_$v != null) {
      _newName = _$v.newName;
      _color = _$v.color;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject123 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject123;
  }

  @override
  void update(void Function(InlineObject123Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject123 build() {
    final _$result = _$v ??
        new _$InlineObject123._(
            newName: newName, color: color, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
