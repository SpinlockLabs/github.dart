//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limit.g.dart';

abstract class RateLimit implements Built<RateLimit, RateLimitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'limit')
    int get limit;

    @nullable
    @BuiltValueField(wireName: r'remaining')
    int get remaining;

    @nullable
    @BuiltValueField(wireName: r'reset')
    int get reset;

    // Boilerplate code needed to wire-up generated code
    RateLimit._();

    static void _initializeBuilder(RateLimitBuilder b) => b;

    factory RateLimit([void updates(RateLimitBuilder b)]) = _$RateLimit;
    static Serializer<RateLimit> get serializer => _$rateLimitSerializer;
}

