// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20012.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20012> _$inlineResponse20012Serializer =
    new _$InlineResponse20012Serializer();

class _$InlineResponse20012Serializer
    implements StructuredSerializer<InlineResponse20012> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20012,
    _$InlineResponse20012
  ];
  @override
  final String wireName = 'InlineResponse20012';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20012 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.artifacts != null) {
      result
        ..add('artifacts')
        ..add(serializers.serialize(object.artifacts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Artifact)])));
    }
    return result;
  }

  @override
  InlineResponse20012 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20012Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'artifacts':
          result.artifacts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Artifact)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20012 extends InlineResponse20012 {
  @override
  final int totalCount;
  @override
  final BuiltList<Artifact> artifacts;

  factory _$InlineResponse20012(
          [void Function(InlineResponse20012Builder) updates]) =>
      (new InlineResponse20012Builder()..update(updates)).build();

  _$InlineResponse20012._({this.totalCount, this.artifacts}) : super._();

  @override
  InlineResponse20012 rebuild(
          void Function(InlineResponse20012Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20012Builder toBuilder() =>
      new InlineResponse20012Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20012 &&
        totalCount == other.totalCount &&
        artifacts == other.artifacts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), artifacts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20012')
          ..add('totalCount', totalCount)
          ..add('artifacts', artifacts))
        .toString();
  }
}

class InlineResponse20012Builder
    implements Builder<InlineResponse20012, InlineResponse20012Builder> {
  _$InlineResponse20012 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  ListBuilder<Artifact> _artifacts;
  ListBuilder<Artifact> get artifacts =>
      _$this._artifacts ??= new ListBuilder<Artifact>();
  set artifacts(ListBuilder<Artifact> artifacts) =>
      _$this._artifacts = artifacts;

  InlineResponse20012Builder() {
    InlineResponse20012._initializeBuilder(this);
  }

  InlineResponse20012Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _artifacts = _$v.artifacts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20012 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20012;
  }

  @override
  void update(void Function(InlineResponse20012Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20012 build() {
    _$InlineResponse20012 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20012._(
              totalCount: totalCount, artifacts: _artifacts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'artifacts';
        _artifacts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20012', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
