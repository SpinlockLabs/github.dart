//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'referrer_traffic.g.dart';

abstract class ReferrerTraffic implements Built<ReferrerTraffic, ReferrerTrafficBuilder> {

    @nullable
    @BuiltValueField(wireName: r'referrer')
    String get referrer;

    @nullable
    @BuiltValueField(wireName: r'count')
    int get count;

    @nullable
    @BuiltValueField(wireName: r'uniques')
    int get uniques;

    // Boilerplate code needed to wire-up generated code
    ReferrerTraffic._();

    static void _initializeBuilder(ReferrerTrafficBuilder b) => b;

    factory ReferrerTraffic([void updates(ReferrerTrafficBuilder b)]) = _$ReferrerTraffic;
    static Serializer<ReferrerTraffic> get serializer => _$referrerTrafficSerializer;
}

