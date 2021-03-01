//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/runner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2004.g.dart';

abstract class InlineResponse2004 implements Built<InlineResponse2004, InlineResponse2004Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    num get totalCount;

    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<Runner> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2004._();

    static void _initializeBuilder(InlineResponse2004Builder b) => b;

    factory InlineResponse2004([void updates(InlineResponse2004Builder b)]) = _$InlineResponse2004;
    static Serializer<InlineResponse2004> get serializer => _$inlineResponse2004Serializer;
}

