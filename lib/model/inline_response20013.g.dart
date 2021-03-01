// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20013.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20013> _$inlineResponse20013Serializer =
    new _$InlineResponse20013Serializer();

class _$InlineResponse20013Serializer
    implements StructuredSerializer<InlineResponse20013> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20013,
    _$InlineResponse20013
  ];
  @override
  final String wireName = 'InlineResponse20013';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20013 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.workflowRuns != null) {
      result
        ..add('workflow_runs')
        ..add(serializers.serialize(object.workflowRuns,
            specifiedType: const FullType(
                BuiltList, const [const FullType(WorkflowRun)])));
    }
    return result;
  }

  @override
  InlineResponse20013 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20013Builder();

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
        case 'workflow_runs':
          result.workflowRuns.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WorkflowRun)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20013 extends InlineResponse20013 {
  @override
  final int totalCount;
  @override
  final BuiltList<WorkflowRun> workflowRuns;

  factory _$InlineResponse20013(
          [void Function(InlineResponse20013Builder) updates]) =>
      (new InlineResponse20013Builder()..update(updates)).build();

  _$InlineResponse20013._({this.totalCount, this.workflowRuns}) : super._();

  @override
  InlineResponse20013 rebuild(
          void Function(InlineResponse20013Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20013Builder toBuilder() =>
      new InlineResponse20013Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20013 &&
        totalCount == other.totalCount &&
        workflowRuns == other.workflowRuns;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), workflowRuns.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20013')
          ..add('totalCount', totalCount)
          ..add('workflowRuns', workflowRuns))
        .toString();
  }
}

class InlineResponse20013Builder
    implements Builder<InlineResponse20013, InlineResponse20013Builder> {
  _$InlineResponse20013 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  ListBuilder<WorkflowRun> _workflowRuns;
  ListBuilder<WorkflowRun> get workflowRuns =>
      _$this._workflowRuns ??= new ListBuilder<WorkflowRun>();
  set workflowRuns(ListBuilder<WorkflowRun> workflowRuns) =>
      _$this._workflowRuns = workflowRuns;

  InlineResponse20013Builder() {
    InlineResponse20013._initializeBuilder(this);
  }

  InlineResponse20013Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _workflowRuns = _$v.workflowRuns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20013 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20013;
  }

  @override
  void update(void Function(InlineResponse20013Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20013 build() {
    _$InlineResponse20013 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20013._(
              totalCount: totalCount, workflowRuns: _workflowRuns?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'workflowRuns';
        _workflowRuns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20013', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
