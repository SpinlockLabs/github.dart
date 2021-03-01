// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20018.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20018> _$inlineResponse20018Serializer =
    new _$InlineResponse20018Serializer();

class _$InlineResponse20018Serializer
    implements StructuredSerializer<InlineResponse20018> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20018,
    _$InlineResponse20018
  ];
  @override
  final String wireName = 'InlineResponse20018';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20018 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.checkSuites != null) {
      result
        ..add('check_suites')
        ..add(serializers.serialize(object.checkSuites,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CheckSuite)])));
    }
    return result;
  }

  @override
  InlineResponse20018 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20018Builder();

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
        case 'check_suites':
          result.checkSuites.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CheckSuite)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20018 extends InlineResponse20018 {
  @override
  final int totalCount;
  @override
  final BuiltList<CheckSuite> checkSuites;

  factory _$InlineResponse20018(
          [void Function(InlineResponse20018Builder) updates]) =>
      (new InlineResponse20018Builder()..update(updates)).build();

  _$InlineResponse20018._({this.totalCount, this.checkSuites}) : super._();

  @override
  InlineResponse20018 rebuild(
          void Function(InlineResponse20018Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20018Builder toBuilder() =>
      new InlineResponse20018Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20018 &&
        totalCount == other.totalCount &&
        checkSuites == other.checkSuites;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), checkSuites.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20018')
          ..add('totalCount', totalCount)
          ..add('checkSuites', checkSuites))
        .toString();
  }
}

class InlineResponse20018Builder
    implements Builder<InlineResponse20018, InlineResponse20018Builder> {
  _$InlineResponse20018 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  ListBuilder<CheckSuite> _checkSuites;
  ListBuilder<CheckSuite> get checkSuites =>
      _$this._checkSuites ??= new ListBuilder<CheckSuite>();
  set checkSuites(ListBuilder<CheckSuite> checkSuites) =>
      _$this._checkSuites = checkSuites;

  InlineResponse20018Builder() {
    InlineResponse20018._initializeBuilder(this);
  }

  InlineResponse20018Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _checkSuites = _$v.checkSuites?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20018 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20018;
  }

  @override
  void update(void Function(InlineResponse20018Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20018 build() {
    _$InlineResponse20018 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20018._(
              totalCount: totalCount, checkSuites: _checkSuites?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'checkSuites';
        _checkSuites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20018', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
