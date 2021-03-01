// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object54.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject54> _$inlineObject54Serializer =
    new _$InlineObject54Serializer();

class _$InlineObject54Serializer
    implements StructuredSerializer<InlineObject54> {
  @override
  final Iterable<Type> types = const [InlineObject54, _$InlineObject54];
  @override
  final String wireName = 'InlineObject54';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject54 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(String)));
    }
    if (object.columnId != null) {
      result
        ..add('column_id')
        ..add(serializers.serialize(object.columnId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  InlineObject54 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject54Builder();

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
        case 'column_id':
          result.columnId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject54 extends InlineObject54 {
  @override
  final String position;
  @override
  final int columnId;

  factory _$InlineObject54([void Function(InlineObject54Builder) updates]) =>
      (new InlineObject54Builder()..update(updates)).build();

  _$InlineObject54._({this.position, this.columnId}) : super._();

  @override
  InlineObject54 rebuild(void Function(InlineObject54Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject54Builder toBuilder() =>
      new InlineObject54Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject54 &&
        position == other.position &&
        columnId == other.columnId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, position.hashCode), columnId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject54')
          ..add('position', position)
          ..add('columnId', columnId))
        .toString();
  }
}

class InlineObject54Builder
    implements Builder<InlineObject54, InlineObject54Builder> {
  _$InlineObject54 _$v;

  String _position;
  String get position => _$this._position;
  set position(String position) => _$this._position = position;

  int _columnId;
  int get columnId => _$this._columnId;
  set columnId(int columnId) => _$this._columnId = columnId;

  InlineObject54Builder() {
    InlineObject54._initializeBuilder(this);
  }

  InlineObject54Builder get _$this {
    if (_$v != null) {
      _position = _$v.position;
      _columnId = _$v.columnId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject54 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject54;
  }

  @override
  void update(void Function(InlineObject54Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject54 build() {
    final _$result =
        _$v ?? new _$InlineObject54._(position: position, columnId: columnId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
