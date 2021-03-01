// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actions_billing_usage_minutes_used_breakdown.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsBillingUsageMinutesUsedBreakdown>
    _$actionsBillingUsageMinutesUsedBreakdownSerializer =
    new _$ActionsBillingUsageMinutesUsedBreakdownSerializer();

class _$ActionsBillingUsageMinutesUsedBreakdownSerializer
    implements StructuredSerializer<ActionsBillingUsageMinutesUsedBreakdown> {
  @override
  final Iterable<Type> types = const [
    ActionsBillingUsageMinutesUsedBreakdown,
    _$ActionsBillingUsageMinutesUsedBreakdown
  ];
  @override
  final String wireName = 'ActionsBillingUsageMinutesUsedBreakdown';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ActionsBillingUsageMinutesUsedBreakdown object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.UBUNTU != null) {
      result
        ..add('UBUNTU')
        ..add(serializers.serialize(object.UBUNTU,
            specifiedType: const FullType(int)));
    }
    if (object.MACOS != null) {
      result
        ..add('MACOS')
        ..add(serializers.serialize(object.MACOS,
            specifiedType: const FullType(int)));
    }
    if (object.WINDOWS != null) {
      result
        ..add('WINDOWS')
        ..add(serializers.serialize(object.WINDOWS,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ActionsBillingUsageMinutesUsedBreakdown deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsBillingUsageMinutesUsedBreakdownBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'UBUNTU':
          result.UBUNTU = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'MACOS':
          result.MACOS = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'WINDOWS':
          result.WINDOWS = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ActionsBillingUsageMinutesUsedBreakdown
    extends ActionsBillingUsageMinutesUsedBreakdown {
  @override
  final int UBUNTU;
  @override
  final int MACOS;
  @override
  final int WINDOWS;

  factory _$ActionsBillingUsageMinutesUsedBreakdown(
          [void Function(ActionsBillingUsageMinutesUsedBreakdownBuilder)
              updates]) =>
      (new ActionsBillingUsageMinutesUsedBreakdownBuilder()..update(updates))
          .build();

  _$ActionsBillingUsageMinutesUsedBreakdown._(
      {this.UBUNTU, this.MACOS, this.WINDOWS})
      : super._();

  @override
  ActionsBillingUsageMinutesUsedBreakdown rebuild(
          void Function(ActionsBillingUsageMinutesUsedBreakdownBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsBillingUsageMinutesUsedBreakdownBuilder toBuilder() =>
      new ActionsBillingUsageMinutesUsedBreakdownBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsBillingUsageMinutesUsedBreakdown &&
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
    return (newBuiltValueToStringHelper(
            'ActionsBillingUsageMinutesUsedBreakdown')
          ..add('UBUNTU', UBUNTU)
          ..add('MACOS', MACOS)
          ..add('WINDOWS', WINDOWS))
        .toString();
  }
}

class ActionsBillingUsageMinutesUsedBreakdownBuilder
    implements
        Builder<ActionsBillingUsageMinutesUsedBreakdown,
            ActionsBillingUsageMinutesUsedBreakdownBuilder> {
  _$ActionsBillingUsageMinutesUsedBreakdown _$v;

  int _UBUNTU;
  int get UBUNTU => _$this._UBUNTU;
  set UBUNTU(int UBUNTU) => _$this._UBUNTU = UBUNTU;

  int _MACOS;
  int get MACOS => _$this._MACOS;
  set MACOS(int MACOS) => _$this._MACOS = MACOS;

  int _WINDOWS;
  int get WINDOWS => _$this._WINDOWS;
  set WINDOWS(int WINDOWS) => _$this._WINDOWS = WINDOWS;

  ActionsBillingUsageMinutesUsedBreakdownBuilder() {
    ActionsBillingUsageMinutesUsedBreakdown._initializeBuilder(this);
  }

  ActionsBillingUsageMinutesUsedBreakdownBuilder get _$this {
    if (_$v != null) {
      _UBUNTU = _$v.UBUNTU;
      _MACOS = _$v.MACOS;
      _WINDOWS = _$v.WINDOWS;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsBillingUsageMinutesUsedBreakdown other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActionsBillingUsageMinutesUsedBreakdown;
  }

  @override
  void update(
      void Function(ActionsBillingUsageMinutesUsedBreakdownBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionsBillingUsageMinutesUsedBreakdown build() {
    final _$result = _$v ??
        new _$ActionsBillingUsageMinutesUsedBreakdown._(
            UBUNTU: UBUNTU, MACOS: MACOS, WINDOWS: WINDOWS);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
