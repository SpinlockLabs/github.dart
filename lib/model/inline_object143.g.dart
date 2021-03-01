// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object143.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject143> _$inlineObject143Serializer =
    new _$InlineObject143Serializer();

class _$InlineObject143Serializer
    implements StructuredSerializer<InlineObject143> {
  @override
  final Iterable<Type> types = const [InlineObject143, _$InlineObject143];
  @override
  final String wireName = 'InlineObject143';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject143 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.expectedHeadSha != null) {
      result
        ..add('expected_head_sha')
        ..add(serializers.serialize(object.expectedHeadSha,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject143 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject143Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'expected_head_sha':
          result.expectedHeadSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject143 extends InlineObject143 {
  @override
  final String expectedHeadSha;

  factory _$InlineObject143([void Function(InlineObject143Builder) updates]) =>
      (new InlineObject143Builder()..update(updates)).build();

  _$InlineObject143._({this.expectedHeadSha}) : super._();

  @override
  InlineObject143 rebuild(void Function(InlineObject143Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject143Builder toBuilder() =>
      new InlineObject143Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject143 && expectedHeadSha == other.expectedHeadSha;
  }

  @override
  int get hashCode {
    return $jf($jc(0, expectedHeadSha.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject143')
          ..add('expectedHeadSha', expectedHeadSha))
        .toString();
  }
}

class InlineObject143Builder
    implements Builder<InlineObject143, InlineObject143Builder> {
  _$InlineObject143 _$v;

  String _expectedHeadSha;
  String get expectedHeadSha => _$this._expectedHeadSha;
  set expectedHeadSha(String expectedHeadSha) =>
      _$this._expectedHeadSha = expectedHeadSha;

  InlineObject143Builder() {
    InlineObject143._initializeBuilder(this);
  }

  InlineObject143Builder get _$this {
    if (_$v != null) {
      _expectedHeadSha = _$v.expectedHeadSha;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject143 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject143;
  }

  @override
  void update(void Function(InlineObject143Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject143 build() {
    final _$result =
        _$v ?? new _$InlineObject143._(expectedHeadSha: expectedHeadSha);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
