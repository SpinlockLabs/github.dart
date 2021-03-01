//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/workflow.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20016.g.dart';

abstract class InlineResponse20016 implements Built<InlineResponse20016, InlineResponse20016Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'workflows')
    BuiltList<Workflow> get workflows;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20016._();

    static void _initializeBuilder(InlineResponse20016Builder b) => b;

    factory InlineResponse20016([void updates(InlineResponse20016Builder b)]) = _$InlineResponse20016;
    static Serializer<InlineResponse20016> get serializer => _$inlineResponse20016Serializer;
}

