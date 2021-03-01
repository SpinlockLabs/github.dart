// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobStatusEnum _$jobStatusEnum_queued = const JobStatusEnum._('queued');
const JobStatusEnum _$jobStatusEnum_inProgress =
    const JobStatusEnum._('inProgress');
const JobStatusEnum _$jobStatusEnum_completed =
    const JobStatusEnum._('completed');

JobStatusEnum _$jobStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$jobStatusEnum_queued;
    case 'inProgress':
      return _$jobStatusEnum_inProgress;
    case 'completed':
      return _$jobStatusEnum_completed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobStatusEnum> _$jobStatusEnumValues =
    new BuiltSet<JobStatusEnum>(const <JobStatusEnum>[
  _$jobStatusEnum_queued,
  _$jobStatusEnum_inProgress,
  _$jobStatusEnum_completed,
]);

Serializer<Job> _$jobSerializer = new _$JobSerializer();
Serializer<JobStatusEnum> _$jobStatusEnumSerializer =
    new _$JobStatusEnumSerializer();

class _$JobSerializer implements StructuredSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];
  @override
  final String wireName = 'Job';

  @override
  Iterable<Object> serialize(Serializers serializers, Job object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.runId != null) {
      result
        ..add('run_id')
        ..add(serializers.serialize(object.runId,
            specifiedType: const FullType(int)));
    }
    if (object.runUrl != null) {
      result
        ..add('run_url')
        ..add(serializers.serialize(object.runUrl,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.headSha != null) {
      result
        ..add('head_sha')
        ..add(serializers.serialize(object.headSha,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(JobStatusEnum)));
    }
    if (object.conclusion != null) {
      result
        ..add('conclusion')
        ..add(serializers.serialize(object.conclusion,
            specifiedType: const FullType(String)));
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.steps != null) {
      result
        ..add('steps')
        ..add(serializers.serialize(object.steps,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JobSteps)])));
    }
    if (object.checkRunUrl != null) {
      result
        ..add('check_run_url')
        ..add(serializers.serialize(object.checkRunUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Job deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'run_id':
          result.runId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'run_url':
          result.runUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'head_sha':
          result.headSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(JobStatusEnum)) as JobStatusEnum;
          break;
        case 'conclusion':
          result.conclusion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'started_at':
          result.startedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'completed_at':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'steps':
          result.steps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JobSteps)]))
              as BuiltList<Object>);
          break;
        case 'check_run_url':
          result.checkRunUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$JobStatusEnumSerializer implements PrimitiveSerializer<JobStatusEnum> {
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
  final Iterable<Type> types = const <Type>[JobStatusEnum];
  @override
  final String wireName = 'JobStatusEnum';

  @override
  Object serialize(Serializers serializers, JobStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JobStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobStatusEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$Job extends Job {
  @override
  final int id;
  @override
  final int runId;
  @override
  final String runUrl;
  @override
  final String nodeId;
  @override
  final String headSha;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final JobStatusEnum status;
  @override
  final String conclusion;
  @override
  final DateTime startedAt;
  @override
  final DateTime completedAt;
  @override
  final String name;
  @override
  final BuiltList<JobSteps> steps;
  @override
  final String checkRunUrl;

  factory _$Job([void Function(JobBuilder) updates]) =>
      (new JobBuilder()..update(updates)).build();

  _$Job._(
      {this.id,
      this.runId,
      this.runUrl,
      this.nodeId,
      this.headSha,
      this.url,
      this.htmlUrl,
      this.status,
      this.conclusion,
      this.startedAt,
      this.completedAt,
      this.name,
      this.steps,
      this.checkRunUrl})
      : super._();

  @override
  Job rebuild(void Function(JobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobBuilder toBuilder() => new JobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Job &&
        id == other.id &&
        runId == other.runId &&
        runUrl == other.runUrl &&
        nodeId == other.nodeId &&
        headSha == other.headSha &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        status == other.status &&
        conclusion == other.conclusion &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt &&
        name == other.name &&
        steps == other.steps &&
        checkRunUrl == other.checkRunUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        runId.hashCode),
                                                    runUrl.hashCode),
                                                nodeId.hashCode),
                                            headSha.hashCode),
                                        url.hashCode),
                                    htmlUrl.hashCode),
                                status.hashCode),
                            conclusion.hashCode),
                        startedAt.hashCode),
                    completedAt.hashCode),
                name.hashCode),
            steps.hashCode),
        checkRunUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Job')
          ..add('id', id)
          ..add('runId', runId)
          ..add('runUrl', runUrl)
          ..add('nodeId', nodeId)
          ..add('headSha', headSha)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('status', status)
          ..add('conclusion', conclusion)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt)
          ..add('name', name)
          ..add('steps', steps)
          ..add('checkRunUrl', checkRunUrl))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder> {
  _$Job _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _runId;
  int get runId => _$this._runId;
  set runId(int runId) => _$this._runId = runId;

  String _runUrl;
  String get runUrl => _$this._runUrl;
  set runUrl(String runUrl) => _$this._runUrl = runUrl;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _headSha;
  String get headSha => _$this._headSha;
  set headSha(String headSha) => _$this._headSha = headSha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  JobStatusEnum _status;
  JobStatusEnum get status => _$this._status;
  set status(JobStatusEnum status) => _$this._status = status;

  String _conclusion;
  String get conclusion => _$this._conclusion;
  set conclusion(String conclusion) => _$this._conclusion = conclusion;

  DateTime _startedAt;
  DateTime get startedAt => _$this._startedAt;
  set startedAt(DateTime startedAt) => _$this._startedAt = startedAt;

  DateTime _completedAt;
  DateTime get completedAt => _$this._completedAt;
  set completedAt(DateTime completedAt) => _$this._completedAt = completedAt;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<JobSteps> _steps;
  ListBuilder<JobSteps> get steps =>
      _$this._steps ??= new ListBuilder<JobSteps>();
  set steps(ListBuilder<JobSteps> steps) => _$this._steps = steps;

  String _checkRunUrl;
  String get checkRunUrl => _$this._checkRunUrl;
  set checkRunUrl(String checkRunUrl) => _$this._checkRunUrl = checkRunUrl;

  JobBuilder() {
    Job._initializeBuilder(this);
  }

  JobBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _runId = _$v.runId;
      _runUrl = _$v.runUrl;
      _nodeId = _$v.nodeId;
      _headSha = _$v.headSha;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _status = _$v.status;
      _conclusion = _$v.conclusion;
      _startedAt = _$v.startedAt;
      _completedAt = _$v.completedAt;
      _name = _$v.name;
      _steps = _$v.steps?.toBuilder();
      _checkRunUrl = _$v.checkRunUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Job other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Job;
  }

  @override
  void update(void Function(JobBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Job build() {
    _$Job _$result;
    try {
      _$result = _$v ??
          new _$Job._(
              id: id,
              runId: runId,
              runUrl: runUrl,
              nodeId: nodeId,
              headSha: headSha,
              url: url,
              htmlUrl: htmlUrl,
              status: status,
              conclusion: conclusion,
              startedAt: startedAt,
              completedAt: completedAt,
              name: name,
              steps: _steps?.build(),
              checkRunUrl: checkRunUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'steps';
        _steps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Job', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
