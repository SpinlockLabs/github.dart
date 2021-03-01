//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/pull_request_minimal.dart';
import 'package:github/model/simple_commit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_suite.g.dart';

abstract class CheckSuite implements Built<CheckSuite, CheckSuiteBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'head_branch')
    String get headBranch;

    /// The SHA of the head commit that is being checked.
    @nullable
    @BuiltValueField(wireName: r'head_sha')
    String get headSha;

    @nullable
    @BuiltValueField(wireName: r'status')
    CheckSuiteStatusEnum get status;
    // enum statusEnum {  queued,  in_progress,  completed,  };

    @nullable
    @BuiltValueField(wireName: r'conclusion')
    CheckSuiteConclusionEnum get conclusion;
    // enum conclusionEnum {  success,  failure,  neutral,  cancelled,  skipped,  timed_out,  action_required,  };

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'before')
    String get before;

    @nullable
    @BuiltValueField(wireName: r'after')
    String get after;

    @nullable
    @BuiltValueField(wireName: r'pull_requests')
    BuiltList<PullRequestMinimal> get pullRequests;

    @nullable
    @BuiltValueField(wireName: r'app')
    Integration get app;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'head_commit')
    SimpleCommit get headCommit;

    @nullable
    @BuiltValueField(wireName: r'latest_check_runs_count')
    int get latestCheckRunsCount;

    @nullable
    @BuiltValueField(wireName: r'check_runs_url')
    String get checkRunsUrl;

    // Boilerplate code needed to wire-up generated code
    CheckSuite._();

    static void _initializeBuilder(CheckSuiteBuilder b) => b;

    factory CheckSuite([void updates(CheckSuiteBuilder b)]) = _$CheckSuite;
    static Serializer<CheckSuite> get serializer => _$checkSuiteSerializer;
}

class CheckSuiteStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'queued')
  static const CheckSuiteStatusEnum queued = _$checkSuiteStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'in_progress')
  static const CheckSuiteStatusEnum inProgress = _$checkSuiteStatusEnum_inProgress;
  @BuiltValueEnumConst(wireName: r'completed')
  static const CheckSuiteStatusEnum completed = _$checkSuiteStatusEnum_completed;

  static Serializer<CheckSuiteStatusEnum> get serializer => _$checkSuiteStatusEnumSerializer;

  const CheckSuiteStatusEnum._(String name): super(name);

  static BuiltSet<CheckSuiteStatusEnum> get values => _$checkSuiteStatusEnumValues;
  static CheckSuiteStatusEnum valueOf(String name) => _$checkSuiteStatusEnumValueOf(name);
}

class CheckSuiteConclusionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'success')
  static const CheckSuiteConclusionEnum success = _$checkSuiteConclusionEnum_success;
  @BuiltValueEnumConst(wireName: r'failure')
  static const CheckSuiteConclusionEnum failure = _$checkSuiteConclusionEnum_failure;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const CheckSuiteConclusionEnum neutral = _$checkSuiteConclusionEnum_neutral;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const CheckSuiteConclusionEnum cancelled = _$checkSuiteConclusionEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const CheckSuiteConclusionEnum skipped = _$checkSuiteConclusionEnum_skipped;
  @BuiltValueEnumConst(wireName: r'timed_out')
  static const CheckSuiteConclusionEnum timedOut = _$checkSuiteConclusionEnum_timedOut;
  @BuiltValueEnumConst(wireName: r'action_required')
  static const CheckSuiteConclusionEnum actionRequired = _$checkSuiteConclusionEnum_actionRequired;

  static Serializer<CheckSuiteConclusionEnum> get serializer => _$checkSuiteConclusionEnumSerializer;

  const CheckSuiteConclusionEnum._(String name): super(name);

  static BuiltSet<CheckSuiteConclusionEnum> get values => _$checkSuiteConclusionEnumValues;
  static CheckSuiteConclusionEnum valueOf(String name) => _$checkSuiteConclusionEnumValueOf(name);
}

