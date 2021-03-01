//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_run_usage_billable_ubuntu.g.dart';

abstract class WorkflowRunUsageBillableUBUNTU implements Built<WorkflowRunUsageBillableUBUNTU, WorkflowRunUsageBillableUBUNTUBuilder> {

    @nullable
    @BuiltValueField(wireName: r'total_ms')
    int get totalMs;

    @nullable
    @BuiltValueField(wireName: r'jobs')
    int get jobs;

    // Boilerplate code needed to wire-up generated code
    WorkflowRunUsageBillableUBUNTU._();

    static void _initializeBuilder(WorkflowRunUsageBillableUBUNTUBuilder b) => b;

    factory WorkflowRunUsageBillableUBUNTU([void updates(WorkflowRunUsageBillableUBUNTUBuilder b)]) = _$WorkflowRunUsageBillableUBUNTU;
    static Serializer<WorkflowRunUsageBillableUBUNTU> get serializer => _$workflowRunUsageBillableUBUNTUSerializer;
}

