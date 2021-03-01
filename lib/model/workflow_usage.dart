//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/workflow_usage_billable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_usage.g.dart';

abstract class WorkflowUsage implements Built<WorkflowUsage, WorkflowUsageBuilder> {

    @nullable
    @BuiltValueField(wireName: r'billable')
    WorkflowUsageBillable get billable;

    // Boilerplate code needed to wire-up generated code
    WorkflowUsage._();

    static void _initializeBuilder(WorkflowUsageBuilder b) => b;

    factory WorkflowUsage([void updates(WorkflowUsageBuilder b)]) = _$WorkflowUsage;
    static Serializer<WorkflowUsage> get serializer => _$workflowUsageSerializer;
}

