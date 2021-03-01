//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/rate_limit_overview_resources.dart';
import 'package:github/model/rate_limit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limit_overview.g.dart';

abstract class RateLimitOverview implements Built<RateLimitOverview, RateLimitOverviewBuilder> {

    @nullable
    @BuiltValueField(wireName: r'resources')
    RateLimitOverviewResources get resources;

    @nullable
    @BuiltValueField(wireName: r'rate')
    RateLimit get rate;

    // Boilerplate code needed to wire-up generated code
    RateLimitOverview._();

    static void _initializeBuilder(RateLimitOverviewBuilder b) => b;

    factory RateLimitOverview([void updates(RateLimitOverviewBuilder b)]) = _$RateLimitOverview;
    static Serializer<RateLimitOverview> get serializer => _$rateLimitOverviewSerializer;
}

