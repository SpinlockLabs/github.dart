//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marketplace_listing_plan.g.dart';

abstract class MarketplaceListingPlan implements Built<MarketplaceListingPlan, MarketplaceListingPlanBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'accounts_url')
    String get accountsUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'monthly_price_in_cents')
    int get monthlyPriceInCents;

    @nullable
    @BuiltValueField(wireName: r'yearly_price_in_cents')
    int get yearlyPriceInCents;

    @nullable
    @BuiltValueField(wireName: r'price_model')
    String get priceModel;

    @nullable
    @BuiltValueField(wireName: r'has_free_trial')
    bool get hasFreeTrial;

    @nullable
    @BuiltValueField(wireName: r'unit_name')
    String get unitName;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'bullets')
    BuiltList<String> get bullets;

    // Boilerplate code needed to wire-up generated code
    MarketplaceListingPlan._();

    static void _initializeBuilder(MarketplaceListingPlanBuilder b) => b;

    factory MarketplaceListingPlan([void updates(MarketplaceListingPlanBuilder b)]) = _$MarketplaceListingPlan;
    static Serializer<MarketplaceListingPlan> get serializer => _$marketplaceListingPlanSerializer;
}

