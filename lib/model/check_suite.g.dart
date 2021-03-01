// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_suite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CheckSuiteStatusEnum _$checkSuiteStatusEnum_queued =
    const CheckSuiteStatusEnum._('queued');
const CheckSuiteStatusEnum _$checkSuiteStatusEnum_inProgress =
    const CheckSuiteStatusEnum._('inProgress');
const CheckSuiteStatusEnum _$checkSuiteStatusEnum_completed =
    const CheckSuiteStatusEnum._('completed');

CheckSuiteStatusEnum _$checkSuiteStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$checkSuiteStatusEnum_queued;
    case 'inProgress':
      return _$checkSuiteStatusEnum_inProgress;
    case 'completed':
      return _$checkSuiteStatusEnum_completed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CheckSuiteStatusEnum> _$checkSuiteStatusEnumValues =
    new BuiltSet<CheckSuiteStatusEnum>(const <CheckSuiteStatusEnum>[
  _$checkSuiteStatusEnum_queued,
  _$checkSuiteStatusEnum_inProgress,
  _$checkSuiteStatusEnum_completed,
]);

const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_success =
    const CheckSuiteConclusionEnum._('success');
const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_failure =
    const CheckSuiteConclusionEnum._('failure');
const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_neutral =
    const CheckSuiteConclusionEnum._('neutral');
const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_cancelled =
    const CheckSuiteConclusionEnum._('cancelled');
const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_skipped =
    const CheckSuiteConclusionEnum._('skipped');
const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_timedOut =
    const CheckSuiteConclusionEnum._('timedOut');
const CheckSuiteConclusionEnum _$checkSuiteConclusionEnum_actionRequired =
    const CheckSuiteConclusionEnum._('actionRequired');

CheckSuiteConclusionEnum _$checkSuiteConclusionEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$checkSuiteConclusionEnum_success;
    case 'failure':
      return _$checkSuiteConclusionEnum_failure;
    case 'neutral':
      return _$checkSuiteConclusionEnum_neutral;
    case 'cancelled':
      return _$checkSuiteConclusionEnum_cancelled;
    case 'skipped':
      return _$checkSuiteConclusionEnum_skipped;
    case 'timedOut':
      return _$checkSuiteConclusionEnum_timedOut;
    case 'actionRequired':
      return _$checkSuiteConclusionEnum_actionRequired;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CheckSuiteConclusionEnum> _$checkSuiteConclusionEnumValues =
    new BuiltSet<CheckSuiteConclusionEnum>(const <CheckSuiteConclusionEnum>[
  _$checkSuiteConclusionEnum_success,
  _$checkSuiteConclusionEnum_failure,
  _$checkSuiteConclusionEnum_neutral,
  _$checkSuiteConclusionEnum_cancelled,
  _$checkSuiteConclusionEnum_skipped,
  _$checkSuiteConclusionEnum_timedOut,
  _$checkSuiteConclusionEnum_actionRequired,
]);

Serializer<CheckSuite> _$checkSuiteSerializer = new _$CheckSuiteSerializer();
Serializer<CheckSuiteStatusEnum> _$checkSuiteStatusEnumSerializer =
    new _$CheckSuiteStatusEnumSerializer();
Serializer<CheckSuiteConclusionEnum> _$checkSuiteConclusionEnumSerializer =
    new _$CheckSuiteConclusionEnumSerializer();

