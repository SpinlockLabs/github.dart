//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/job_steps.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job.g.dart';

abstract class Job implements Built<Job, JobBuilder> {

    /// The id of the job.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The id of the associated workflow run.
    @nullable
    @BuiltValueField(wireName: r'run_id')
    int get runId;

    @nullable
    @BuiltValueField(wireName: r'run_url')
    String get runUrl;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The SHA of the commit that is being run.
    @nullable
    @BuiltValueField(wireName: r'head_sha')
    String get headSha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// The phase of the lifecycle that the job is currently in.
    @nullable
    @BuiltValueField(wireName: r'status')
    JobStatusEnum get status;
    // enum statusEnum {  queued,  in_progress,  completed,  };

    /// The outcome of the job.
    @nullable
    @BuiltValueField(wireName: r'conclusion')
    String get conclusion;

    /// The time that the job started, in ISO 8601 format.
    @nullable
    @BuiltValueField(wireName: r'started_at')
    DateTime get startedAt;

    /// The time that the job finished, in ISO 8601 format.
    @nullable
    @BuiltValueField(wireName: r'completed_at')
    DateTime get completedAt;

    /// The name of the job.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Steps in this job.
    @nullable
    @BuiltValueField(wireName: r'steps')
    BuiltList<JobSteps> get steps;

    @nullable
    @BuiltValueField(wireName: r'check_run_url')
    String get checkRunUrl;

    // Boilerplate code needed to wire-up generated code
    Job._();

    static void _initializeBuilder(JobBuilder b) => b;

    factory Job([void updates(JobBuilder b)]) = _$Job;
    static Serializer<Job> get serializer => _$jobSerializer;
}

class JobStatusEnum extends EnumClass {

  /// The phase of the lifecycle that the job is currently in.
  @BuiltValueEnumConst(wireName: r'queued')
  static const JobStatusEnum queued = _$jobStatusEnum_queued;
  /// The phase of the lifecycle that the job is currently in.
  @BuiltValueEnumConst(wireName: r'in_progress')
  static const JobStatusEnum inProgress = _$jobStatusEnum_inProgress;
  /// The phase of the lifecycle that the job is currently in.
  @BuiltValueEnumConst(wireName: r'completed')
  static const JobStatusEnum completed = _$jobStatusEnum_completed;

  static Serializer<JobStatusEnum> get serializer => _$jobStatusEnumSerializer;

  const JobStatusEnum._(String name): super(name);

  static BuiltSet<JobStatusEnum> get values => _$jobStatusEnumValues;
  static JobStatusEnum valueOf(String name) => _$jobStatusEnumValueOf(name);
}

