// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'combined_billing_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CombinedBillingUsage> _$combinedBillingUsageSerializer =
    new _$CombinedBillingUsageSerializer();

class _$CombinedBillingUsageSerializer
    implements StructuredSerializer<CombinedBillingUsage> {
  @override
  final Iterable<Type> types = const [
    CombinedBillingUsage,
    _$CombinedBillingUsage
  ];
  @override
  final String wireName = 'CombinedBillingUsage';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CombinedBillingUsage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.daysLeftInBillingCycle != null) {
      result
        ..add('days_left_in_billing_cycle')
        ..add(serializers.serialize(object.daysLeftInBillingCycle,
            specifiedType: const FullType(int)));
    }
    if (object.estimatedPaidStorageForMonth != null) {
      result
        ..add('estimated_paid_storage_for_month')
        ..add(serializers.serialize(object.estimatedPaidStorageForMonth,
            specifiedType: const FullType(int)));
    }
    if (object.estimatedStorageForMonth != null) {
      result
        ..add('estimated_storage_for_month')
        ..add(serializers.serialize(object.estimatedStorageForMonth,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CombinedBillingUsage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CombinedBillingUsageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'days_left_in_billing_cycle':
          result.daysLeftInBillingCycle = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'estimated_paid_storage_for_month':
          result.estimatedPaidStorageForMonth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'estimated_storage_for_month':
          result.estimatedStorageForMonth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CombinedBillingUsage extends CombinedBillingUsage {
  @override
  final int daysLeftInBillingCycle;
  @override
  final int estimatedPaidStorageForMonth;
  @override
  final int estimatedStorageForMonth;

  factory _$CombinedBillingUsage(
          [void Function(CombinedBillingUsageBuilder) updates]) =>
      (new CombinedBillingUsageBuilder()..update(updates)).build();

  _$CombinedBillingUsage._(
      {this.daysLeftInBillingCycle,
      this.estimatedPaidStorageForMonth,
      this.estimatedStorageForMonth})
      : super._();

  @override
  CombinedBillingUsage rebuild(
          void Function(CombinedBillingUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CombinedBillingUsageBuilder toBuilder() =>
      new CombinedBillingUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CombinedBillingUsage &&
        daysLeftInBillingCycle == other.daysLeftInBillingCycle &&
        estimatedPaidStorageForMonth == other.estimatedPaidStorageForMonth &&
        estimatedStorageForMonth == other.estimatedStorageForMonth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, daysLeftInBillingCycle.hashCode),
            estimatedPaidStorageForMonth.hashCode),
        estimatedStorageForMonth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CombinedBillingUsage')
          ..add('daysLeftInBillingCycle', daysLeftInBillingCycle)
          ..add('estimatedPaidStorageForMonth', estimatedPaidStorageForMonth)
          ..add('estimatedStorageForMonth', estimatedStorageForMonth))
        .toString();
  }
}

class CombinedBillingUsageBuilder
    implements Builder<CombinedBillingUsage, CombinedBillingUsageBuilder> {
  _$CombinedBillingUsage _$v;

  int _daysLeftInBillingCycle;
  int get daysLeftInBillingCycle => _$this._daysLeftInBillingCycle;
  set daysLeftInBillingCycle(int daysLeftInBillingCycle) =>
      _$this._daysLeftInBillingCycle = daysLeftInBillingCycle;

  int _estimatedPaidStorageForMonth;
  int get estimatedPaidStorageForMonth => _$this._estimatedPaidStorageForMonth;
  set estimatedPaidStorageForMonth(int estimatedPaidStorageForMonth) =>
      _$this._estimatedPaidStorageForMonth = estimatedPaidStorageForMonth;

  int _estimatedStorageForMonth;
  int get estimatedStorageForMonth => _$this._estimatedStorageForMonth;
  set estimatedStorageForMonth(int estimatedStorageForMonth) =>
      _$this._estimatedStorageForMonth = estimatedStorageForMonth;

  CombinedBillingUsageBuilder() {
    CombinedBillingUsage._initializeBuilder(this);
  }

  CombinedBillingUsageBuilder get _$this {
    if (_$v != null) {
      _daysLeftInBillingCycle = _$v.daysLeftInBillingCycle;
      _estimatedPaidStorageForMonth = _$v.estimatedPaidStorageForMonth;
      _estimatedStorageForMonth = _$v.estimatedStorageForMonth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CombinedBillingUsage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CombinedBillingUsage;
  }

  @override
  void update(void Function(CombinedBillingUsageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CombinedBillingUsage build() {
    final _$result = _$v ??
        new _$CombinedBillingUsage._(
            daysLeftInBillingCycle: daysLeftInBillingCycle,
            estimatedPaidStorageForMonth: estimatedPaidStorageForMonth,
            estimatedStorageForMonth: estimatedStorageForMonth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
