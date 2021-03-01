// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CheckRunStatusEnum _$checkRunStatusEnum_queued =
    const CheckRunStatusEnum._('queued');
const CheckRunStatusEnum _$checkRunStatusEnum_inProgress =
    const CheckRunStatusEnum._('inProgress');
const CheckRunStatusEnum _$checkRunStatusEnum_completed =
    const CheckRunStatusEnum._('completed');

CheckRunStatusEnum _$checkRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$checkRunStatusEnum_queued;
    case 'inProgress':
      return _$checkRunStatusEnum_inProgress;
    case 'completed':
      return _$checkRunStatusEnum_completed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CheckRunStatusEnum> _$checkRunStatusEnumValues =
    new BuiltSet<CheckRunStatusEnum>(const <CheckRunStatusEnum>[
  _$checkRunStatusEnum_queued,
  _$checkRunStatusEnum_inProgress,
  _$checkRunStatusEnum_completed,
]);

const CheckRunConclusionEnum _$checkRunConclusionEnum_success =
    const CheckRunConclusionEnum._('success');
const CheckRunConclusionEnum _$checkRunConclusionEnum_failure =
    const CheckRunConclusionEnum._('failure');
const CheckRunConclusionEnum _$checkRunConclusionEnum_neutral =
    const CheckRunConclusionEnum._('neutral');
const CheckRunConclusionEnum _$checkRunConclusionEnum_cancelled =
    const CheckRunConclusionEnum._('cancelled');
const CheckRunConclusionEnum _$checkRunConclusionEnum_skipped =
    const CheckRunConclusionEnum._('skipped');
const CheckRunConclusionEnum _$checkRunConclusionEnum_timedOut =
    const CheckRunConclusionEnum._('timedOut');
const CheckRunConclusionEnum _$checkRunConclusionEnum_actionRequired =
    const CheckRunConclusionEnum._('actionRequired');

CheckRunConclusionEnum _$checkRunConclusionEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$checkRunConclusionEnum_success;
    case 'failure':
      return _$checkRunConclusionEnum_failure;
    case 'neutral':
      return _$checkRunConclusionEnum_neutral;
    case 'cancelled':
      return _$checkRunConclusionEnum_cancelled;
    case 'skipped':
      return _$checkRunConclusionEnum_skipped;
    case 'timedOut':
      return _$checkRunConclusionEnum_timedOut;
    case 'actionRequired':
      return _$checkRunConclusionEnum_actionRequired;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CheckRunConclusionEnum> _$checkRunConclusionEnumValues =
    new BuiltSet<CheckRunConclusionEnum>(const <CheckRunConclusionEnum>[
  _$checkRunConclusionEnum_success,
  _$checkRunConclusionEnum_failure,
  _$checkRunConclusionEnum_neutral,
  _$checkRunConclusionEnum_cancelled,
  _$checkRunConclusionEnum_skipped,
  _$checkRunConclusionEnum_timedOut,
  _$checkRunConclusionEnum_actionRequired,
]);

Serializer<CheckRun> _$checkRunSerializer = new _$CheckRunSerializer();
Serializer<CheckRunStatusEnum> _$checkRunStatusEnumSerializer =
    new _$CheckRunStatusEnumSerializer();
Serializer<CheckRunConclusionEnum> _$checkRunConclusionEnumSerializer =
    new _$CheckRunConclusionEnumSerializer();

