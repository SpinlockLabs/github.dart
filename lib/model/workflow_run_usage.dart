//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/workflow_run_usage_billable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_run_usage.g.dart';

abstract class WorkflowRunUsage implements Built<WorkflowRunUsage, WorkflowRunUsageBuilder> {

    @nullable
    @BuiltValueField(wireName: r'billable')
    WorkflowRunUsageBillable get billable;

    @nullable
    @BuiltValueField(wireName: r'run_duration_ms')
    int get runDurationMs;

    // Boilerplate code needed to wire-up generated code
    WorkflowRunUsage._();

    static void _initializeBuilder(WorkflowRunUsageBuilder b) => b;

    factory WorkflowRunUsage([void updates(WorkflowRunUsageBuilder b)]) = _$WorkflowRunUsage;
    static Serializer<WorkflowRunUsage> get serializer => _$workflowRunUsageSerializer;
}

