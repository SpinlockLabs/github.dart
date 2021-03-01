//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/check_suite.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20018.g.dart';

abstract class InlineResponse20018 implements Built<InlineResponse20018, InlineResponse20018Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'check_suites')
    BuiltList<CheckSuite> get checkSuites;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20018._();

    static void _initializeBuilder(InlineResponse20018Builder b) => b;

    factory InlineResponse20018([void updates(InlineResponse20018Builder b)]) = _$InlineResponse20018;
    static Serializer<InlineResponse20018> get serializer => _$inlineResponse20018Serializer;
}

