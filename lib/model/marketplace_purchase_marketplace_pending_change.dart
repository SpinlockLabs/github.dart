//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/marketplace_listing_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marketplace_purchase_marketplace_pending_change.g.dart';

abstract class MarketplacePurchaseMarketplacePendingChange implements Built<MarketplacePurchaseMarketplacePendingChange, MarketplacePurchaseMarketplacePendingChangeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'is_installed')
    bool get isInstalled;

    @nullable
    @BuiltValueField(wireName: r'effective_date')
    String get effectiveDate;

    @nullable
    @BuiltValueField(wireName: r'unit_count')
    int get unitCount;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'plan')
    MarketplaceListingPlan get plan;

    // Boilerplate code needed to wire-up generated code
    MarketplacePurchaseMarketplacePendingChange._();

    static void _initializeBuilder(MarketplacePurchaseMarketplacePendingChangeBuilder b) => b;

    factory MarketplacePurchaseMarketplacePendingChange([void updates(MarketplacePurchaseMarketplacePendingChangeBuilder b)]) = _$MarketplacePurchaseMarketplacePendingChange;
    static Serializer<MarketplacePurchaseMarketplacePendingChange> get serializer => _$marketplacePurchaseMarketplacePendingChangeSerializer;
}