class _$CheckRunSerializer implements StructuredSerializer<CheckRun> {
  @override
  final Iterable<Type> types = const [CheckRun, _$CheckRun];
  @override
  final String wireName = 'CheckRun';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckRun object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.headSha != null) {
      result
        ..add('head_sha')
        ..add(serializers.serialize(object.headSha,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.externalId != null) {
      result
        ..add('external_id')
        ..add(serializers.serialize(object.externalId,
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
    if (object.detailsUrl != null) {
      result
        ..add('details_url')
        ..add(serializers.serialize(object.detailsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(CheckRunStatusEnum)));
    }
    if (object.conclusion != null) {
      result
        ..add('conclusion')
        ..add(serializers.serialize(object.conclusion,
            specifiedType: const FullType(CheckRunConclusionEnum)));
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
    if (object.output != null) {
      result
        ..add('output')
        ..add(serializers.serialize(object.output,
            specifiedType: const FullType(CheckRunOutput)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.checkSuite != null) {
      result
        ..add('check_suite')
        ..add(serializers.serialize(object.checkSuite,
            specifiedType: const FullType(CheckRunCheckSuite)));
    }
    if (object.app != null) {
      result
        ..add('app')
        ..add(serializers.serialize(object.app,
            specifiedType: const FullType(Integration)));
    }
    if (object.pullRequests != null) {
      result
        ..add('pull_requests')
        ..add(serializers.serialize(object.pullRequests,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PullRequestMinimal)])));
    }
    if (object.deployment != null) {
      result
        ..add('deployment')
        ..add(serializers.serialize(object.deployment,
            specifiedType: const FullType(DeploymentSimple)));
    }
    return result;
  }

  @override
  CheckRun deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckRunBuilder();

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
        case 'head_sha':
          result.headSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'external_id':
          result.externalId = serializers.deserialize(value,
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
        case 'details_url':
          result.detailsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(CheckRunStatusEnum))
              as CheckRunStatusEnum;
          break;
        case 'conclusion':
          result.conclusion = serializers.deserialize(value,
                  specifiedType: const FullType(CheckRunConclusionEnum))
              as CheckRunConclusionEnum;
          break;
        case 'started_at':
          result.startedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'completed_at':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(CheckRunOutput)) as CheckRunOutput);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'check_suite':
          result.checkSuite.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CheckRunCheckSuite))
              as CheckRunCheckSuite);
          break;
        case 'app':
          result.app.replace(serializers.deserialize(value,
              specifiedType: const FullType(Integration)) as Integration);
          break;
        case 'pull_requests':
          result.pullRequests.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PullRequestMinimal)]))
              as BuiltList<Object>);
          break;
        case 'deployment':
          result.deployment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DeploymentSimple))
              as DeploymentSimple);
          break;
      }
    }

    return result.build();
  }
}

class _$CheckRunStatusEnumSerializer
    implements PrimitiveSerializer<CheckRunStatusEnum> {
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
  final Iterable<Type> types = const <Type>[CheckRunStatusEnum];
  @override
  final String wireName = 'CheckRunStatusEnum';

  @override
  Object serialize(Serializers serializers, CheckRunStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckRunStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckRunStatusEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$CheckRunConclusionEnumSerializer
    implements PrimitiveSerializer<CheckRunConclusionEnum> {
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
  final Iterable<Type> types = const <Type>[CheckRunConclusionEnum];
  @override
  final String wireName = 'CheckRunConclusionEnum';

  @override
  Object serialize(Serializers serializers, CheckRunConclusionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckRunConclusionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckRunConclusionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CheckRun extends CheckRun {
  @override
  final int id;
  @override
  final String headSha;
  @override
  final String nodeId;
  @override
  final String externalId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String detailsUrl;
  @override
  final CheckRunStatusEnum status;
  @override
  final CheckRunConclusionEnum conclusion;
  @override
  final DateTime startedAt;
  @override
  final DateTime completedAt;
  @override
  final CheckRunOutput output;
  @override
  final String name;
  @override
  final CheckRunCheckSuite checkSuite;
  @override
  final Integration app;
  @override
  final BuiltList<PullRequestMinimal> pullRequests;
  @override
  final DeploymentSimple deployment;

  factory _$CheckRun([void Function(CheckRunBuilder) updates]) =>
      (new CheckRunBuilder()..update(updates)).build();

  _$CheckRun._(
      {this.id,
      this.headSha,
      this.nodeId,
      this.externalId,
      this.url,
      this.htmlUrl,
      this.detailsUrl,
      this.status,
      this.conclusion,
      this.startedAt,
      this.completedAt,
      this.output,
      this.name,
      this.checkSuite,
      this.app,
      this.pullRequests,
      this.deployment})
      : super._();

  @override
  CheckRun rebuild(void Function(CheckRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckRunBuilder toBuilder() => new CheckRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckRun &&
        id == other.id &&
        headSha == other.headSha &&
        nodeId == other.nodeId &&
        externalId == other.externalId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        detailsUrl == other.detailsUrl &&
        status == other.status &&
        conclusion == other.conclusion &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt &&
        output == other.output &&
        name == other.name &&
        checkSuite == other.checkSuite &&
        app == other.app &&
        pullRequests == other.pullRequests &&
        deployment == other.deployment;
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
                                                                    headSha
                                                                        .hashCode),
                                                                nodeId
                                                                    .hashCode),
                                                            externalId
                                                                .hashCode),
                                                        url.hashCode),
                                                    htmlUrl.hashCode),
                                                detailsUrl.hashCode),
                                            status.hashCode),
                                        conclusion.hashCode),
                                    startedAt.hashCode),
                                completedAt.hashCode),
                            output.hashCode),
                        name.hashCode),
                    checkSuite.hashCode),
                app.hashCode),
            pullRequests.hashCode),
        deployment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckRun')
          ..add('id', id)
          ..add('headSha', headSha)
          ..add('nodeId', nodeId)
          ..add('externalId', externalId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('detailsUrl', detailsUrl)
          ..add('status', status)
          ..add('conclusion', conclusion)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt)
          ..add('output', output)
          ..add('name', name)
          ..add('checkSuite', checkSuite)
          ..add('app', app)
          ..add('pullRequests', pullRequests)
          ..add('deployment', deployment))
        .toString();
  }
}

