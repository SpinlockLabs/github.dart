// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_run_usage_billable_ubuntu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowRunUsageBillableUBUNTU>
    _$workflowRunUsageBillableUBUNTUSerializer =
    new _$WorkflowRunUsageBillableUBUNTUSerializer();

class _$WorkflowRunUsageBillableUBUNTUSerializer
    implements StructuredSerializer<WorkflowRunUsageBillableUBUNTU> {
  @override
  final Iterable<Type> types = const [
    WorkflowRunUsageBillableUBUNTU,
    _$WorkflowRunUsageBillableUBUNTU
  ];
  @override
  final String wireName = 'WorkflowRunUsageBillableUBUNTU';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WorkflowRunUsageBillableUBUNTU object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalMs != null) {
      result
        ..add('total_ms')
        ..add(serializers.serialize(object.totalMs,
            specifiedType: const FullType(int)));
    }
    if (object.jobs != null) {
      result
        ..add('jobs')
        ..add(serializers.serialize(object.jobs,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WorkflowRunUsageBillableUBUNTU deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowRunUsageBillableUBUNTUBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_ms':
          result.totalMs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'jobs':
          result.jobs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowRunUsageBillableUBUNTU extends WorkflowRunUsageBillableUBUNTU {
  @override
  final int totalMs;
  @override
  final int jobs;

  factory _$WorkflowRunUsageBillableUBUNTU(
          [void Function(WorkflowRunUsageBillableUBUNTUBuilder) updates]) =>
      (new WorkflowRunUsageBillableUBUNTUBuilder()..update(updates)).build();

  _$WorkflowRunUsageBillableUBUNTU._({this.totalMs, this.jobs}) : super._();

  @override
  WorkflowRunUsageBillableUBUNTU rebuild(
          void Function(WorkflowRunUsageBillableUBUNTUBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowRunUsageBillableUBUNTUBuilder toBuilder() =>
      new WorkflowRunUsageBillableUBUNTUBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowRunUsageBillableUBUNTU &&
        totalMs == other.totalMs &&
        jobs == other.jobs;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalMs.hashCode), jobs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkflowRunUsageBillableUBUNTU')
          ..add('totalMs', totalMs)
          ..add('jobs', jobs))
        .toString();
  }
}

class WorkflowRunUsageBillableUBUNTUBuilder
    implements
        Builder<WorkflowRunUsageBillableUBUNTU,
            WorkflowRunUsageBillableUBUNTUBuilder> {
  _$WorkflowRunUsageBillableUBUNTU _$v;

  int _totalMs;
  int get totalMs => _$this._totalMs;
  set totalMs(int totalMs) => _$this._totalMs = totalMs;

  int _jobs;
  int get jobs => _$this._jobs;
  set jobs(int jobs) => _$this._jobs = jobs;

  WorkflowRunUsageBillableUBUNTUBuilder() {
    WorkflowRunUsageBillableUBUNTU._initializeBuilder(this);
  }

  WorkflowRunUsageBillableUBUNTUBuilder get _$this {
    if (_$v != null) {
      _totalMs = _$v.totalMs;
      _jobs = _$v.jobs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowRunUsageBillableUBUNTU other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowRunUsageBillableUBUNTU;
  }

  @override
  void update(void Function(WorkflowRunUsageBillableUBUNTUBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowRunUsageBillableUBUNTU build() {
    final _$result = _$v ??
        new _$WorkflowRunUsageBillableUBUNTU._(totalMs: totalMs, jobs: jobs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
