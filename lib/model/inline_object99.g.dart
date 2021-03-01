// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object99.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject99> _$inlineObject99Serializer =
    new _$InlineObject99Serializer();

class _$InlineObject99Serializer
    implements StructuredSerializer<InlineObject99> {
  @override
  final Iterable<Type> types = const [InlineObject99, _$InlineObject99];
  @override
  final String wireName = 'InlineObject99';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject99 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.force != null) {
      result
        ..add('force')
        ..add(serializers.serialize(object.force,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject99 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject99Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'force':
          result.force = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject99 extends InlineObject99 {
  @override
  final String sha;
  @override
  final bool force;

  factory _$InlineObject99([void Function(InlineObject99Builder) updates]) =>
      (new InlineObject99Builder()..update(updates)).build();

  _$InlineObject99._({this.sha, this.force}) : super._();

  @override
  InlineObject99 rebuild(void Function(InlineObject99Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject99Builder toBuilder() =>
      new InlineObject99Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject99 && sha == other.sha && force == other.force;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sha.hashCode), force.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject99')
          ..add('sha', sha)
          ..add('force', force))
        .toString();
  }
}

class InlineObject99Builder
    implements Builder<InlineObject99, InlineObject99Builder> {
  _$InlineObject99 _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  bool _force;
  bool get force => _$this._force;
  set force(bool force) => _$this._force = force;

  InlineObject99Builder() {
    InlineObject99._initializeBuilder(this);
  }

  InlineObject99Builder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _force = _$v.force;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject99 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject99;
  }

  @override
  void update(void Function(InlineObject99Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject99 build() {
    final _$result = _$v ?? new _$InlineObject99._(sha: sha, force: force);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
