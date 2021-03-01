//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_steps.g.dart';

abstract class JobSteps implements Built<JobSteps, JobStepsBuilder> {

    /// The phase of the lifecycle that the job is currently in.
    @nullable
    @BuiltValueField(wireName: r'status')
    JobStepsStatusEnum get status;
    // enum statusEnum {  queued,  in_progress,  completed,  };

    /// The outcome of the job.
    @nullable
    @BuiltValueField(wireName: r'conclusion')
    String get conclusion;

    /// The name of the job.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// The time that the step started, in ISO 8601 format.
    @nullable
    @BuiltValueField(wireName: r'started_at')
    DateTime get startedAt;

    /// The time that the job finished, in ISO 8601 format.
    @nullable
    @BuiltValueField(wireName: r'completed_at')
    DateTime get completedAt;

    // Boilerplate code needed to wire-up generated code
    JobSteps._();

    static void _initializeBuilder(JobStepsBuilder b) => b;

    factory JobSteps([void updates(JobStepsBuilder b)]) = _$JobSteps;
    static Serializer<JobSteps> get serializer => _$jobStepsSerializer;
}

class JobStepsStatusEnum extends EnumClass {

  /// The phase of the lifecycle that the job is currently in.
  @BuiltValueEnumConst(wireName: r'queued')
  static const JobStepsStatusEnum queued = _$jobStepsStatusEnum_queued;
  /// The phase of the lifecycle that the job is currently in.
  @BuiltValueEnumConst(wireName: r'in_progress')
  static const JobStepsStatusEnum inProgress = _$jobStepsStatusEnum_inProgress;
  /// The phase of the lifecycle that the job is currently in.
  @BuiltValueEnumConst(wireName: r'completed')
  static const JobStepsStatusEnum completed = _$jobStepsStatusEnum_completed;

  static Serializer<JobStepsStatusEnum> get serializer => _$jobStepsStatusEnumSerializer;

  const JobStepsStatusEnum._(String name): super(name);

  static BuiltSet<JobStepsStatusEnum> get values => _$jobStepsStatusEnumValues;
  static JobStepsStatusEnum valueOf(String name) => _$jobStepsStatusEnumValueOf(name);
}

