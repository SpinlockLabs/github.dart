//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/workflow_run.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20013.g.dart';

abstract class InlineResponse20013 implements Built<InlineResponse20013, InlineResponse20013Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'workflow_runs')
    BuiltList<WorkflowRun> get workflowRuns;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20013._();

    static void _initializeBuilder(InlineResponse20013Builder b) => b;

    factory InlineResponse20013([void updates(InlineResponse20013Builder b)]) = _$InlineResponse20013;
    static Serializer<InlineResponse20013> get serializer => _$inlineResponse20013Serializer;
}

