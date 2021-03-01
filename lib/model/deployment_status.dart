//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deployment_status.g.dart';

abstract class DeploymentStatus implements Built<DeploymentStatus, DeploymentStatusBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The state of the status.
    @nullable
    @BuiltValueField(wireName: r'state')
    DeploymentStatusStateEnum get state;
    // enum stateEnum {  error,  failure,  inactive,  pending,  success,  queued,  in_progress,  };

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    /// A short description of the status.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// The environment of the deployment that the status is for.
    @nullable
    @BuiltValueField(wireName: r'environment')
    String get environment;

    /// Deprecated: the URL to associate with this status.
    @nullable
    @BuiltValueField(wireName: r'target_url')
    String get targetUrl;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'deployment_url')
    String get deploymentUrl;

    @nullable
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    /// The URL for accessing your environment.
    @nullable
    @BuiltValueField(wireName: r'environment_url')
    String get environmentUrl;

    /// The URL to associate with this status.
    @nullable
    @BuiltValueField(wireName: r'log_url')
    String get logUrl;

    @nullable
    @BuiltValueField(wireName: r'performed_via_github_app')
    Integration get performedViaGithubApp;

    // Boilerplate code needed to wire-up generated code
    DeploymentStatus._();

    static void _initializeBuilder(DeploymentStatusBuilder b) => b
        ..description = ''
        ..environment = ''
        ..targetUrl = ''
        ..environmentUrl = ''
        ..logUrl = '';

    factory DeploymentStatus([void updates(DeploymentStatusBuilder b)]) = _$DeploymentStatus;
    static Serializer<DeploymentStatus> get serializer => _$deploymentStatusSerializer;
}

class DeploymentStatusStateEnum extends EnumClass {

  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'error')
  static const DeploymentStatusStateEnum error = _$deploymentStatusStateEnum_error;
  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'failure')
  static const DeploymentStatusStateEnum failure = _$deploymentStatusStateEnum_failure;
  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'inactive')
  static const DeploymentStatusStateEnum inactive = _$deploymentStatusStateEnum_inactive;
  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'pending')
  static const DeploymentStatusStateEnum pending = _$deploymentStatusStateEnum_pending;
  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'success')
  static const DeploymentStatusStateEnum success = _$deploymentStatusStateEnum_success;
  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'queued')
  static const DeploymentStatusStateEnum queued = _$deploymentStatusStateEnum_queued;
  /// The state of the status.
  @BuiltValueEnumConst(wireName: r'in_progress')
  static const DeploymentStatusStateEnum inProgress = _$deploymentStatusStateEnum_inProgress;

  static Serializer<DeploymentStatusStateEnum> get serializer => _$deploymentStatusStateEnumSerializer;

  const DeploymentStatusStateEnum._(String name): super(name);

  static BuiltSet<DeploymentStatusStateEnum> get values => _$deploymentStatusStateEnumValues;
  static DeploymentStatusStateEnum valueOf(String name) => _$deploymentStatusStateEnumValueOf(name);
}

