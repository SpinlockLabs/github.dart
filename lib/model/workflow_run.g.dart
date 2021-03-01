// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkflowRun> _$workflowRunSerializer = new _$WorkflowRunSerializer();

class _$WorkflowRunSerializer implements StructuredSerializer<WorkflowRun> {
  @override
  final Iterable<Type> types = const [WorkflowRun, _$WorkflowRun];
  @override
  final String wireName = 'WorkflowRun';

  @override
  Iterable<Object> serialize(Serializers serializers, WorkflowRun object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.headBranch != null) {
      result
        ..add('head_branch')
        ..add(serializers.serialize(object.headBranch,
            specifiedType: const FullType(String)));
    }
    if (object.headSha != null) {
      result
        ..add('head_sha')
        ..add(serializers.serialize(object.headSha,
            specifiedType: const FullType(String)));
    }
    if (object.runNumber != null) {
      result
        ..add('run_number')
        ..add(serializers.serialize(object.runNumber,
            specifiedType: const FullType(int)));
    }
    if (object.event != null) {
      result
        ..add('event')
        ..add(serializers.serialize(object.event,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.conclusion != null) {
      result
        ..add('conclusion')
        ..add(serializers.serialize(object.conclusion,
            specifiedType: const FullType(String)));
    }
    if (object.workflowId != null) {
      result
        ..add('workflow_id')
        ..add(serializers.serialize(object.workflowId,
            specifiedType: const FullType(int)));
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
    if (object.pullRequests != null) {
      result
        ..add('pull_requests')
        ..add(serializers.serialize(object.pullRequests,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PullRequestMinimal)])));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.jobsUrl != null) {
      result
        ..add('jobs_url')
        ..add(serializers.serialize(object.jobsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.logsUrl != null) {
      result
        ..add('logs_url')
        ..add(serializers.serialize(object.logsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.checkSuiteUrl != null) {
      result
        ..add('check_suite_url')
        ..add(serializers.serialize(object.checkSuiteUrl,
            specifiedType: const FullType(String)));
    }
    if (object.artifactsUrl != null) {
      result
        ..add('artifacts_url')
        ..add(serializers.serialize(object.artifactsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.cancelUrl != null) {
      result
        ..add('cancel_url')
        ..add(serializers.serialize(object.cancelUrl,
            specifiedType: const FullType(String)));
    }
    if (object.rerunUrl != null) {
      result
        ..add('rerun_url')
        ..add(serializers.serialize(object.rerunUrl,
            specifiedType: const FullType(String)));
    }
    if (object.workflowUrl != null) {
      result
        ..add('workflow_url')
        ..add(serializers.serialize(object.workflowUrl,
            specifiedType: const FullType(String)));
    }
    if (object.headCommit != null) {
      result
        ..add('head_commit')
        ..add(serializers.serialize(object.headCommit,
            specifiedType: const FullType(SimpleCommit)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.headRepository != null) {
      result
        ..add('head_repository')
        ..add(serializers.serialize(object.headRepository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.headRepositoryId != null) {
      result
        ..add('head_repository_id')
        ..add(serializers.serialize(object.headRepositoryId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WorkflowRun deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowRunBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'head_branch':
          result.headBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'head_sha':
          result.headSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'run_number':
          result.runNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'conclusion':
          result.conclusion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workflow_id':
          result.workflowId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_requests':
          result.pullRequests.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PullRequestMinimal)]))
              as BuiltList<Object>);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'jobs_url':
          result.jobsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logs_url':
          result.logsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'check_suite_url':
          result.checkSuiteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artifacts_url':
          result.artifactsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cancel_url':
          result.cancelUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rerun_url':
          result.rerunUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workflow_url':
          result.workflowUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'head_commit':
          result.headCommit.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleCommit)) as SimpleCommit);
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'head_repository':
          result.headRepository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'head_repository_id':
          result.headRepositoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowRun extends WorkflowRun {
  @override
  final int id;
  @override
  final String name;
  @override
  final String nodeId;
  @override
  final String headBranch;
  @override
  final String headSha;
  @override
  final int runNumber;
  @override
  final String event;
  @override
  final String status;
  @override
  final String conclusion;
  @override
  final int workflowId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final BuiltList<PullRequestMinimal> pullRequests;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String jobsUrl;
  @override
  final String logsUrl;
  @override
  final String checkSuiteUrl;
  @override
  final String artifactsUrl;
  @override
  final String cancelUrl;
  @override
  final String rerunUrl;
  @override
  final String workflowUrl;
  @override
  final SimpleCommit headCommit;
  @override
  final MinimalRepository repository;
  @override
  final MinimalRepository headRepository;
  @override
  final int headRepositoryId;

  factory _$WorkflowRun([void Function(WorkflowRunBuilder) updates]) =>
      (new WorkflowRunBuilder()..update(updates)).build();

  _$WorkflowRun._(
      {this.id,
      this.name,
      this.nodeId,
      this.headBranch,
      this.headSha,
      this.runNumber,
      this.event,
      this.status,
      this.conclusion,
      this.workflowId,
      this.url,
      this.htmlUrl,
      this.pullRequests,
      this.createdAt,
      this.updatedAt,
      this.jobsUrl,
      this.logsUrl,
      this.checkSuiteUrl,
      this.artifactsUrl,
      this.cancelUrl,
      this.rerunUrl,
      this.workflowUrl,
      this.headCommit,
      this.repository,
      this.headRepository,
      this.headRepositoryId})
      : super._();

  @override
  WorkflowRun rebuild(void Function(WorkflowRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowRunBuilder toBuilder() => new WorkflowRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowRun &&
        id == other.id &&
        name == other.name &&
        nodeId == other.nodeId &&
        headBranch == other.headBranch &&
        headSha == other.headSha &&
        runNumber == other.runNumber &&
        event == other.event &&
        status == other.status &&
        conclusion == other.conclusion &&
        workflowId == other.workflowId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        pullRequests == other.pullRequests &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        jobsUrl == other.jobsUrl &&
        logsUrl == other.logsUrl &&
        checkSuiteUrl == other.checkSuiteUrl &&
        artifactsUrl == other.artifactsUrl &&
        cancelUrl == other.cancelUrl &&
        rerunUrl == other.rerunUrl &&
        workflowUrl == other.workflowUrl &&
        headCommit == other.headCommit &&
        repository == other.repository &&
        headRepository == other.headRepository &&
        headRepositoryId == other.headRepositoryId;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), name.hashCode), nodeId.hashCode), headBranch.hashCode), headSha.hashCode), runNumber.hashCode), event.hashCode),
                                                                                status.hashCode),
                                                                            conclusion.hashCode),
                                                                        workflowId.hashCode),
                                                                    url.hashCode),
                                                                htmlUrl.hashCode),
                                                            pullRequests.hashCode),
                                                        createdAt.hashCode),
                                                    updatedAt.hashCode),
                                                jobsUrl.hashCode),
                                            logsUrl.hashCode),
                                        checkSuiteUrl.hashCode),
                                    artifactsUrl.hashCode),
                                cancelUrl.hashCode),
                            rerunUrl.hashCode),
                        workflowUrl.hashCode),
                    headCommit.hashCode),
                repository.hashCode),
            headRepository.hashCode),
        headRepositoryId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkflowRun')
          ..add('id', id)
          ..add('name', name)
          ..add('nodeId', nodeId)
          ..add('headBranch', headBranch)
          ..add('headSha', headSha)
          ..add('runNumber', runNumber)
          ..add('event', event)
          ..add('status', status)
          ..add('conclusion', conclusion)
          ..add('workflowId', workflowId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('pullRequests', pullRequests)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('jobsUrl', jobsUrl)
          ..add('logsUrl', logsUrl)
          ..add('checkSuiteUrl', checkSuiteUrl)
          ..add('artifactsUrl', artifactsUrl)
          ..add('cancelUrl', cancelUrl)
          ..add('rerunUrl', rerunUrl)
          ..add('workflowUrl', workflowUrl)
          ..add('headCommit', headCommit)
          ..add('repository', repository)
          ..add('headRepository', headRepository)
          ..add('headRepositoryId', headRepositoryId))
        .toString();
  }
}

