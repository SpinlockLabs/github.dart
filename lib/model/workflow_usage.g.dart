// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowUsage> _$workflowUsageSerializer =
    new _$WorkflowUsageSerializer();

class _$WorkflowUsageSerializer implements StructuredSerializer<WorkflowUsage> {
  @override
  final Iterable<Type> types = const [WorkflowUsage, _$WorkflowUsage];
  @override
  final String wireName = 'WorkflowUsage';

  @override
  Iterable<Object> serialize(Serializers serializers, WorkflowUsage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.billable != null) {
      result
        ..add('billable')
        ..add(serializers.serialize(object.billable,
            specifiedType: const FullType(WorkflowUsageBillable)));
    }
    return result;
  }

  @override
  WorkflowUsage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowUsageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'billable':
          result.billable.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowUsageBillable))
              as WorkflowUsageBillable);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowUsage extends WorkflowUsage {
  @override
  final WorkflowUsageBillable billable;

  factory _$WorkflowUsage([void Function(WorkflowUsageBuilder) updates]) =>
      (new WorkflowUsageBuilder()..update(updates)).build();

  _$WorkflowUsage._({this.billable}) : super._();

  @override
  WorkflowUsage rebuild(void Function(WorkflowUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowUsageBuilder toBuilder() => new WorkflowUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowUsage && billable == other.billable;
  }

  @override
  int get hashCode {
    return $jf($jc(0, billable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkflowUsage')
          ..add('billable', billable))
        .toString();
  }
}

class WorkflowUsageBuilder
    implements Builder<WorkflowUsage, WorkflowUsageBuilder> {
  _$WorkflowUsage _$v;

  WorkflowUsageBillableBuilder _billable;
  WorkflowUsageBillableBuilder get billable =>
      _$this._billable ??= new WorkflowUsageBillableBuilder();
  set billable(WorkflowUsageBillableBuilder billable) =>
      _$this._billable = billable;

  WorkflowUsageBuilder() {
    WorkflowUsage._initializeBuilder(this);
  }

  WorkflowUsageBuilder get _$this {
    if (_$v != null) {
      _billable = _$v.billable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowUsage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowUsage;
  }

  @override
  void update(void Function(WorkflowUsageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowUsage build() {
    _$WorkflowUsage _$result;
    try {
      _$result = _$v ?? new _$WorkflowUsage._(billable: _billable?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'billable';
        _billable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WorkflowUsage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
