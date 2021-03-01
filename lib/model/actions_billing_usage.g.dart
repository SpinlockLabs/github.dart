// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actions_billing_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsBillingUsage> _$actionsBillingUsageSerializer =
    new _$ActionsBillingUsageSerializer();

class _$ActionsBillingUsageSerializer
    implements StructuredSerializer<ActionsBillingUsage> {
  @override
  final Iterable<Type> types = const [
    ActionsBillingUsage,
    _$ActionsBillingUsage
  ];
  @override
  final String wireName = 'ActionsBillingUsage';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ActionsBillingUsage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalMinutesUsed != null) {
      result
        ..add('total_minutes_used')
        ..add(serializers.serialize(object.totalMinutesUsed,
            specifiedType: const FullType(int)));
    }
    if (object.totalPaidMinutesUsed != null) {
      result
        ..add('total_paid_minutes_used')
        ..add(serializers.serialize(object.totalPaidMinutesUsed,
            specifiedType: const FullType(int)));
    }
    if (object.includedMinutes != null) {
      result
        ..add('included_minutes')
        ..add(serializers.serialize(object.includedMinutes,
            specifiedType: const FullType(int)));
    }
    if (object.minutesUsedBreakdown != null) {
      result
        ..add('minutes_used_breakdown')
        ..add(serializers.serialize(object.minutesUsedBreakdown,
            specifiedType:
                const FullType(ActionsBillingUsageMinutesUsedBreakdown)));
    }
    return result;
  }

  @override
  ActionsBillingUsage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsBillingUsageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_minutes_used':
          result.totalMinutesUsed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_paid_minutes_used':
          result.totalPaidMinutesUsed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'included_minutes':
          result.includedMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'minutes_used_breakdown':
          result.minutesUsedBreakdown.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ActionsBillingUsageMinutesUsedBreakdown))
              as ActionsBillingUsageMinutesUsedBreakdown);
          break;
      }
    }

    return result.build();
  }
}

class _$ActionsBillingUsage extends ActionsBillingUsage {
  @override
  final int totalMinutesUsed;
  @override
  final int totalPaidMinutesUsed;
  @override
  final int includedMinutes;
  @override
  final ActionsBillingUsageMinutesUsedBreakdown minutesUsedBreakdown;

  factory _$ActionsBillingUsage(
          [void Function(ActionsBillingUsageBuilder) updates]) =>
      (new ActionsBillingUsageBuilder()..update(updates)).build();

  _$ActionsBillingUsage._(
      {this.totalMinutesUsed,
      this.totalPaidMinutesUsed,
      this.includedMinutes,
      this.minutesUsedBreakdown})
      : super._();

  @override
  ActionsBillingUsage rebuild(
          void Function(ActionsBillingUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsBillingUsageBuilder toBuilder() =>
      new ActionsBillingUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsBillingUsage &&
        totalMinutesUsed == other.totalMinutesUsed &&
        totalPaidMinutesUsed == other.totalPaidMinutesUsed &&
        includedMinutes == other.includedMinutes &&
        minutesUsedBreakdown == other.minutesUsedBreakdown;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, totalMinutesUsed.hashCode),
                totalPaidMinutesUsed.hashCode),
            includedMinutes.hashCode),
        minutesUsedBreakdown.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActionsBillingUsage')
          ..add('totalMinutesUsed', totalMinutesUsed)
          ..add('totalPaidMinutesUsed', totalPaidMinutesUsed)
          ..add('includedMinutes', includedMinutes)
          ..add('minutesUsedBreakdown', minutesUsedBreakdown))
        .toString();
  }
}

class ActionsBillingUsageBuilder
    implements Builder<ActionsBillingUsage, ActionsBillingUsageBuilder> {
  _$ActionsBillingUsage _$v;

  int _totalMinutesUsed;
  int get totalMinutesUsed => _$this._totalMinutesUsed;
  set totalMinutesUsed(int totalMinutesUsed) =>
      _$this._totalMinutesUsed = totalMinutesUsed;

  int _totalPaidMinutesUsed;
  int get totalPaidMinutesUsed => _$this._totalPaidMinutesUsed;
  set totalPaidMinutesUsed(int totalPaidMinutesUsed) =>
      _$this._totalPaidMinutesUsed = totalPaidMinutesUsed;

  int _includedMinutes;
  int get includedMinutes => _$this._includedMinutes;
  set includedMinutes(int includedMinutes) =>
      _$this._includedMinutes = includedMinutes;

  ActionsBillingUsageMinutesUsedBreakdownBuilder _minutesUsedBreakdown;
  ActionsBillingUsageMinutesUsedBreakdownBuilder get minutesUsedBreakdown =>
      _$this._minutesUsedBreakdown ??=
          new ActionsBillingUsageMinutesUsedBreakdownBuilder();
  set minutesUsedBreakdown(
          ActionsBillingUsageMinutesUsedBreakdownBuilder
              minutesUsedBreakdown) =>
      _$this._minutesUsedBreakdown = minutesUsedBreakdown;

  ActionsBillingUsageBuilder() {
    ActionsBillingUsage._initializeBuilder(this);
  }

  ActionsBillingUsageBuilder get _$this {
    if (_$v != null) {
      _totalMinutesUsed = _$v.totalMinutesUsed;
      _totalPaidMinutesUsed = _$v.totalPaidMinutesUsed;
      _includedMinutes = _$v.includedMinutes;
      _minutesUsedBreakdown = _$v.minutesUsedBreakdown?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsBillingUsage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActionsBillingUsage;
  }

  @override
  void update(void Function(ActionsBillingUsageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionsBillingUsage build() {
    _$ActionsBillingUsage _$result;
    try {
      _$result = _$v ??
          new _$ActionsBillingUsage._(
              totalMinutesUsed: totalMinutesUsed,
              totalPaidMinutesUsed: totalPaidMinutesUsed,
              includedMinutes: includedMinutes,
              minutesUsedBreakdown: _minutesUsedBreakdown?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'minutesUsedBreakdown';
        _minutesUsedBreakdown?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ActionsBillingUsage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
