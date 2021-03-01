// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'packages_billing_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PackagesBillingUsage> _$packagesBillingUsageSerializer =
    new _$PackagesBillingUsageSerializer();

class _$PackagesBillingUsageSerializer
    implements StructuredSerializer<PackagesBillingUsage> {
  @override
  final Iterable<Type> types = const [
    PackagesBillingUsage,
    _$PackagesBillingUsage
  ];
  @override
  final String wireName = 'PackagesBillingUsage';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PackagesBillingUsage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalGigabytesBandwidthUsed != null) {
      result
        ..add('total_gigabytes_bandwidth_used')
        ..add(serializers.serialize(object.totalGigabytesBandwidthUsed,
            specifiedType: const FullType(int)));
    }
    if (object.totalPaidGigabytesBandwidthUsed != null) {
      result
        ..add('total_paid_gigabytes_bandwidth_used')
        ..add(serializers.serialize(object.totalPaidGigabytesBandwidthUsed,
            specifiedType: const FullType(int)));
    }
    if (object.includedGigabytesBandwidth != null) {
      result
        ..add('included_gigabytes_bandwidth')
        ..add(serializers.serialize(object.includedGigabytesBandwidth,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PackagesBillingUsage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackagesBillingUsageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_gigabytes_bandwidth_used':
          result.totalGigabytesBandwidthUsed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_paid_gigabytes_bandwidth_used':
          result.totalPaidGigabytesBandwidthUsed = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'included_gigabytes_bandwidth':
          result.includedGigabytesBandwidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PackagesBillingUsage extends PackagesBillingUsage {
  @override
  final int totalGigabytesBandwidthUsed;
  @override
  final int totalPaidGigabytesBandwidthUsed;
  @override
  final int includedGigabytesBandwidth;

  factory _$PackagesBillingUsage(
          [void Function(PackagesBillingUsageBuilder) updates]) =>
      (new PackagesBillingUsageBuilder()..update(updates)).build();

  _$PackagesBillingUsage._(
      {this.totalGigabytesBandwidthUsed,
      this.totalPaidGigabytesBandwidthUsed,
      this.includedGigabytesBandwidth})
      : super._();

  @override
  PackagesBillingUsage rebuild(
          void Function(PackagesBillingUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackagesBillingUsageBuilder toBuilder() =>
      new PackagesBillingUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackagesBillingUsage &&
        totalGigabytesBandwidthUsed == other.totalGigabytesBandwidthUsed &&
        totalPaidGigabytesBandwidthUsed ==
            other.totalPaidGigabytesBandwidthUsed &&
        includedGigabytesBandwidth == other.includedGigabytesBandwidth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, totalGigabytesBandwidthUsed.hashCode),
            totalPaidGigabytesBandwidthUsed.hashCode),
        includedGigabytesBandwidth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackagesBillingUsage')
          ..add('totalGigabytesBandwidthUsed', totalGigabytesBandwidthUsed)
          ..add('totalPaidGigabytesBandwidthUsed',
              totalPaidGigabytesBandwidthUsed)
          ..add('includedGigabytesBandwidth', includedGigabytesBandwidth))
        .toString();
  }
}

class PackagesBillingUsageBuilder
    implements Builder<PackagesBillingUsage, PackagesBillingUsageBuilder> {
  _$PackagesBillingUsage _$v;

  int _totalGigabytesBandwidthUsed;
  int get totalGigabytesBandwidthUsed => _$this._totalGigabytesBandwidthUsed;
  set totalGigabytesBandwidthUsed(int totalGigabytesBandwidthUsed) =>
      _$this._totalGigabytesBandwidthUsed = totalGigabytesBandwidthUsed;

  int _totalPaidGigabytesBandwidthUsed;
  int get totalPaidGigabytesBandwidthUsed =>
      _$this._totalPaidGigabytesBandwidthUsed;
  set totalPaidGigabytesBandwidthUsed(int totalPaidGigabytesBandwidthUsed) =>
      _$this._totalPaidGigabytesBandwidthUsed = totalPaidGigabytesBandwidthUsed;

  int _includedGigabytesBandwidth;
  int get includedGigabytesBandwidth => _$this._includedGigabytesBandwidth;
  set includedGigabytesBandwidth(int includedGigabytesBandwidth) =>
      _$this._includedGigabytesBandwidth = includedGigabytesBandwidth;

  PackagesBillingUsageBuilder() {
    PackagesBillingUsage._initializeBuilder(this);
  }

  PackagesBillingUsageBuilder get _$this {
    if (_$v != null) {
      _totalGigabytesBandwidthUsed = _$v.totalGigabytesBandwidthUsed;
      _totalPaidGigabytesBandwidthUsed = _$v.totalPaidGigabytesBandwidthUsed;
      _includedGigabytesBandwidth = _$v.includedGigabytesBandwidth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackagesBillingUsage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PackagesBillingUsage;
  }

  @override
  void update(void Function(PackagesBillingUsageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackagesBillingUsage build() {
    final _$result = _$v ??
        new _$PackagesBillingUsage._(
            totalGigabytesBandwidthUsed: totalGigabytesBandwidthUsed,
            totalPaidGigabytesBandwidthUsed: totalPaidGigabytesBandwidthUsed,
            includedGigabytesBandwidth: includedGigabytesBandwidth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
