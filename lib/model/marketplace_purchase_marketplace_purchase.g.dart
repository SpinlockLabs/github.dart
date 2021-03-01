// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'marketplace_purchase_marketplace_purchase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarketplacePurchaseMarketplacePurchase>
    _$marketplacePurchaseMarketplacePurchaseSerializer =
    new _$MarketplacePurchaseMarketplacePurchaseSerializer();

class _$MarketplacePurchaseMarketplacePurchaseSerializer
    implements StructuredSerializer<MarketplacePurchaseMarketplacePurchase> {
  @override
  final Iterable<Type> types = const [
    MarketplacePurchaseMarketplacePurchase,
    _$MarketplacePurchaseMarketplacePurchase
  ];
  @override
  final String wireName = 'MarketplacePurchaseMarketplacePurchase';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MarketplacePurchaseMarketplacePurchase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.billingCycle != null) {
      result
        ..add('billing_cycle')
        ..add(serializers.serialize(object.billingCycle,
            specifiedType: const FullType(String)));
    }
    if (object.nextBillingDate != null) {
      result
        ..add('next_billing_date')
        ..add(serializers.serialize(object.nextBillingDate,
            specifiedType: const FullType(String)));
    }
    if (object.isInstalled != null) {
      result
        ..add('is_installed')
        ..add(serializers.serialize(object.isInstalled,
            specifiedType: const FullType(bool)));
    }
    if (object.unitCount != null) {
      result
        ..add('unit_count')
        ..add(serializers.serialize(object.unitCount,
            specifiedType: const FullType(int)));
    }
    if (object.onFreeTrial != null) {
      result
        ..add('on_free_trial')
        ..add(serializers.serialize(object.onFreeTrial,
            specifiedType: const FullType(bool)));
    }
    if (object.freeTrialEndsOn != null) {
      result
        ..add('free_trial_ends_on')
        ..add(serializers.serialize(object.freeTrialEndsOn,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.plan != null) {
      result
        ..add('plan')
        ..add(serializers.serialize(object.plan,
            specifiedType: const FullType(MarketplaceListingPlan)));
    }
    return result;
  }

  @override
  MarketplacePurchaseMarketplacePurchase deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarketplacePurchaseMarketplacePurchaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'billing_cycle':
          result.billingCycle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'next_billing_date':
          result.nextBillingDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_installed':
          result.isInstalled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'unit_count':
          result.unitCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'on_free_trial':
          result.onFreeTrial = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'free_trial_ends_on':
          result.freeTrialEndsOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'plan':
          result.plan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MarketplaceListingPlan))
              as MarketplaceListingPlan);
          break;
      }
    }

    return result.build();
  }
}

class _$MarketplacePurchaseMarketplacePurchase
    extends MarketplacePurchaseMarketplacePurchase {
  @override
  final String billingCycle;
  @override
  final String nextBillingDate;
  @override
  final bool isInstalled;
  @override
  final int unitCount;
  @override
  final bool onFreeTrial;
  @override
  final String freeTrialEndsOn;
  @override
  final String updatedAt;
  @override
  final MarketplaceListingPlan plan;

  factory _$MarketplacePurchaseMarketplacePurchase(
          [void Function(MarketplacePurchaseMarketplacePurchaseBuilder)
              updates]) =>
      (new MarketplacePurchaseMarketplacePurchaseBuilder()..update(updates))
          .build();

  _$MarketplacePurchaseMarketplacePurchase._(
      {this.billingCycle,
      this.nextBillingDate,
      this.isInstalled,
      this.unitCount,
      this.onFreeTrial,
      this.freeTrialEndsOn,
      this.updatedAt,
      this.plan})
      : super._();

  @override
  MarketplacePurchaseMarketplacePurchase rebuild(
          void Function(MarketplacePurchaseMarketplacePurchaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarketplacePurchaseMarketplacePurchaseBuilder toBuilder() =>
      new MarketplacePurchaseMarketplacePurchaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarketplacePurchaseMarketplacePurchase &&
        billingCycle == other.billingCycle &&
        nextBillingDate == other.nextBillingDate &&
        isInstalled == other.isInstalled &&
        unitCount == other.unitCount &&
        onFreeTrial == other.onFreeTrial &&
        freeTrialEndsOn == other.freeTrialEndsOn &&
        updatedAt == other.updatedAt &&
        plan == other.plan;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, billingCycle.hashCode),
                                nextBillingDate.hashCode),
                            isInstalled.hashCode),
                        unitCount.hashCode),
                    onFreeTrial.hashCode),
                freeTrialEndsOn.hashCode),
            updatedAt.hashCode),
        plan.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'MarketplacePurchaseMarketplacePurchase')
          ..add('billingCycle', billingCycle)
          ..add('nextBillingDate', nextBillingDate)
          ..add('isInstalled', isInstalled)
          ..add('unitCount', unitCount)
          ..add('onFreeTrial', onFreeTrial)
          ..add('freeTrialEndsOn', freeTrialEndsOn)
          ..add('updatedAt', updatedAt)
          ..add('plan', plan))
        .toString();
  }
}

