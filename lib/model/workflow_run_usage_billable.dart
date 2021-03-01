//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/workflow_run_usage_billable_ubuntu.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_run_usage_billable.g.dart';

abstract class WorkflowRunUsageBillable implements Built<WorkflowRunUsageBillable, WorkflowRunUsageBillableBuilder> {

    @nullable
    @BuiltValueField(wireName: r'UBUNTU')
    WorkflowRunUsageBillableUBUNTU get UBUNTU;

    @nullable
    @BuiltValueField(wireName: r'MACOS')
    WorkflowRunUsageBillableUBUNTU get MACOS;

    @nullable
    @BuiltValueField(wireName: r'WINDOWS')
    WorkflowRunUsageBillableUBUNTU get WINDOWS;

    // Boilerplate code needed to wire-up generated code
    WorkflowRunUsageBillable._();

    static void _initializeBuilder(WorkflowRunUsageBillableBuilder b) => b;

    factory WorkflowRunUsageBillable([void updates(WorkflowRunUsageBillableBuilder b)]) = _$WorkflowRunUsageBillable;
    static Serializer<WorkflowRunUsageBillable> get serializer => _$workflowRunUsageBillableSerializer;
}

