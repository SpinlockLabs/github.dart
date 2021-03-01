//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/marketplace_purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace_purchase_marketplace_purchase.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marketplace_purchase.g.dart';

abstract class MarketplacePurchase implements Built<MarketplacePurchase, MarketplacePurchaseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    @nullable
    @BuiltValueField(wireName: r'organization_billing_email')
    String get organizationBillingEmail;

    @nullable
    @BuiltValueField(wireName: r'marketplace_pending_change')
    MarketplacePurchaseMarketplacePendingChange get marketplacePendingChange;

    @nullable
    @BuiltValueField(wireName: r'marketplace_purchase')
    MarketplacePurchaseMarketplacePurchase get marketplacePurchase;

    // Boilerplate code needed to wire-up generated code
    MarketplacePurchase._();

    static void _initializeBuilder(MarketplacePurchaseBuilder b) => b;

    factory MarketplacePurchase([void updates(MarketplacePurchaseBuilder b)]) = _$MarketplacePurchase;
    static Serializer<MarketplacePurchase> get serializer => _$marketplacePurchaseSerializer;
}

