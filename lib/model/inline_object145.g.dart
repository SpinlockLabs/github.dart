// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object145.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject145> _$inlineObject145Serializer =
    new _$InlineObject145Serializer();

class _$InlineObject145Serializer
    implements StructuredSerializer<InlineObject145> {
  @override
  final Iterable<Type> types = const [InlineObject145, _$InlineObject145];
  @override
  final String wireName = 'InlineObject145';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject145 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject145 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject145Builder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject145 extends InlineObject145 {
  @override
  final String name;
  @override
  final String label;
  @override
  final String state;

  factory _$InlineObject145([void Function(InlineObject145Builder) updates]) =>
      (new InlineObject145Builder()..update(updates)).build();

  _$InlineObject145._({this.name, this.label, this.state}) : super._();

  @override
  InlineObject145 rebuild(void Function(InlineObject145Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject145Builder toBuilder() =>
      new InlineObject145Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject145 &&
        name == other.name &&
        label == other.label &&
        state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), label.hashCode), state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject145')
          ..add('name', name)
          ..add('label', label)
          ..add('state', state))
        .toString();
  }
}

class InlineObject145Builder
    implements Builder<InlineObject145, InlineObject145Builder> {
  _$InlineObject145 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  InlineObject145Builder() {
    InlineObject145._initializeBuilder(this);
  }

  InlineObject145Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _label = _$v.label;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject145 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject145;
  }

  @override
  void update(void Function(InlineObject145Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject145 build() {
    final _$result =
        _$v ?? new _$InlineObject145._(name: name, label: label, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
