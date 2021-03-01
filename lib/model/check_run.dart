//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/check_run_output.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/pull_request_minimal.dart';
import 'package:github/model/deployment_simple.dart';
import 'package:github/model/check_run_check_suite.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_run.g.dart';

abstract class CheckRun implements Built<CheckRun, CheckRunBuilder> {

    /// The id of the check.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The SHA of the commit that is being checked.
    @nullable
    @BuiltValueField(wireName: r'head_sha')
    String get headSha;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'external_id')
    String get externalId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'details_url')
    String get detailsUrl;

    /// The phase of the lifecycle that the check is currently in.
    @nullable
    @BuiltValueField(wireName: r'status')
    CheckRunStatusEnum get status;
    // enum statusEnum {  queued,  in_progress,  completed,  };

    @nullable
    @BuiltValueField(wireName: r'conclusion')
    CheckRunConclusionEnum get conclusion;
    // enum conclusionEnum {  success,  failure,  neutral,  cancelled,  skipped,  timed_out,  action_required,  };

    @nullable
    @BuiltValueField(wireName: r'started_at')
    DateTime get startedAt;

    @nullable
    @BuiltValueField(wireName: r'completed_at')
    DateTime get completedAt;

    @nullable
    @BuiltValueField(wireName: r'output')
    CheckRunOutput get output;

    /// The name of the check.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'check_suite')
    CheckRunCheckSuite get checkSuite;

    @nullable
    @BuiltValueField(wireName: r'app')
    Integration get app;

    @nullable
    @BuiltValueField(wireName: r'pull_requests')
    BuiltList<PullRequestMinimal> get pullRequests;

    @nullable
    @BuiltValueField(wireName: r'deployment')
    DeploymentSimple get deployment;

    // Boilerplate code needed to wire-up generated code
    CheckRun._();

    static void _initializeBuilder(CheckRunBuilder b) => b;

    factory CheckRun([void updates(CheckRunBuilder b)]) = _$CheckRun;
    static Serializer<CheckRun> get serializer => _$checkRunSerializer;
}

class CheckRunStatusEnum extends EnumClass {

  /// The phase of the lifecycle that the check is currently in.
  @BuiltValueEnumConst(wireName: r'queued')
  static const CheckRunStatusEnum queued = _$checkRunStatusEnum_queued;
  /// The phase of the lifecycle that the check is currently in.
  @BuiltValueEnumConst(wireName: r'in_progress')
  static const CheckRunStatusEnum inProgress = _$checkRunStatusEnum_inProgress;
  /// The phase of the lifecycle that the check is currently in.
  @BuiltValueEnumConst(wireName: r'completed')
  static const CheckRunStatusEnum completed = _$checkRunStatusEnum_completed;

  static Serializer<CheckRunStatusEnum> get serializer => _$checkRunStatusEnumSerializer;

  const CheckRunStatusEnum._(String name): super(name);

  static BuiltSet<CheckRunStatusEnum> get values => _$checkRunStatusEnumValues;
  static CheckRunStatusEnum valueOf(String name) => _$checkRunStatusEnumValueOf(name);
}

class CheckRunConclusionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'success')
  static const CheckRunConclusionEnum success = _$checkRunConclusionEnum_success;
  @BuiltValueEnumConst(wireName: r'failure')
  static const CheckRunConclusionEnum failure = _$checkRunConclusionEnum_failure;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const CheckRunConclusionEnum neutral = _$checkRunConclusionEnum_neutral;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const CheckRunConclusionEnum cancelled = _$checkRunConclusionEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const CheckRunConclusionEnum skipped = _$checkRunConclusionEnum_skipped;
  @BuiltValueEnumConst(wireName: r'timed_out')
  static const CheckRunConclusionEnum timedOut = _$checkRunConclusionEnum_timedOut;
  @BuiltValueEnumConst(wireName: r'action_required')
  static const CheckRunConclusionEnum actionRequired = _$checkRunConclusionEnum_actionRequired;

  static Serializer<CheckRunConclusionEnum> get serializer => _$checkRunConclusionEnumSerializer;

  const CheckRunConclusionEnum._(String name): super(name);

  static BuiltSet<CheckRunConclusionEnum> get values => _$checkRunConclusionEnumValues;
  static CheckRunConclusionEnum valueOf(String name) => _$checkRunConclusionEnumValueOf(name);
}

