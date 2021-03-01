//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow.g.dart';

abstract class Workflow implements Built<Workflow, WorkflowBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'state')
    WorkflowStateEnum get state;
    // enum stateEnum {  active,  deleted,  };

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'badge_url')
    String get badgeUrl;

    @nullable
    @BuiltValueField(wireName: r'deleted_at')
    DateTime get deletedAt;

    // Boilerplate code needed to wire-up generated code
    Workflow._();

    static void _initializeBuilder(WorkflowBuilder b) => b;

    factory Workflow([void updates(WorkflowBuilder b)]) = _$Workflow;
    static Serializer<Workflow> get serializer => _$workflowSerializer;
}

class WorkflowStateEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const WorkflowStateEnum active = _$workflowStateEnum_active;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const WorkflowStateEnum deleted = _$workflowStateEnum_deleted;

  static Serializer<WorkflowStateEnum> get serializer => _$workflowStateEnumSerializer;

  const WorkflowStateEnum._(String name): super(name);

  static BuiltSet<WorkflowStateEnum> get values => _$workflowStateEnumValues;
  static WorkflowStateEnum valueOf(String name) => _$workflowStateEnumValueOf(name);
}