class CheckRunBuilder implements Builder<CheckRun, CheckRunBuilder> {
  _$CheckRun _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _headSha;
  String get headSha => _$this._headSha;
  set headSha(String headSha) => _$this._headSha = headSha;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _externalId;
  String get externalId => _$this._externalId;
  set externalId(String externalId) => _$this._externalId = externalId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _detailsUrl;
  String get detailsUrl => _$this._detailsUrl;
  set detailsUrl(String detailsUrl) => _$this._detailsUrl = detailsUrl;

  CheckRunStatusEnum _status;
  CheckRunStatusEnum get status => _$this._status;
  set status(CheckRunStatusEnum status) => _$this._status = status;

  CheckRunConclusionEnum _conclusion;
  CheckRunConclusionEnum get conclusion => _$this._conclusion;
  set conclusion(CheckRunConclusionEnum conclusion) =>
      _$this._conclusion = conclusion;

  DateTime _startedAt;
  DateTime get startedAt => _$this._startedAt;
  set startedAt(DateTime startedAt) => _$this._startedAt = startedAt;

  DateTime _completedAt;
  DateTime get completedAt => _$this._completedAt;
  set completedAt(DateTime completedAt) => _$this._completedAt = completedAt;

  CheckRunOutputBuilder _output;
  CheckRunOutputBuilder get output =>
      _$this._output ??= new CheckRunOutputBuilder();
  set output(CheckRunOutputBuilder output) => _$this._output = output;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CheckRunCheckSuiteBuilder _checkSuite;
  CheckRunCheckSuiteBuilder get checkSuite =>
      _$this._checkSuite ??= new CheckRunCheckSuiteBuilder();
  set checkSuite(CheckRunCheckSuiteBuilder checkSuite) =>
      _$this._checkSuite = checkSuite;

  IntegrationBuilder _app;
  IntegrationBuilder get app => _$this._app ??= new IntegrationBuilder();
  set app(IntegrationBuilder app) => _$this._app = app;

  ListBuilder<PullRequestMinimal> _pullRequests;
  ListBuilder<PullRequestMinimal> get pullRequests =>
      _$this._pullRequests ??= new ListBuilder<PullRequestMinimal>();
  set pullRequests(ListBuilder<PullRequestMinimal> pullRequests) =>
      _$this._pullRequests = pullRequests;

  DeploymentSimpleBuilder _deployment;
  DeploymentSimpleBuilder get deployment =>
      _$this._deployment ??= new DeploymentSimpleBuilder();
  set deployment(DeploymentSimpleBuilder deployment) =>
      _$this._deployment = deployment;

  CheckRunBuilder() {
    CheckRun._initializeBuilder(this);
  }

  CheckRunBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _headSha = _$v.headSha;
      _nodeId = _$v.nodeId;
      _externalId = _$v.externalId;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _detailsUrl = _$v.detailsUrl;
      _status = _$v.status;
      _conclusion = _$v.conclusion;
      _startedAt = _$v.startedAt;
      _completedAt = _$v.completedAt;
      _output = _$v.output?.toBuilder();
      _name = _$v.name;
      _checkSuite = _$v.checkSuite?.toBuilder();
      _app = _$v.app?.toBuilder();
      _pullRequests = _$v.pullRequests?.toBuilder();
      _deployment = _$v.deployment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckRun other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckRun;
  }

  @override
  void update(void Function(CheckRunBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckRun build() {
    _$CheckRun _$result;
    try {
      _$result = _$v ??
          new _$CheckRun._(
              id: id,
              headSha: headSha,
              nodeId: nodeId,
              externalId: externalId,
              url: url,
              htmlUrl: htmlUrl,
              detailsUrl: detailsUrl,
              status: status,
              conclusion: conclusion,
              startedAt: startedAt,
              completedAt: completedAt,
              output: _output?.build(),
              name: name,
              checkSuite: _checkSuite?.build(),
              app: _app?.build(),
              pullRequests: _pullRequests?.build(),
              deployment: _deployment?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'output';
        _output?.build();

        _$failedField = 'checkSuite';
        _checkSuite?.build();
        _$failedField = 'app';
        _app?.build();
        _$failedField = 'pullRequests';
        _pullRequests?.build();
        _$failedField = 'deployment';
        _deployment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckRun', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
