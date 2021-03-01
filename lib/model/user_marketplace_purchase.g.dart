// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'user_marketplace_purchase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserMarketplacePurchase> _$userMarketplacePurchaseSerializer =
    new _$UserMarketplacePurchaseSerializer();

class _$UserMarketplacePurchaseSerializer
    implements StructuredSerializer<UserMarketplacePurchase> {
  @override
  final Iterable<Type> types = const [
    UserMarketplacePurchase,
    _$UserMarketplacePurchase
  ];
  @override
  final String wireName = 'UserMarketplacePurchase';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UserMarketplacePurchase object,
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
            specifiedType: const FullType(DateTime)));
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
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.account != null) {
      result
        ..add('account')
        ..add(serializers.serialize(object.account,
            specifiedType: const FullType(MarketplaceAccount)));
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
  UserMarketplacePurchase deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserMarketplacePurchaseBuilder();

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
              specifiedType: const FullType(DateTime)) as DateTime;
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
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'account':
          result.account.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MarketplaceAccount))
              as MarketplaceAccount);
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

class _$UserMarketplacePurchase extends UserMarketplacePurchase {
  @override
  final String billingCycle;
  @override
  final DateTime nextBillingDate;
  @override
  final int unitCount;
  @override
  final bool onFreeTrial;
  @override
  final DateTime freeTrialEndsOn;
  @override
  final DateTime updatedAt;
  @override
  final MarketplaceAccount account;
  @override
  final MarketplaceListingPlan plan;

  factory _$UserMarketplacePurchase(
          [void Function(UserMarketplacePurchaseBuilder) updates]) =>
      (new UserMarketplacePurchaseBuilder()..update(updates)).build();

  _$UserMarketplacePurchase._(
      {this.billingCycle,
      this.nextBillingDate,
      this.unitCount,
      this.onFreeTrial,
      this.freeTrialEndsOn,
      this.updatedAt,
      this.account,
      this.plan})
      : super._();

  @override
  UserMarketplacePurchase rebuild(
          void Function(UserMarketplacePurchaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserMarketplacePurchaseBuilder toBuilder() =>
      new UserMarketplacePurchaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMarketplacePurchase &&
        billingCycle == other.billingCycle &&
        nextBillingDate == other.nextBillingDate &&
        unitCount == other.unitCount &&
        onFreeTrial == other.onFreeTrial &&
        freeTrialEndsOn == other.freeTrialEndsOn &&
        updatedAt == other.updatedAt &&
        account == other.account &&
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
                            unitCount.hashCode),
                        onFreeTrial.hashCode),
                    freeTrialEndsOn.hashCode),
                updatedAt.hashCode),
            account.hashCode),
        plan.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserMarketplacePurchase')
          ..add('billingCycle', billingCycle)
          ..add('nextBillingDate', nextBillingDate)
          ..add('unitCount', unitCount)
          ..add('onFreeTrial', onFreeTrial)
          ..add('freeTrialEndsOn', freeTrialEndsOn)
          ..add('updatedAt', updatedAt)
          ..add('account', account)
          ..add('plan', plan))
        .toString();
  }
}

class UserMarketplacePurchaseBuilder
    implements
        Builder<UserMarketplacePurchase, UserMarketplacePurchaseBuilder> {
  _$UserMarketplacePurchase _$v;

  String _billingCycle;
  String get billingCycle => _$this._billingCycle;
  set billingCycle(String billingCycle) => _$this._billingCycle = billingCycle;

  DateTime _nextBillingDate;
  DateTime get nextBillingDate => _$this._nextBillingDate;
  set nextBillingDate(DateTime nextBillingDate) =>
      _$this._nextBillingDate = nextBillingDate;

  int _unitCount;
  int get unitCount => _$this._unitCount;
  set unitCount(int unitCount) => _$this._unitCount = unitCount;

  bool _onFreeTrial;
  bool get onFreeTrial => _$this._onFreeTrial;
  set onFreeTrial(bool onFreeTrial) => _$this._onFreeTrial = onFreeTrial;

  DateTime _freeTrialEndsOn;
  DateTime get freeTrialEndsOn => _$this._freeTrialEndsOn;
  set freeTrialEndsOn(DateTime freeTrialEndsOn) =>
      _$this._freeTrialEndsOn = freeTrialEndsOn;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  MarketplaceAccountBuilder _account;
  MarketplaceAccountBuilder get account =>
      _$this._account ??= new MarketplaceAccountBuilder();
  set account(MarketplaceAccountBuilder account) => _$this._account = account;

  MarketplaceListingPlanBuilder _plan;
  MarketplaceListingPlanBuilder get plan =>
      _$this._plan ??= new MarketplaceListingPlanBuilder();
  set plan(MarketplaceListingPlanBuilder plan) => _$this._plan = plan;

  UserMarketplacePurchaseBuilder() {
    UserMarketplacePurchase._initializeBuilder(this);
  }

  UserMarketplacePurchaseBuilder get _$this {
    if (_$v != null) {
      _billingCycle = _$v.billingCycle;
      _nextBillingDate = _$v.nextBillingDate;
      _unitCount = _$v.unitCount;
      _onFreeTrial = _$v.onFreeTrial;
      _freeTrialEndsOn = _$v.freeTrialEndsOn;
      _updatedAt = _$v.updatedAt;
      _account = _$v.account?.toBuilder();
      _plan = _$v.plan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMarketplacePurchase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserMarketplacePurchase;
  }

  @override
  void update(void Function(UserMarketplacePurchaseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserMarketplacePurchase build() {
    _$UserMarketplacePurchase _$result;
    try {
      _$result = _$v ??
          new _$UserMarketplacePurchase._(
              billingCycle: billingCycle,
              nextBillingDate: nextBillingDate,
              unitCount: unitCount,
              onFreeTrial: onFreeTrial,
              freeTrialEndsOn: freeTrialEndsOn,
              updatedAt: updatedAt,
              account: _account?.build(),
              plan: _plan?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'account';
        _account?.build();
        _$failedField = 'plan';
        _plan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserMarketplacePurchase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