class MarketplacePurchaseMarketplacePurchaseBuilder
    implements
        Builder<MarketplacePurchaseMarketplacePurchase,
            MarketplacePurchaseMarketplacePurchaseBuilder> {
  _$MarketplacePurchaseMarketplacePurchase _$v;

  String _billingCycle;
  String get billingCycle => _$this._billingCycle;
  set billingCycle(String billingCycle) => _$this._billingCycle = billingCycle;

  String _nextBillingDate;
  String get nextBillingDate => _$this._nextBillingDate;
  set nextBillingDate(String nextBillingDate) =>
      _$this._nextBillingDate = nextBillingDate;

  bool _isInstalled;
  bool get isInstalled => _$this._isInstalled;
  set isInstalled(bool isInstalled) => _$this._isInstalled = isInstalled;

  int _unitCount;
  int get unitCount => _$this._unitCount;
  set unitCount(int unitCount) => _$this._unitCount = unitCount;

  bool _onFreeTrial;
  bool get onFreeTrial => _$this._onFreeTrial;
  set onFreeTrial(bool onFreeTrial) => _$this._onFreeTrial = onFreeTrial;

  String _freeTrialEndsOn;
  String get freeTrialEndsOn => _$this._freeTrialEndsOn;
  set freeTrialEndsOn(String freeTrialEndsOn) =>
      _$this._freeTrialEndsOn = freeTrialEndsOn;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  MarketplaceListingPlanBuilder _plan;
  MarketplaceListingPlanBuilder get plan =>
      _$this._plan ??= new MarketplaceListingPlanBuilder();
  set plan(MarketplaceListingPlanBuilder plan) => _$this._plan = plan;

  MarketplacePurchaseMarketplacePurchaseBuilder() {
    MarketplacePurchaseMarketplacePurchase._initializeBuilder(this);
  }

  MarketplacePurchaseMarketplacePurchaseBuilder get _$this {
    if (_$v != null) {
      _billingCycle = _$v.billingCycle;
      _nextBillingDate = _$v.nextBillingDate;
      _isInstalled = _$v.isInstalled;
      _unitCount = _$v.unitCount;
      _onFreeTrial = _$v.onFreeTrial;
      _freeTrialEndsOn = _$v.freeTrialEndsOn;
      _updatedAt = _$v.updatedAt;
      _plan = _$v.plan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarketplacePurchaseMarketplacePurchase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MarketplacePurchaseMarketplacePurchase;
  }

  @override
  void update(
      void Function(MarketplacePurchaseMarketplacePurchaseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarketplacePurchaseMarketplacePurchase build() {
    _$MarketplacePurchaseMarketplacePurchase _$result;
    try {
      _$result = _$v ??
          new _$MarketplacePurchaseMarketplacePurchase._(
              billingCycle: billingCycle,
              nextBillingDate: nextBillingDate,
              isInstalled: isInstalled,
              unitCount: unitCount,
              onFreeTrial: onFreeTrial,
              freeTrialEndsOn: freeTrialEndsOn,
              updatedAt: updatedAt,
              plan: _plan?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'plan';
        _plan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MarketplacePurchaseMarketplacePurchase',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
