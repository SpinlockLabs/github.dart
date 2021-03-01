//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/organization_simple.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2001.g.dart';

abstract class InlineResponse2001 implements Built<InlineResponse2001, InlineResponse2001Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    num get totalCount;

    @nullable
    @BuiltValueField(wireName: r'organizations')
    BuiltList<OrganizationSimple> get organizations;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2001._();

    static void _initializeBuilder(InlineResponse2001Builder b) => b;

    factory InlineResponse2001([void updates(InlineResponse2001Builder b)]) = _$InlineResponse2001;
    static Serializer<InlineResponse2001> get serializer => _$inlineResponse2001Serializer;
}