class _$CheckSuiteSerializer implements StructuredSerializer<CheckSuite> {
  @override
  final Iterable<Type> types = const [CheckSuite, _$CheckSuite];
  @override
  final String wireName = 'CheckSuite';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckSuite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
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
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(CheckSuiteStatusEnum)));
    }
    if (object.conclusion != null) {
      result
        ..add('conclusion')
        ..add(serializers.serialize(object.conclusion,
            specifiedType: const FullType(CheckSuiteConclusionEnum)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.before != null) {
      result
        ..add('before')
        ..add(serializers.serialize(object.before,
            specifiedType: const FullType(String)));
    }
    if (object.after != null) {
      result
        ..add('after')
        ..add(serializers.serialize(object.after,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequests != null) {
      result
        ..add('pull_requests')
        ..add(serializers.serialize(object.pullRequests,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PullRequestMinimal)])));
    }
    if (object.app != null) {
      result
        ..add('app')
        ..add(serializers.serialize(object.app,
            specifiedType: const FullType(Integration)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
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
    if (object.headCommit != null) {
      result
        ..add('head_commit')
        ..add(serializers.serialize(object.headCommit,
            specifiedType: const FullType(SimpleCommit)));
    }
    if (object.latestCheckRunsCount != null) {
      result
        ..add('latest_check_runs_count')
        ..add(serializers.serialize(object.latestCheckRunsCount,
            specifiedType: const FullType(int)));
    }
    if (object.checkRunsUrl != null) {
      result
        ..add('check_runs_url')
        ..add(serializers.serialize(object.checkRunsUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CheckSuite deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckSuiteBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(CheckSuiteStatusEnum))
              as CheckSuiteStatusEnum;
          break;
        case 'conclusion':
          result.conclusion = serializers.deserialize(value,
                  specifiedType: const FullType(CheckSuiteConclusionEnum))
              as CheckSuiteConclusionEnum;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'before':
          result.before = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_requests':
          result.pullRequests.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PullRequestMinimal)]))
              as BuiltList<Object>);
          break;
        case 'app':
          result.app.replace(serializers.deserialize(value,
              specifiedType: const FullType(Integration)) as Integration);
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'head_commit':
          result.headCommit.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleCommit)) as SimpleCommit);
          break;
        case 'latest_check_runs_count':
          result.latestCheckRunsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'check_runs_url':
          result.checkRunsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckSuiteStatusEnumSerializer
    implements PrimitiveSerializer<CheckSuiteStatusEnum> {
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
  final Iterable<Type> types = const <Type>[CheckSuiteStatusEnum];
  @override
  final String wireName = 'CheckSuiteStatusEnum';

  @override
  Object serialize(Serializers serializers, CheckSuiteStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckSuiteStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckSuiteStatusEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CheckSuiteConclusionEnumSerializer
    implements PrimitiveSerializer<CheckSuiteConclusionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'failure': 'failure',
    'neutral': 'neutral',
    'cancelled': 'cancelled',
    'skipped': 'skipped',
    'timedOut': 'timed_out',
    'actionRequired': 'action_required',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'failure': 'failure',
    'neutral': 'neutral',
    'cancelled': 'cancelled',
    'skipped': 'skipped',
    'timed_out': 'timedOut',
    'action_required': 'actionRequired',
  };

  @override
  final Iterable<Type> types = const <Type>[CheckSuiteConclusionEnum];
  @override
  final String wireName = 'CheckSuiteConclusionEnum';

  @override
  Object serialize(Serializers serializers, CheckSuiteConclusionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckSuiteConclusionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckSuiteConclusionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CheckSuite extends CheckSuite {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String headBranch;
  @override
  final String headSha;
  @override
  final CheckSuiteStatusEnum status;
  @override
  final CheckSuiteConclusionEnum conclusion;
  @override
  final String url;
  @override
  final String before;
  @override
  final String after;
  @override
  final BuiltList<PullRequestMinimal> pullRequests;
  @override
  final Integration app;
  @override
  final MinimalRepository repository;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final SimpleCommit headCommit;
  @override
  final int latestCheckRunsCount;
  @override
  final String checkRunsUrl;

  factory _$CheckSuite([void Function(CheckSuiteBuilder) updates]) =>
      (new CheckSuiteBuilder()..update(updates)).build();

  _$CheckSuite._(
      {this.id,
      this.nodeId,
      this.headBranch,
      this.headSha,
      this.status,
      this.conclusion,
      this.url,
      this.before,
      this.after,
      this.pullRequests,
      this.app,
      this.repository,
      this.createdAt,
      this.updatedAt,
      this.headCommit,
      this.latestCheckRunsCount,
      this.checkRunsUrl})
      : super._();

  @override
  CheckSuite rebuild(void Function(CheckSuiteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckSuiteBuilder toBuilder() => new CheckSuiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckSuite &&
        id == other.id &&
        nodeId == other.nodeId &&
        headBranch == other.headBranch &&
        headSha == other.headSha &&
        status == other.status &&
        conclusion == other.conclusion &&
        url == other.url &&
        before == other.before &&
        after == other.after &&
        pullRequests == other.pullRequests &&
        app == other.app &&
        repository == other.repository &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        headCommit == other.headCommit &&
        latestCheckRunsCount == other.latestCheckRunsCount &&
        checkRunsUrl == other.checkRunsUrl;
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
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    nodeId
                                                                        .hashCode),
                                                                headBranch
                                                                    .hashCode),
                                                            headSha.hashCode),
                                                        status.hashCode),
                                                    conclusion.hashCode),
                                                url.hashCode),
                                            before.hashCode),
                                        after.hashCode),
                                    pullRequests.hashCode),
                                app.hashCode),
                            repository.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                headCommit.hashCode),
            latestCheckRunsCount.hashCode),
        checkRunsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckSuite')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('headBranch', headBranch)
          ..add('headSha', headSha)
          ..add('status', status)
          ..add('conclusion', conclusion)
          ..add('url', url)
          ..add('before', before)
          ..add('after', after)
          ..add('pullRequests', pullRequests)
          ..add('app', app)
          ..add('repository', repository)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('headCommit', headCommit)
          ..add('latestCheckRunsCount', latestCheckRunsCount)
          ..add('checkRunsUrl', checkRunsUrl))
        .toString();
  }
}

