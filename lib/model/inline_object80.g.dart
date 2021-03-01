// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object80.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject80> _$inlineObject80Serializer =
    new _$InlineObject80Serializer();

class _$InlineObject80Serializer
    implements StructuredSerializer<InlineObject80> {
  @override
  final Iterable<Type> types = const [InlineObject80, _$InlineObject80];
  @override
  final String wireName = 'InlineObject80';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject80 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.newName != null) {
      result
        ..add('new_name')
        ..add(serializers.serialize(object.newName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject80 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject80Builder();

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
      }
    }

    return result.build();
  }
}

class _$InlineObject80 extends InlineObject80 {
  @override
  final String newName;

  factory _$InlineObject80([void Function(InlineObject80Builder) updates]) =>
      (new InlineObject80Builder()..update(updates)).build();

  _$InlineObject80._({this.newName}) : super._();

  @override
  InlineObject80 rebuild(void Function(InlineObject80Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject80Builder toBuilder() =>
      new InlineObject80Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject80 && newName == other.newName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, newName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject80')
          ..add('newName', newName))
        .toString();
  }
}

class InlineObject80Builder
    implements Builder<InlineObject80, InlineObject80Builder> {
  _$InlineObject80 _$v;

  String _newName;
  String get newName => _$this._newName;
  set newName(String newName) => _$this._newName = newName;

  InlineObject80Builder() {
    InlineObject80._initializeBuilder(this);
  }

  InlineObject80Builder get _$this {
    if (_$v != null) {
      _newName = _$v.newName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject80 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject80;
  }

  @override
  void update(void Function(InlineObject80Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject80 build() {
    final _$result = _$v ?? new _$InlineObject80._(newName: newName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
