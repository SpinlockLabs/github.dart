// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object127.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject127> _$inlineObject127Serializer =
    new _$InlineObject127Serializer();

class _$InlineObject127Serializer
    implements StructuredSerializer<InlineObject127> {
  @override
  final Iterable<Type> types = const [InlineObject127, _$InlineObject127];
  @override
  final String wireName = 'InlineObject127';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject127 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.lastReadAt != null) {
      result
        ..add('last_read_at')
        ..add(serializers.serialize(object.lastReadAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject127 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject127Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'last_read_at':
          result.lastReadAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject127 extends InlineObject127 {
  @override
  final String lastReadAt;

  factory _$InlineObject127([void Function(InlineObject127Builder) updates]) =>
      (new InlineObject127Builder()..update(updates)).build();

  _$InlineObject127._({this.lastReadAt}) : super._();

  @override
  InlineObject127 rebuild(void Function(InlineObject127Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject127Builder toBuilder() =>
      new InlineObject127Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject127 && lastReadAt == other.lastReadAt;
  }

  @override
  int get hashCode {
    return $jf($jc(0, lastReadAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject127')
          ..add('lastReadAt', lastReadAt))
        .toString();
  }
}

class InlineObject127Builder
    implements Builder<InlineObject127, InlineObject127Builder> {
  _$InlineObject127 _$v;

  String _lastReadAt;
  String get lastReadAt => _$this._lastReadAt;
  set lastReadAt(String lastReadAt) => _$this._lastReadAt = lastReadAt;

  InlineObject127Builder() {
    InlineObject127._initializeBuilder(this);
  }

  InlineObject127Builder get _$this {
    if (_$v != null) {
      _lastReadAt = _$v.lastReadAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject127 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject127;
  }

  @override
  void update(void Function(InlineObject127Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject127 build() {
    final _$result = _$v ?? new _$InlineObject127._(lastReadAt: lastReadAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
