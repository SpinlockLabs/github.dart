// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_usage_billable_ubuntu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowUsageBillableUBUNTU>
    _$workflowUsageBillableUBUNTUSerializer =
    new _$WorkflowUsageBillableUBUNTUSerializer();

class _$WorkflowUsageBillableUBUNTUSerializer
    implements StructuredSerializer<WorkflowUsageBillableUBUNTU> {
  @override
  final Iterable<Type> types = const [
    WorkflowUsageBillableUBUNTU,
    _$WorkflowUsageBillableUBUNTU
  ];
  @override
  final String wireName = 'WorkflowUsageBillableUBUNTU';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WorkflowUsageBillableUBUNTU object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalMs != null) {
      result
        ..add('total_ms')
        ..add(serializers.serialize(object.totalMs,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WorkflowUsageBillableUBUNTU deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowUsageBillableUBUNTUBuilder();

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
      }
    }

    return result.build();
  }
}

class _$WorkflowUsageBillableUBUNTU extends WorkflowUsageBillableUBUNTU {
  @override
  final int totalMs;

  factory _$WorkflowUsageBillableUBUNTU(
          [void Function(WorkflowUsageBillableUBUNTUBuilder) updates]) =>
      (new WorkflowUsageBillableUBUNTUBuilder()..update(updates)).build();

  _$WorkflowUsageBillableUBUNTU._({this.totalMs}) : super._();

  @override
  WorkflowUsageBillableUBUNTU rebuild(
          void Function(WorkflowUsageBillableUBUNTUBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowUsageBillableUBUNTUBuilder toBuilder() =>
      new WorkflowUsageBillableUBUNTUBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowUsageBillableUBUNTU && totalMs == other.totalMs;
  }

  @override
  int get hashCode {
    return $jf($jc(0, totalMs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkflowUsageBillableUBUNTU')
          ..add('totalMs', totalMs))
        .toString();
  }
}

class WorkflowUsageBillableUBUNTUBuilder
    implements
        Builder<WorkflowUsageBillableUBUNTU,
            WorkflowUsageBillableUBUNTUBuilder> {
  _$WorkflowUsageBillableUBUNTU _$v;

  int _totalMs;
  int get totalMs => _$this._totalMs;
  set totalMs(int totalMs) => _$this._totalMs = totalMs;

  WorkflowUsageBillableUBUNTUBuilder() {
    WorkflowUsageBillableUBUNTU._initializeBuilder(this);
  }

  WorkflowUsageBillableUBUNTUBuilder get _$this {
    if (_$v != null) {
      _totalMs = _$v.totalMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowUsageBillableUBUNTU other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowUsageBillableUBUNTU;
  }

  @override
  void update(void Function(WorkflowUsageBillableUBUNTUBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowUsageBillableUBUNTU build() {
    final _$result =
        _$v ?? new _$WorkflowUsageBillableUBUNTU._(totalMs: totalMs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
