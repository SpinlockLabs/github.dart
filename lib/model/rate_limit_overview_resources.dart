//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/rate_limit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limit_overview_resources.g.dart';

abstract class RateLimitOverviewResources implements Built<RateLimitOverviewResources, RateLimitOverviewResourcesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'core')
    RateLimit get core;

    @nullable
    @BuiltValueField(wireName: r'graphql')
    RateLimit get graphql;

    @nullable
    @BuiltValueField(wireName: r'search')
    RateLimit get search;

    @nullable
    @BuiltValueField(wireName: r'source_import')
    RateLimit get sourceImport;

    @nullable
    @BuiltValueField(wireName: r'integration_manifest')
    RateLimit get integrationManifest;

    @nullable
    @BuiltValueField(wireName: r'code_scanning_upload')
    RateLimit get codeScanningUpload;

    // Boilerplate code needed to wire-up generated code
    RateLimitOverviewResources._();

    static void _initializeBuilder(RateLimitOverviewResourcesBuilder b) => b;

    factory RateLimitOverviewResources([void updates(RateLimitOverviewResourcesBuilder b)]) = _$RateLimitOverviewResources;
    static Serializer<RateLimitOverviewResources> get serializer => _$rateLimitOverviewResourcesSerializer;
}

