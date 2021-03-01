// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object56.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject56> _$inlineObject56Serializer =
    new _$InlineObject56Serializer();

class _$InlineObject56Serializer
    implements StructuredSerializer<InlineObject56> {
  @override
  final Iterable<Type> types = const [InlineObject56, _$InlineObject56];
  @override
  final String wireName = 'InlineObject56';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject56 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject56 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject56Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject56 extends InlineObject56 {
  @override
  final String position;

  factory _$InlineObject56([void Function(InlineObject56Builder) updates]) =>
      (new InlineObject56Builder()..update(updates)).build();

  _$InlineObject56._({this.position}) : super._();

  @override
  InlineObject56 rebuild(void Function(InlineObject56Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject56Builder toBuilder() =>
      new InlineObject56Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject56 && position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc(0, position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject56')
          ..add('position', position))
        .toString();
  }
}

class InlineObject56Builder
    implements Builder<InlineObject56, InlineObject56Builder> {
  _$InlineObject56 _$v;

  String _position;
  String get position => _$this._position;
  set position(String position) => _$this._position = position;

  InlineObject56Builder() {
    InlineObject56._initializeBuilder(this);
  }

  InlineObject56Builder get _$this {
    if (_$v != null) {
      _position = _$v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject56 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject56;
  }

  @override
  void update(void Function(InlineObject56Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject56 build() {
    final _$result = _$v ?? new _$InlineObject56._(position: position);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