class WorkflowRunBuilder implements Builder<WorkflowRun, WorkflowRunBuilder> {
  _$WorkflowRun _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _headBranch;
  String get headBranch => _$this._headBranch;
  set headBranch(String headBranch) => _$this._headBranch = headBranch;

  String _headSha;
  String get headSha => _$this._headSha;
  set headSha(String headSha) => _$this._headSha = headSha;

  int _runNumber;
  int get runNumber => _$this._runNumber;
  set runNumber(int runNumber) => _$this._runNumber = runNumber;

  String _event;
  String get event => _$this._event;
  set event(String event) => _$this._event = event;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _conclusion;
  String get conclusion => _$this._conclusion;
  set conclusion(String conclusion) => _$this._conclusion = conclusion;

  int _workflowId;
  int get workflowId => _$this._workflowId;
  set workflowId(int workflowId) => _$this._workflowId = workflowId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  ListBuilder<PullRequestMinimal> _pullRequests;
  ListBuilder<PullRequestMinimal> get pullRequests =>
      _$this._pullRequests ??= new ListBuilder<PullRequestMinimal>();
  set pullRequests(ListBuilder<PullRequestMinimal> pullRequests) =>
      _$this._pullRequests = pullRequests;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _jobsUrl;
  String get jobsUrl => _$this._jobsUrl;
  set jobsUrl(String jobsUrl) => _$this._jobsUrl = jobsUrl;

