// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object64.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject64> _$inlineObject64Serializer =
    new _$InlineObject64Serializer();

class _$InlineObject64Serializer
    implements StructuredSerializer<InlineObject64> {
  @override
  final Iterable<Type> types = const [InlineObject64, _$InlineObject64];
  @override
  final String wireName = 'InlineObject64';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject64 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.inputs != null) {
      result
        ..add('inputs')
        ..add(serializers.serialize(object.inputs,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject64 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject64Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inputs':
          result.inputs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)])));
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject64 extends InlineObject64 {
  @override
  final String ref;
  @override
  final BuiltMap<String, String> inputs;

  factory _$InlineObject64([void Function(InlineObject64Builder) updates]) =>
      (new InlineObject64Builder()..update(updates)).build();

  _$InlineObject64._({this.ref, this.inputs}) : super._();

  @override
  InlineObject64 rebuild(void Function(InlineObject64Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject64Builder toBuilder() =>
      new InlineObject64Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject64 &&
        ref == other.ref &&
        inputs == other.inputs;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ref.hashCode), inputs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject64')
          ..add('ref', ref)
          ..add('inputs', inputs))
        .toString();
  }
}

class InlineObject64Builder
    implements Builder<InlineObject64, InlineObject64Builder> {
  _$InlineObject64 _$v;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  MapBuilder<String, String> _inputs;
  MapBuilder<String, String> get inputs =>
      _$this._inputs ??= new MapBuilder<String, String>();
  set inputs(MapBuilder<String, String> inputs) => _$this._inputs = inputs;

  InlineObject64Builder() {
    InlineObject64._initializeBuilder(this);
  }

  InlineObject64Builder get _$this {
    if (_$v != null) {
      _ref = _$v.ref;
      _inputs = _$v.inputs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject64 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject64;
  }

  @override
  void update(void Function(InlineObject64Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject64 build() {
    _$InlineObject64 _$result;
    try {
      _$result =
          _$v ?? new _$InlineObject64._(ref: ref, inputs: _inputs?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'inputs';
        _inputs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject64', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
