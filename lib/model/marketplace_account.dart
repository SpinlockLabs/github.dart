//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marketplace_account.g.dart';

abstract class MarketplaceAccount implements Built<MarketplaceAccount, MarketplaceAccountBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'organization_billing_email')
    String get organizationBillingEmail;

    // Boilerplate code needed to wire-up generated code
    MarketplaceAccount._();

    static void _initializeBuilder(MarketplaceAccountBuilder b) => b;

    factory MarketplaceAccount([void updates(MarketplaceAccountBuilder b)]) = _$MarketplaceAccount;
    static Serializer<MarketplaceAccount> get serializer => _$marketplaceAccountSerializer;
}

