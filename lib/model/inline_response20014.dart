//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/job.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20014.g.dart';

abstract class InlineResponse20014 implements Built<InlineResponse20014, InlineResponse20014Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'jobs')
    BuiltList<Job> get jobs;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20014._();

    static void _initializeBuilder(InlineResponse20014Builder b) => b;

    factory InlineResponse20014([void updates(InlineResponse20014Builder b)]) = _$InlineResponse20014;
    static Serializer<InlineResponse20014> get serializer => _$inlineResponse20014Serializer;
}

