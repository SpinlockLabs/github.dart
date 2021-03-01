//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/workflow_usage_billable_ubuntu.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_usage_billable.g.dart';

abstract class WorkflowUsageBillable implements Built<WorkflowUsageBillable, WorkflowUsageBillableBuilder> {

    @nullable
    @BuiltValueField(wireName: r'UBUNTU')
    WorkflowUsageBillableUBUNTU get UBUNTU;

    @nullable
    @BuiltValueField(wireName: r'MACOS')
    WorkflowUsageBillableUBUNTU get MACOS;

    @nullable
    @BuiltValueField(wireName: r'WINDOWS')
    WorkflowUsageBillableUBUNTU get WINDOWS;

    // Boilerplate code needed to wire-up generated code
    WorkflowUsageBillable._();

    static void _initializeBuilder(WorkflowUsageBillableBuilder b) => b;

    factory WorkflowUsageBillable([void updates(WorkflowUsageBillableBuilder b)]) = _$WorkflowUsageBillable;
    static Serializer<WorkflowUsageBillable> get serializer => _$workflowUsageBillableSerializer;
}

