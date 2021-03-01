// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_run_usage_billable.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowRunUsageBillable> _$workflowRunUsageBillableSerializer =
    new _$WorkflowRunUsageBillableSerializer();

class _$WorkflowRunUsageBillableSerializer
    implements StructuredSerializer<WorkflowRunUsageBillable> {
  @override
  final Iterable<Type> types = const [
    WorkflowRunUsageBillable,
    _$WorkflowRunUsageBillable
  ];
  @override
  final String wireName = 'WorkflowRunUsageBillable';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WorkflowRunUsageBillable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.UBUNTU != null) {
      result
        ..add('UBUNTU')
        ..add(serializers.serialize(object.UBUNTU,
            specifiedType: const FullType(WorkflowRunUsageBillableUBUNTU)));
    }
    if (object.MACOS != null) {
      result
        ..add('MACOS')
        ..add(serializers.serialize(object.MACOS,
            specifiedType: const FullType(WorkflowRunUsageBillableUBUNTU)));
    }
    if (object.WINDOWS != null) {
      result
        ..add('WINDOWS')
        ..add(serializers.serialize(object.WINDOWS,
            specifiedType: const FullType(WorkflowRunUsageBillableUBUNTU)));
    }
    return result;
  }

  @override
  WorkflowRunUsageBillable deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowRunUsageBillableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'UBUNTU':
          result.UBUNTU.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowRunUsageBillableUBUNTU))
              as WorkflowRunUsageBillableUBUNTU);
          break;
        case 'MACOS':
          result.MACOS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowRunUsageBillableUBUNTU))
              as WorkflowRunUsageBillableUBUNTU);
          break;
        case 'WINDOWS':
          result.WINDOWS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowRunUsageBillableUBUNTU))
              as WorkflowRunUsageBillableUBUNTU);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowRunUsageBillable extends WorkflowRunUsageBillable {
  @override
  final WorkflowRunUsageBillableUBUNTU UBUNTU;
  @override
  final WorkflowRunUsageBillableUBUNTU MACOS;
  @override
  final WorkflowRunUsageBillableUBUNTU WINDOWS;

  factory _$WorkflowRunUsageBillable(
          [void Function(WorkflowRunUsageBillableBuilder) updates]) =>
      (new WorkflowRunUsageBillableBuilder()..update(updates)).build();

  _$WorkflowRunUsageBillable._({this.UBUNTU, this.MACOS, this.WINDOWS})
      : super._();

  @override
  WorkflowRunUsageBillable rebuild(
          void Function(WorkflowRunUsageBillableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowRunUsageBillableBuilder toBuilder() =>
      new WorkflowRunUsageBillableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowRunUsageBillable &&
        UBUNTU == other.UBUNTU &&
        MACOS == other.MACOS &&
        WINDOWS == other.WINDOWS;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, UBUNTU.hashCode), MACOS.hashCode), WINDOWS.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkflowRunUsageBillable')
          ..add('UBUNTU', UBUNTU)
          ..add('MACOS', MACOS)
          ..add('WINDOWS', WINDOWS))
        .toString();
  }
}

class WorkflowRunUsageBillableBuilder
    implements
        Builder<WorkflowRunUsageBillable, WorkflowRunUsageBillableBuilder> {
  _$WorkflowRunUsageBillable _$v;

  WorkflowRunUsageBillableUBUNTUBuilder _UBUNTU;
  WorkflowRunUsageBillableUBUNTUBuilder get UBUNTU =>
      _$this._UBUNTU ??= new WorkflowRunUsageBillableUBUNTUBuilder();
  set UBUNTU(WorkflowRunUsageBillableUBUNTUBuilder UBUNTU) =>
      _$this._UBUNTU = UBUNTU;

  WorkflowRunUsageBillableUBUNTUBuilder _MACOS;
  WorkflowRunUsageBillableUBUNTUBuilder get MACOS =>
      _$this._MACOS ??= new WorkflowRunUsageBillableUBUNTUBuilder();
  set MACOS(WorkflowRunUsageBillableUBUNTUBuilder MACOS) =>
      _$this._MACOS = MACOS;

  WorkflowRunUsageBillableUBUNTUBuilder _WINDOWS;
  WorkflowRunUsageBillableUBUNTUBuilder get WINDOWS =>
      _$this._WINDOWS ??= new WorkflowRunUsageBillableUBUNTUBuilder();
  set WINDOWS(WorkflowRunUsageBillableUBUNTUBuilder WINDOWS) =>
      _$this._WINDOWS = WINDOWS;

  WorkflowRunUsageBillableBuilder() {
    WorkflowRunUsageBillable._initializeBuilder(this);
  }

  WorkflowRunUsageBillableBuilder get _$this {
    if (_$v != null) {
      _UBUNTU = _$v.UBUNTU?.toBuilder();
      _MACOS = _$v.MACOS?.toBuilder();
      _WINDOWS = _$v.WINDOWS?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowRunUsageBillable other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowRunUsageBillable;
  }

  @override
  void update(void Function(WorkflowRunUsageBillableBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowRunUsageBillable build() {
    _$WorkflowRunUsageBillable _$result;
    try {
      _$result = _$v ??
          new _$WorkflowRunUsageBillable._(
              UBUNTU: _UBUNTU?.build(),
              MACOS: _MACOS?.build(),
              WINDOWS: _WINDOWS?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'UBUNTU';
        _UBUNTU?.build();
        _$failedField = 'MACOS';
        _MACOS?.build();
        _$failedField = 'WINDOWS';
        _WINDOWS?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WorkflowRunUsageBillable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
