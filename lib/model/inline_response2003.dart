//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/runner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2003.g.dart';

abstract class InlineResponse2003 implements Built<InlineResponse2003, InlineResponse2003Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    num get totalCount;

    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<Runner> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2003._();

    static void _initializeBuilder(InlineResponse2003Builder b) => b;

    factory InlineResponse2003([void updates(InlineResponse2003Builder b)]) = _$InlineResponse2003;
    static Serializer<InlineResponse2003> get serializer => _$inlineResponse2003Serializer;
}

