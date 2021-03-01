//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/runner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2008.g.dart';

abstract class InlineResponse2008 implements Built<InlineResponse2008, InlineResponse2008Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<Runner> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2008._();

    static void _initializeBuilder(InlineResponse2008Builder b) => b;

    factory InlineResponse2008([void updates(InlineResponse2008Builder b)]) = _$InlineResponse2008;
    static Serializer<InlineResponse2008> get serializer => _$inlineResponse2008Serializer;
}

