// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_run_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowRunUsage> _$workflowRunUsageSerializer =
    new _$WorkflowRunUsageSerializer();

class _$WorkflowRunUsageSerializer
    implements StructuredSerializer<WorkflowRunUsage> {
  @override
  final Iterable<Type> types = const [WorkflowRunUsage, _$WorkflowRunUsage];
  @override
  final String wireName = 'WorkflowRunUsage';

  @override
  Iterable<Object> serialize(Serializers serializers, WorkflowRunUsage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.billable != null) {
      result
        ..add('billable')
        ..add(serializers.serialize(object.billable,
            specifiedType: const FullType(WorkflowRunUsageBillable)));
    }
    if (object.runDurationMs != null) {
      result
        ..add('run_duration_ms')
        ..add(serializers.serialize(object.runDurationMs,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WorkflowRunUsage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowRunUsageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'billable':
          result.billable.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowRunUsageBillable))
              as WorkflowRunUsageBillable);
          break;
        case 'run_duration_ms':
          result.runDurationMs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowRunUsage extends WorkflowRunUsage {
  @override
  final WorkflowRunUsageBillable billable;
  @override
  final int runDurationMs;

  factory _$WorkflowRunUsage(
          [void Function(WorkflowRunUsageBuilder) updates]) =>
      (new WorkflowRunUsageBuilder()..update(updates)).build();

  _$WorkflowRunUsage._({this.billable, this.runDurationMs}) : super._();

  @override
  WorkflowRunUsage rebuild(void Function(WorkflowRunUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowRunUsageBuilder toBuilder() =>
      new WorkflowRunUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowRunUsage &&
        billable == other.billable &&
        runDurationMs == other.runDurationMs;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, billable.hashCode), runDurationMs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkflowRunUsage')
          ..add('billable', billable)
          ..add('runDurationMs', runDurationMs))
        .toString();
  }
}

class WorkflowRunUsageBuilder
    implements Builder<WorkflowRunUsage, WorkflowRunUsageBuilder> {
  _$WorkflowRunUsage _$v;

  WorkflowRunUsageBillableBuilder _billable;
  WorkflowRunUsageBillableBuilder get billable =>
      _$this._billable ??= new WorkflowRunUsageBillableBuilder();
  set billable(WorkflowRunUsageBillableBuilder billable) =>
      _$this._billable = billable;

  int _runDurationMs;
  int get runDurationMs => _$this._runDurationMs;
  set runDurationMs(int runDurationMs) => _$this._runDurationMs = runDurationMs;

  WorkflowRunUsageBuilder() {
    WorkflowRunUsage._initializeBuilder(this);
  }

  WorkflowRunUsageBuilder get _$this {
    if (_$v != null) {
      _billable = _$v.billable?.toBuilder();
      _runDurationMs = _$v.runDurationMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowRunUsage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowRunUsage;
  }

  @override
  void update(void Function(WorkflowRunUsageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowRunUsage build() {
    _$WorkflowRunUsage _$result;
    try {
      _$result = _$v ??
          new _$WorkflowRunUsage._(
              billable: _billable?.build(), runDurationMs: runDurationMs);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'billable';
        _billable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WorkflowRunUsage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