class CheckSuiteBuilder implements Builder<CheckSuite, CheckSuiteBuilder> {
  _$CheckSuite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _headBranch;
  String get headBranch => _$this._headBranch;
  set headBranch(String headBranch) => _$this._headBranch = headBranch;

  String _headSha;
  String get headSha => _$this._headSha;
  set headSha(String headSha) => _$this._headSha = headSha;

  CheckSuiteStatusEnum _status;
  CheckSuiteStatusEnum get status => _$this._status;
  set status(CheckSuiteStatusEnum status) => _$this._status = status;

  CheckSuiteConclusionEnum _conclusion;
  CheckSuiteConclusionEnum get conclusion => _$this._conclusion;
  set conclusion(CheckSuiteConclusionEnum conclusion) =>
      _$this._conclusion = conclusion;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _before;
  String get before => _$this._before;
  set before(String before) => _$this._before = before;

  String _after;
  String get after => _$this._after;
  set after(String after) => _$this._after = after;

  ListBuilder<PullRequestMinimal> _pullRequests;
  ListBuilder<PullRequestMinimal> get pullRequests =>
      _$this._pullRequests ??= new ListBuilder<PullRequestMinimal>();
  set pullRequests(ListBuilder<PullRequestMinimal> pullRequests) =>
      _$this._pullRequests = pullRequests;

  IntegrationBuilder _app;
  IntegrationBuilder get app => _$this._app ??= new IntegrationBuilder();
  set app(IntegrationBuilder app) => _$this._app = app;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  SimpleCommitBuilder _headCommit;
  SimpleCommitBuilder get headCommit =>
      _$this._headCommit ??= new SimpleCommitBuilder();
  set headCommit(SimpleCommitBuilder headCommit) =>
      _$this._headCommit = headCommit;

  int _latestCheckRunsCount;
  int get latestCheckRunsCount => _$this._latestCheckRunsCount;
  set latestCheckRunsCount(int latestCheckRunsCount) =>
      _$this._latestCheckRunsCount = latestCheckRunsCount;

  String _checkRunsUrl;
  String get checkRunsUrl => _$this._checkRunsUrl;
  set checkRunsUrl(String checkRunsUrl) => _$this._checkRunsUrl = checkRunsUrl;

  CheckSuiteBuilder() {
    CheckSuite._initializeBuilder(this);
  }

  CheckSuiteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _headBranch = _$v.headBranch;
      _headSha = _$v.headSha;
      _status = _$v.status;
      _conclusion = _$v.conclusion;
      _url = _$v.url;
      _before = _$v.before;
      _after = _$v.after;
      _pullRequests = _$v.pullRequests?.toBuilder();
      _app = _$v.app?.toBuilder();
      _repository = _$v.repository?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _headCommit = _$v.headCommit?.toBuilder();
      _latestCheckRunsCount = _$v.latestCheckRunsCount;
      _checkRunsUrl = _$v.checkRunsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckSuite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckSuite;
  }

  @override
  void update(void Function(CheckSuiteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckSuite build() {
    _$CheckSuite _$result;
    try {
      _$result = _$v ??
          new _$CheckSuite._(
              id: id,
              nodeId: nodeId,
              headBranch: headBranch,
              headSha: headSha,
              status: status,
              conclusion: conclusion,
              url: url,
              before: before,
              after: after,
              pullRequests: _pullRequests?.build(),
              app: _app?.build(),
              repository: _repository?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              headCommit: _headCommit?.build(),
              latestCheckRunsCount: latestCheckRunsCount,
              checkRunsUrl: checkRunsUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pullRequests';
        _pullRequests?.build();
        _$failedField = 'app';
        _app?.build();
        _$failedField = 'repository';
        _repository?.build();

        _$failedField = 'headCommit';
        _headCommit?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckSuite', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
