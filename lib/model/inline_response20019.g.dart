// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20019.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20019> _$inlineResponse20019Serializer =
    new _$InlineResponse20019Serializer();

class _$InlineResponse20019Serializer
    implements StructuredSerializer<InlineResponse20019> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20019,
    _$InlineResponse20019
  ];
  @override
  final String wireName = 'InlineResponse20019';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20019 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.environments != null) {
      result
        ..add('environments')
        ..add(serializers.serialize(object.environments,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Environment)])));
    }
    return result;
  }

  @override
  InlineResponse20019 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20019Builder();

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
        case 'environments':
          result.environments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Environment)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20019 extends InlineResponse20019 {
  @override
  final int totalCount;
  @override
  final BuiltList<Environment> environments;

  factory _$InlineResponse20019(
          [void Function(InlineResponse20019Builder) updates]) =>
      (new InlineResponse20019Builder()..update(updates)).build();

  _$InlineResponse20019._({this.totalCount, this.environments}) : super._();

  @override
  InlineResponse20019 rebuild(
          void Function(InlineResponse20019Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20019Builder toBuilder() =>
      new InlineResponse20019Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20019 &&
        totalCount == other.totalCount &&
        environments == other.environments;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), environments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20019')
          ..add('totalCount', totalCount)
          ..add('environments', environments))
        .toString();
  }
}

class InlineResponse20019Builder
    implements Builder<InlineResponse20019, InlineResponse20019Builder> {
  _$InlineResponse20019 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  ListBuilder<Environment> _environments;
  ListBuilder<Environment> get environments =>
      _$this._environments ??= new ListBuilder<Environment>();
  set environments(ListBuilder<Environment> environments) =>
      _$this._environments = environments;

  InlineResponse20019Builder() {
    InlineResponse20019._initializeBuilder(this);
  }

  InlineResponse20019Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _environments = _$v.environments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20019 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20019;
  }

  @override
  void update(void Function(InlineResponse20019Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20019 build() {
    _$InlineResponse20019 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20019._(
              totalCount: totalCount, environments: _environments?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'environments';
        _environments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20019', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
