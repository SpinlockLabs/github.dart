//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_usage_billable_ubuntu.g.dart';

abstract class WorkflowUsageBillableUBUNTU implements Built<WorkflowUsageBillableUBUNTU, WorkflowUsageBillableUBUNTUBuilder> {

    @nullable
    @BuiltValueField(wireName: r'total_ms')
    int get totalMs;

    // Boilerplate code needed to wire-up generated code
    WorkflowUsageBillableUBUNTU._();

    static void _initializeBuilder(WorkflowUsageBillableUBUNTUBuilder b) => b;

    factory WorkflowUsageBillableUBUNTU([void updates(WorkflowUsageBillableUBUNTUBuilder b)]) = _$WorkflowUsageBillableUBUNTU;
    static Serializer<WorkflowUsageBillableUBUNTU> get serializer => _$workflowUsageBillableUBUNTUSerializer;
}

