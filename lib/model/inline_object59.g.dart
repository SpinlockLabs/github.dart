// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object59.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject59> _$inlineObject59Serializer =
    new _$InlineObject59Serializer();

class _$InlineObject59Serializer
    implements StructuredSerializer<InlineObject59> {
  @override
  final Iterable<Type> types = const [InlineObject59, _$InlineObject59];
  @override
  final String wireName = 'InlineObject59';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject59 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject59 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject59Builder();

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
      }
    }

    return result.build();
  }
}

class _$InlineObject59 extends InlineObject59 {
  @override
  final String name;

  factory _$InlineObject59([void Function(InlineObject59Builder) updates]) =>
      (new InlineObject59Builder()..update(updates)).build();

  _$InlineObject59._({this.name}) : super._();

  @override
  InlineObject59 rebuild(void Function(InlineObject59Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject59Builder toBuilder() =>
      new InlineObject59Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject59 && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject59')..add('name', name))
        .toString();
  }
}

class InlineObject59Builder
    implements Builder<InlineObject59, InlineObject59Builder> {
  _$InlineObject59 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject59Builder() {
    InlineObject59._initializeBuilder(this);
  }

  InlineObject59Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject59 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject59;
  }

  @override
  void update(void Function(InlineObject59Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject59 build() {
    final _$result = _$v ?? new _$InlineObject59._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
