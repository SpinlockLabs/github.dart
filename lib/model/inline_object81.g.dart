// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object81.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject81> _$inlineObject81Serializer =
    new _$InlineObject81Serializer();

class _$InlineObject81Serializer
    implements StructuredSerializer<InlineObject81> {
  @override
  final Iterable<Type> types = const [InlineObject81, _$InlineObject81];
  @override
  final String wireName = 'InlineObject81';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject81 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.headSha != null) {
      result
        ..add('head_sha')
        ..add(serializers.serialize(object.headSha,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject81 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject81Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'head_sha':
          result.headSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject81 extends InlineObject81 {
  @override
  final String headSha;

  factory _$InlineObject81([void Function(InlineObject81Builder) updates]) =>
      (new InlineObject81Builder()..update(updates)).build();

  _$InlineObject81._({this.headSha}) : super._();

  @override
  InlineObject81 rebuild(void Function(InlineObject81Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject81Builder toBuilder() =>
      new InlineObject81Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject81 && headSha == other.headSha;
  }

  @override
  int get hashCode {
    return $jf($jc(0, headSha.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject81')
          ..add('headSha', headSha))
        .toString();
  }
}

class InlineObject81Builder
    implements Builder<InlineObject81, InlineObject81Builder> {
  _$InlineObject81 _$v;

  String _headSha;
  String get headSha => _$this._headSha;
  set headSha(String headSha) => _$this._headSha = headSha;

  InlineObject81Builder() {
    InlineObject81._initializeBuilder(this);
  }

  InlineObject81Builder get _$this {
    if (_$v != null) {
      _headSha = _$v.headSha;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject81 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject81;
  }

  @override
  void update(void Function(InlineObject81Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject81 build() {
    final _$result = _$v ?? new _$InlineObject81._(headSha: headSha);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
