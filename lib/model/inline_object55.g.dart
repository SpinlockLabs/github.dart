// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object55.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject55> _$inlineObject55Serializer =
    new _$InlineObject55Serializer();

class _$InlineObject55Serializer
    implements StructuredSerializer<InlineObject55> {
  @override
  final Iterable<Type> types = const [InlineObject55, _$InlineObject55];
  @override
  final String wireName = 'InlineObject55';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject55 object,
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
  InlineObject55 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject55Builder();

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

class _$InlineObject55 extends InlineObject55 {
  @override
  final String name;

  factory _$InlineObject55([void Function(InlineObject55Builder) updates]) =>
      (new InlineObject55Builder()..update(updates)).build();

  _$InlineObject55._({this.name}) : super._();

  @override
  InlineObject55 rebuild(void Function(InlineObject55Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject55Builder toBuilder() =>
      new InlineObject55Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject55 && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject55')..add('name', name))
        .toString();
  }
}

class InlineObject55Builder
    implements Builder<InlineObject55, InlineObject55Builder> {
  _$InlineObject55 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject55Builder() {
    InlineObject55._initializeBuilder(this);
  }

  InlineObject55Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject55 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject55;
  }

  @override
  void update(void Function(InlineObject55Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject55 build() {
    final _$result = _$v ?? new _$InlineObject55._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
