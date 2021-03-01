// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'job_steps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobStepsStatusEnum _$jobStepsStatusEnum_queued =
    const JobStepsStatusEnum._('queued');
const JobStepsStatusEnum _$jobStepsStatusEnum_inProgress =
    const JobStepsStatusEnum._('inProgress');
const JobStepsStatusEnum _$jobStepsStatusEnum_completed =
    const JobStepsStatusEnum._('completed');

JobStepsStatusEnum _$jobStepsStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$jobStepsStatusEnum_queued;
    case 'inProgress':
      return _$jobStepsStatusEnum_inProgress;
    case 'completed':
      return _$jobStepsStatusEnum_completed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobStepsStatusEnum> _$jobStepsStatusEnumValues =
    new BuiltSet<JobStepsStatusEnum>(const <JobStepsStatusEnum>[
  _$jobStepsStatusEnum_queued,
  _$jobStepsStatusEnum_inProgress,
  _$jobStepsStatusEnum_completed,
]);

Serializer<JobSteps> _$jobStepsSerializer = new _$JobStepsSerializer();
Serializer<JobStepsStatusEnum> _$jobStepsStatusEnumSerializer =
    new _$JobStepsStatusEnumSerializer();

class _$JobStepsSerializer implements StructuredSerializer<JobSteps> {
  @override
  final Iterable<Type> types = const [JobSteps, _$JobSteps];
  @override
  final String wireName = 'JobSteps';

  @override
  Iterable<Object> serialize(Serializers serializers, JobSteps object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(JobStepsStatusEnum)));
    }
    if (object.conclusion != null) {
      result
        ..add('conclusion')
        ..add(serializers.serialize(object.conclusion,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.startedAt != null) {
      result
        ..add('started_at')
        ..add(serializers.serialize(object.startedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.completedAt != null) {
      result
        ..add('completed_at')
        ..add(serializers.serialize(object.completedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  JobSteps deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobStepsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(JobStepsStatusEnum))
              as JobStepsStatusEnum;
          break;
        case 'conclusion':
          result.conclusion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'started_at':
          result.startedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'completed_at':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$JobStepsStatusEnumSerializer
    implements PrimitiveSerializer<JobStepsStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'inProgress': 'in_progress',
    'completed': 'completed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'in_progress': 'inProgress',
    'completed': 'completed',
  };

  @override
  final Iterable<Type> types = const <Type>[JobStepsStatusEnum];
  @override
  final String wireName = 'JobStepsStatusEnum';

  @override
  Object serialize(Serializers serializers, JobStepsStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JobStepsStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobStepsStatusEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$JobSteps extends JobSteps {
  @override
  final JobStepsStatusEnum status;
  @override
  final String conclusion;
  @override
  final String name;
  @override
  final int number;
  @override
  final DateTime startedAt;
  @override
  final DateTime completedAt;

  factory _$JobSteps([void Function(JobStepsBuilder) updates]) =>
      (new JobStepsBuilder()..update(updates)).build();

  _$JobSteps._(
      {this.status,
      this.conclusion,
      this.name,
      this.number,
      this.startedAt,
      this.completedAt})
      : super._();

  @override
  JobSteps rebuild(void Function(JobStepsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobStepsBuilder toBuilder() => new JobStepsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobSteps &&
        status == other.status &&
        conclusion == other.conclusion &&
        name == other.name &&
        number == other.number &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, status.hashCode), conclusion.hashCode),
                    name.hashCode),
                number.hashCode),
            startedAt.hashCode),
        completedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobSteps')
          ..add('status', status)
          ..add('conclusion', conclusion)
          ..add('name', name)
          ..add('number', number)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class JobStepsBuilder implements Builder<JobSteps, JobStepsBuilder> {
  _$JobSteps _$v;

  JobStepsStatusEnum _status;
  JobStepsStatusEnum get status => _$this._status;
  set status(JobStepsStatusEnum status) => _$this._status = status;

  String _conclusion;
  String get conclusion => _$this._conclusion;
  set conclusion(String conclusion) => _$this._conclusion = conclusion;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  DateTime _startedAt;
  DateTime get startedAt => _$this._startedAt;
  set startedAt(DateTime startedAt) => _$this._startedAt = startedAt;

  DateTime _completedAt;
  DateTime get completedAt => _$this._completedAt;
  set completedAt(DateTime completedAt) => _$this._completedAt = completedAt;

  JobStepsBuilder() {
    JobSteps._initializeBuilder(this);
  }

  JobStepsBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _conclusion = _$v.conclusion;
      _name = _$v.name;
      _number = _$v.number;
      _startedAt = _$v.startedAt;
      _completedAt = _$v.completedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobSteps other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JobSteps;
  }

  @override
  void update(void Function(JobStepsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobSteps build() {
    final _$result = _$v ??
        new _$JobSteps._(
            status: status,
            conclusion: conclusion,
            name: name,
            number: number,
            startedAt: startedAt,
            completedAt: completedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
