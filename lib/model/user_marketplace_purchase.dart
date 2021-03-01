//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/marketplace_account.dart';
import 'package:github/model/marketplace_listing_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_marketplace_purchase.g.dart';

abstract class UserMarketplacePurchase implements Built<UserMarketplacePurchase, UserMarketplacePurchaseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'billing_cycle')
    String get billingCycle;

    @nullable
    @BuiltValueField(wireName: r'next_billing_date')
    DateTime get nextBillingDate;

    @nullable
    @BuiltValueField(wireName: r'unit_count')
    int get unitCount;

    @nullable
    @BuiltValueField(wireName: r'on_free_trial')
    bool get onFreeTrial;

    @nullable
    @BuiltValueField(wireName: r'free_trial_ends_on')
    DateTime get freeTrialEndsOn;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'account')
    MarketplaceAccount get account;

    @nullable
    @BuiltValueField(wireName: r'plan')
    MarketplaceListingPlan get plan;

    // Boilerplate code needed to wire-up generated code
    UserMarketplacePurchase._();

    static void _initializeBuilder(UserMarketplacePurchaseBuilder b) => b;

    factory UserMarketplacePurchase([void updates(UserMarketplacePurchaseBuilder b)]) = _$UserMarketplacePurchase;
    static Serializer<UserMarketplacePurchase> get serializer => _$userMarketplacePurchaseSerializer;
}

