//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/marketplace_listing_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marketplace_purchase_marketplace_purchase.g.dart';

abstract class MarketplacePurchaseMarketplacePurchase implements Built<MarketplacePurchaseMarketplacePurchase, MarketplacePurchaseMarketplacePurchaseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'billing_cycle')
    String get billingCycle;

    @nullable
    @BuiltValueField(wireName: r'next_billing_date')
    String get nextBillingDate;

    @nullable
    @BuiltValueField(wireName: r'is_installed')
    bool get isInstalled;

    @nullable
    @BuiltValueField(wireName: r'unit_count')
    int get unitCount;

    @nullable
    @BuiltValueField(wireName: r'on_free_trial')
    bool get onFreeTrial;

    @nullable
    @BuiltValueField(wireName: r'free_trial_ends_on')
    String get freeTrialEndsOn;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'plan')
    MarketplaceListingPlan get plan;

    // Boilerplate code needed to wire-up generated code
    MarketplacePurchaseMarketplacePurchase._();

    static void _initializeBuilder(MarketplacePurchaseMarketplacePurchaseBuilder b) => b;

    factory MarketplacePurchaseMarketplacePurchase([void updates(MarketplacePurchaseMarketplacePurchaseBuilder b)]) = _$MarketplacePurchaseMarketplacePurchase;
    static Serializer<MarketplacePurchaseMarketplacePurchase> get serializer => _$marketplacePurchaseMarketplacePurchaseSerializer;
}