  String _logsUrl;
  String get logsUrl => _$this._logsUrl;
  set logsUrl(String logsUrl) => _$this._logsUrl = logsUrl;

  String _checkSuiteUrl;
  String get checkSuiteUrl => _$this._checkSuiteUrl;
  set checkSuiteUrl(String checkSuiteUrl) =>
      _$this._checkSuiteUrl = checkSuiteUrl;

  String _artifactsUrl;
  String get artifactsUrl => _$this._artifactsUrl;
  set artifactsUrl(String artifactsUrl) => _$this._artifactsUrl = artifactsUrl;

  String _cancelUrl;
  String get cancelUrl => _$this._cancelUrl;
  set cancelUrl(String cancelUrl) => _$this._cancelUrl = cancelUrl;

  String _rerunUrl;
  String get rerunUrl => _$this._rerunUrl;
  set rerunUrl(String rerunUrl) => _$this._rerunUrl = rerunUrl;

  String _workflowUrl;
  String get workflowUrl => _$this._workflowUrl;
  set workflowUrl(String workflowUrl) => _$this._workflowUrl = workflowUrl;

  SimpleCommitBuilder _headCommit;
  SimpleCommitBuilder get headCommit =>
      _$this._headCommit ??= new SimpleCommitBuilder();
  set headCommit(SimpleCommitBuilder headCommit) =>
      _$this._headCommit = headCommit;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  MinimalRepositoryBuilder _headRepository;
  MinimalRepositoryBuilder get headRepository =>
      _$this._headRepository ??= new MinimalRepositoryBuilder();
  set headRepository(MinimalRepositoryBuilder headRepository) =>
      _$this._headRepository = headRepository;

  int _headRepositoryId;
  int get headRepositoryId => _$this._headRepositoryId;
  set headRepositoryId(int headRepositoryId) =>
      _$this._headRepositoryId = headRepositoryId;

  WorkflowRunBuilder() {
    WorkflowRun._initializeBuilder(this);
  }

  WorkflowRunBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nodeId = _$v.nodeId;
      _headBranch = _$v.headBranch;
      _headSha = _$v.headSha;
      _runNumber = _$v.runNumber;
      _event = _$v.event;
      _status = _$v.status;
      _conclusion = _$v.conclusion;
      _workflowId = _$v.workflowId;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _pullRequests = _$v.pullRequests?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _jobsUrl = _$v.jobsUrl;
      _logsUrl = _$v.logsUrl;
      _checkSuiteUrl = _$v.checkSuiteUrl;
      _artifactsUrl = _$v.artifactsUrl;
      _cancelUrl = _$v.cancelUrl;
      _rerunUrl = _$v.rerunUrl;
      _workflowUrl = _$v.workflowUrl;
      _headCommit = _$v.headCommit?.toBuilder();
      _repository = _$v.repository?.toBuilder();
      _headRepository = _$v.headRepository?.toBuilder();
      _headRepositoryId = _$v.headRepositoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowRun other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkflowRun;
  }

  @override
  void update(void Function(WorkflowRunBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkflowRun build() {
    _$WorkflowRun _$result;
    try {
      _$result = _$v ??
          new _$WorkflowRun._(
              id: id,
              name: name,
              nodeId: nodeId,
              headBranch: headBranch,
              headSha: headSha,
              runNumber: runNumber,
              event: event,
              status: status,
              conclusion: conclusion,
              workflowId: workflowId,
              url: url,
              htmlUrl: htmlUrl,
              pullRequests: _pullRequests?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              jobsUrl: jobsUrl,
              logsUrl: logsUrl,
              checkSuiteUrl: checkSuiteUrl,
              artifactsUrl: artifactsUrl,
              cancelUrl: cancelUrl,
              rerunUrl: rerunUrl,
              workflowUrl: workflowUrl,
              headCommit: _headCommit?.build(),
              repository: _repository?.build(),
              headRepository: _headRepository?.build(),
              headRepositoryId: headRepositoryId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pullRequests';
        _pullRequests?.build();

        _$failedField = 'headCommit';
        _headCommit?.build();
        _$failedField = 'repository';
        _repository?.build();
        _$failedField = 'headRepository';
        _headRepository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WorkflowRun', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
