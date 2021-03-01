// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object23.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject23> _$inlineObject23Serializer =
    new _$InlineObject23Serializer();

class _$InlineObject23Serializer
    implements StructuredSerializer<InlineObject23> {
  @override
  final Iterable<Type> types = const [InlineObject23, _$InlineObject23];
  @override
  final String wireName = 'InlineObject23';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject23 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ignored != null) {
      result
        ..add('ignored')
        ..add(serializers.serialize(object.ignored,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject23 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject23Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ignored':
          result.ignored = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject23 extends InlineObject23 {
  @override
  final bool ignored;

  factory _$InlineObject23([void Function(InlineObject23Builder) updates]) =>
      (new InlineObject23Builder()..update(updates)).build();

  _$InlineObject23._({this.ignored}) : super._();

  @override
  InlineObject23 rebuild(void Function(InlineObject23Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject23Builder toBuilder() =>
      new InlineObject23Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject23 && ignored == other.ignored;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ignored.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject23')
          ..add('ignored', ignored))
        .toString();
  }
}

class InlineObject23Builder
    implements Builder<InlineObject23, InlineObject23Builder> {
  _$InlineObject23 _$v;

  bool _ignored;
  bool get ignored => _$this._ignored;
  set ignored(bool ignored) => _$this._ignored = ignored;

  InlineObject23Builder() {
    InlineObject23._initializeBuilder(this);
  }

  InlineObject23Builder get _$this {
    if (_$v != null) {
      _ignored = _$v.ignored;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject23 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject23;
  }

  @override
  void update(void Function(InlineObject23Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject23 build() {
    final _$result = _$v ?? new _$InlineObject23._(ignored: ignored);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
