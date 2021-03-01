// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_usage_billable.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowUsageBillable> _$workflowUsageBillableSerializer =
    new _$WorkflowUsageBillableSerializer();

class _$WorkflowUsageBillableSerializer
    implements StructuredSerializer<WorkflowUsageBillable> {
  @override
  final Iterable<Type> types = const [
    WorkflowUsageBillable,
    _$WorkflowUsageBillable
  ];
  @override
  final String wireName = 'WorkflowUsageBillable';

  @override
  Iterable<Object> serialize(
      Serializers serializers, WorkflowUsageBillable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.UBUNTU != null) {
      result
        ..add('UBUNTU')
        ..add(serializers.serialize(object.UBUNTU,
            specifiedType: const FullType(WorkflowUsageBillableUBUNTU)));
    }
    if (object.MACOS != null) {
      result
        ..add('MACOS')
        ..add(serializers.serialize(object.MACOS,
            specifiedType: const FullType(WorkflowUsageBillableUBUNTU)));
    }
    if (object.WINDOWS != null) {
      result
        ..add('WINDOWS')
        ..add(serializers.serialize(object.WINDOWS,
            specifiedType: const FullType(WorkflowUsageBillableUBUNTU)));
    }
    return result;
  }

  @override
  WorkflowUsageBillable deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowUsageBillableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'UBUNTU':
          result.UBUNTU.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowUsageBillableUBUNTU))
              as WorkflowUsageBillableUBUNTU);
          break;
        case 'MACOS':
          result.MACOS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowUsageBillableUBUNTU))
              as WorkflowUsageBillableUBUNTU);
          break;
        case 'WINDOWS':
          result.WINDOWS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowUsageBillableUBUNTU))
              as WorkflowUsageBillableUBUNTU);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowUsageBillable extends WorkflowUsageBillable {
  @override
  final WorkflowUsageBillableUBUNTU UBUNTU;
  @override
  final WorkflowUsageBillableUBUNTU MACOS;
  @override
  final WorkflowUsageBillableUBUNTU WINDOWS;

  factory _$WorkflowUsageBillable(
          [void Function(WorkflowUsageBillableBuilder) updates]) =>
      (new WorkflowUsageBillableBuilder()..update(updates)).build();

  _$WorkflowUsageBillable._({this.UBUNTU, this.MACOS, this.WINDOWS})
      : super._();

  @override
  WorkflowUsageBillable rebuild(
          void Function(WorkflowUsageBillableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowUsageBillableBuilder toBuilder() =>
      new WorkflowUsageBillableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowUsageBillable &&
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
    return (newBuiltValueToStringHelper('WorkflowUsageBillable')
          ..add('UBUNTU', UBUNTU)
          ..add('MACOS', MACOS)
          ..add('WINDOWS', WINDOWS))
        .toString();
  }
}

class WorkflowUsageBillableBuilder
    implements Builder<WorkflowUsageBillable, WorkflowUsageBillableBuilder> {
  _$WorkflowUsageBillable _$v;

  WorkflowUsageBillableUBUNTUBuilder _UBUNTU;
  WorkflowUsageBillableUBUNTUBuilder get UBUNTU =>
      _$this._UBUNTU ??= new WorkflowUsageBillableUBUNTUBuilder();
  set UBUNTU(WorkflowUsageBillableUBUNTUBuilder UBUNTU) =>
      _$this._UBUNTU = UBUNTU;

  WorkflowUsageBillableUBUNTUBuilder _MACOS;
  WorkflowUsageBillableUBUNTUBuilder get MACOS =>
      _$this._MACOS ??= new WorkflowUsageBillableUBUNTUBuilder();
  set MACOS(WorkflowUsageBillableUBUNTUBuilder MACOS) => _$this._MACOS = MACOS;

  WorkflowUsageBillableUBUNTUBuilder _WINDOWS;
  WorkflowUsageBillableUBUNTUBuilder get WINDOWS =>
      _$this._WINDOWS ??= new WorkflowUsageBillableUBUNTUBuilder();
  set WINDOWS(WorkflowUsageBillableUBUNTUBuilder WINDOWS) =>
      _$this._WINDOWS = WINDOWS;

  WorkflowUsageBillableBuilder() {
    WorkflowUsageBillable._initializeBuilder(this);
  }

  WorkflowUsageBillableBuilder get _$this {
    if (_$v != null) {
      _UBUNTU = _$v.UBUNTU?.toBuilder();
      _MACOS = _$v.MACOS?.toBuilder();
      _WINDOWS = _$v.WINDOWS?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowUsageBillable other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowUsageBillable;
  }

  @override
  void update(void Function(WorkflowUsageBillableBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowUsageBillable build() {
    _$WorkflowUsageBillable _$result;
    try {
      _$result = _$v ??
          new _$WorkflowUsageBillable._(
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
            'WorkflowUsageBillable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
