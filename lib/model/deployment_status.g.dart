// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'deployment_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeploymentStatusStateEnum _$deploymentStatusStateEnum_error =
    const DeploymentStatusStateEnum._('error');
const DeploymentStatusStateEnum _$deploymentStatusStateEnum_failure =
    const DeploymentStatusStateEnum._('failure');
const DeploymentStatusStateEnum _$deploymentStatusStateEnum_inactive =
    const DeploymentStatusStateEnum._('inactive');
const DeploymentStatusStateEnum _$deploymentStatusStateEnum_pending =
    const DeploymentStatusStateEnum._('pending');
const DeploymentStatusStateEnum _$deploymentStatusStateEnum_success =
    const DeploymentStatusStateEnum._('success');
const DeploymentStatusStateEnum _$deploymentStatusStateEnum_queued =
    const DeploymentStatusStateEnum._('queued');
const DeploymentStatusStateEnum _$deploymentStatusStateEnum_inProgress =
    const DeploymentStatusStateEnum._('inProgress');

DeploymentStatusStateEnum _$deploymentStatusStateEnumValueOf(String name) {
  switch (name) {
    case 'error':
      return _$deploymentStatusStateEnum_error;
    case 'failure':
      return _$deploymentStatusStateEnum_failure;
    case 'inactive':
      return _$deploymentStatusStateEnum_inactive;
    case 'pending':
      return _$deploymentStatusStateEnum_pending;
    case 'success':
      return _$deploymentStatusStateEnum_success;
    case 'queued':
      return _$deploymentStatusStateEnum_queued;
    case 'inProgress':
      return _$deploymentStatusStateEnum_inProgress;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DeploymentStatusStateEnum> _$deploymentStatusStateEnumValues =
    new BuiltSet<DeploymentStatusStateEnum>(const <DeploymentStatusStateEnum>[
  _$deploymentStatusStateEnum_error,
  _$deploymentStatusStateEnum_failure,
  _$deploymentStatusStateEnum_inactive,
  _$deploymentStatusStateEnum_pending,
  _$deploymentStatusStateEnum_success,
  _$deploymentStatusStateEnum_queued,
  _$deploymentStatusStateEnum_inProgress,
]);

Serializer<DeploymentStatus> _$deploymentStatusSerializer =
    new _$DeploymentStatusSerializer();
Serializer<DeploymentStatusStateEnum> _$deploymentStatusStateEnumSerializer =
    new _$DeploymentStatusStateEnumSerializer();

class _$DeploymentStatusSerializer
    implements StructuredSerializer<DeploymentStatus> {
  @override
  final Iterable<Type> types = const [DeploymentStatus, _$DeploymentStatus];
  @override
  final String wireName = 'DeploymentStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, DeploymentStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(DeploymentStatusStateEnum)));
    }
    if (object.creator != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(object.creator,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.environment != null) {
      result
        ..add('environment')
        ..add(serializers.serialize(object.environment,
            specifiedType: const FullType(String)));
    }
    if (object.targetUrl != null) {
      result
        ..add('target_url')
        ..add(serializers.serialize(object.targetUrl,
            specifiedType: const FullType(String)));
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
    if (object.deploymentUrl != null) {
      result
        ..add('deployment_url')
        ..add(serializers.serialize(object.deploymentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.environmentUrl != null) {
      result
        ..add('environment_url')
        ..add(serializers.serialize(object.environmentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.logUrl != null) {
      result
        ..add('log_url')
        ..add(serializers.serialize(object.logUrl,
            specifiedType: const FullType(String)));
    }
    if (object.performedViaGithubApp != null) {
      result
        ..add('performed_via_github_app')
        ..add(serializers.serialize(object.performedViaGithubApp,
            specifiedType: const FullType(Integration)));
    }
    return result;
  }

  @override
  DeploymentStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeploymentStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(DeploymentStatusStateEnum))
              as DeploymentStatusStateEnum;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment':
          result.environment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target_url':
          result.targetUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'deployment_url':
          result.deploymentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment_url':
          result.environmentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'log_url':
          result.logUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'performed_via_github_app':
          result.performedViaGithubApp.replace(serializers.deserialize(value,
              specifiedType: const FullType(Integration)) as Integration);
          break;
      }
    }

    return result.build();
  }
}

class _$DeploymentStatusStateEnumSerializer
    implements PrimitiveSerializer<DeploymentStatusStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'error': 'error',
    'failure': 'failure',
    'inactive': 'inactive',
    'pending': 'pending',
    'success': 'success',
    'queued': 'queued',
    'inProgress': 'in_progress',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'error': 'error',
    'failure': 'failure',
    'inactive': 'inactive',
    'pending': 'pending',
    'success': 'success',
    'queued': 'queued',
    'in_progress': 'inProgress',
  };

  @override
  final Iterable<Type> types = const <Type>[DeploymentStatusStateEnum];
  @override
  final String wireName = 'DeploymentStatusStateEnum';

  @override
  Object serialize(Serializers serializers, DeploymentStatusStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeploymentStatusStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeploymentStatusStateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$DeploymentStatus extends DeploymentStatus {
  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final DeploymentStatusStateEnum state;
  @override
  final SimpleUser creator;
  @override
  final String description;
  @override
  final String environment;
  @override
  final String targetUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String deploymentUrl;
  @override
  final String repositoryUrl;
  @override
  final String environmentUrl;
  @override
  final String logUrl;
  @override
  final Integration performedViaGithubApp;

  factory _$DeploymentStatus(
          [void Function(DeploymentStatusBuilder) updates]) =>
      (new DeploymentStatusBuilder()..update(updates)).build();

  _$DeploymentStatus._(
      {this.url,
      this.id,
      this.nodeId,
      this.state,
      this.creator,
      this.description,
      this.environment,
      this.targetUrl,
      this.createdAt,
      this.updatedAt,
      this.deploymentUrl,
      this.repositoryUrl,
      this.environmentUrl,
      this.logUrl,
      this.performedViaGithubApp})
      : super._();

  @override
  DeploymentStatus rebuild(void Function(DeploymentStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentStatusBuilder toBuilder() =>
      new DeploymentStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeploymentStatus &&
        url == other.url &&
        id == other.id &&
        nodeId == other.nodeId &&
        state == other.state &&
        creator == other.creator &&
        description == other.description &&
        environment == other.environment &&
        targetUrl == other.targetUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deploymentUrl == other.deploymentUrl &&
        repositoryUrl == other.repositoryUrl &&
        environmentUrl == other.environmentUrl &&
        logUrl == other.logUrl &&
        performedViaGithubApp == other.performedViaGithubApp;
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
                                                            $jc(0,
                                                                url.hashCode),
                                                            id.hashCode),
                                                        nodeId.hashCode),
                                                    state.hashCode),
                                                creator.hashCode),
                                            description.hashCode),
                                        environment.hashCode),
                                    targetUrl.hashCode),
                                createdAt.hashCode),
                            updatedAt.hashCode),
                        deploymentUrl.hashCode),
                    repositoryUrl.hashCode),
                environmentUrl.hashCode),
            logUrl.hashCode),
        performedViaGithubApp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeploymentStatus')
          ..add('url', url)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('state', state)
          ..add('creator', creator)
          ..add('description', description)
          ..add('environment', environment)
          ..add('targetUrl', targetUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('deploymentUrl', deploymentUrl)
          ..add('repositoryUrl', repositoryUrl)
          ..add('environmentUrl', environmentUrl)
          ..add('logUrl', logUrl)
          ..add('performedViaGithubApp', performedViaGithubApp))
        .toString();
  }
}

class DeploymentStatusBuilder
    implements Builder<DeploymentStatus, DeploymentStatusBuilder> {
  _$DeploymentStatus _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  DeploymentStatusStateEnum _state;
  DeploymentStatusStateEnum get state => _$this._state;
  set state(DeploymentStatusStateEnum state) => _$this._state = state;

  SimpleUserBuilder _creator;
  SimpleUserBuilder get creator => _$this._creator ??= new SimpleUserBuilder();
  set creator(SimpleUserBuilder creator) => _$this._creator = creator;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _environment;
  String get environment => _$this._environment;
  set environment(String environment) => _$this._environment = environment;

  String _targetUrl;
  String get targetUrl => _$this._targetUrl;
  set targetUrl(String targetUrl) => _$this._targetUrl = targetUrl;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _deploymentUrl;
  String get deploymentUrl => _$this._deploymentUrl;
  set deploymentUrl(String deploymentUrl) =>
      _$this._deploymentUrl = deploymentUrl;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  String _environmentUrl;
  String get environmentUrl => _$this._environmentUrl;
  set environmentUrl(String environmentUrl) =>
      _$this._environmentUrl = environmentUrl;

  String _logUrl;
  String get logUrl => _$this._logUrl;
  set logUrl(String logUrl) => _$this._logUrl = logUrl;

  IntegrationBuilder _performedViaGithubApp;
  IntegrationBuilder get performedViaGithubApp =>
      _$this._performedViaGithubApp ??= new IntegrationBuilder();
  set performedViaGithubApp(IntegrationBuilder performedViaGithubApp) =>
      _$this._performedViaGithubApp = performedViaGithubApp;

  DeploymentStatusBuilder() {
    DeploymentStatus._initializeBuilder(this);
  }

  DeploymentStatusBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _state = _$v.state;
      _creator = _$v.creator?.toBuilder();
      _description = _$v.description;
      _environment = _$v.environment;
      _targetUrl = _$v.targetUrl;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _deploymentUrl = _$v.deploymentUrl;
      _repositoryUrl = _$v.repositoryUrl;
      _environmentUrl = _$v.environmentUrl;
      _logUrl = _$v.logUrl;
      _performedViaGithubApp = _$v.performedViaGithubApp?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeploymentStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeploymentStatus;
  }

  @override
  void update(void Function(DeploymentStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeploymentStatus build() {
    _$DeploymentStatus _$result;
    try {
      _$result = _$v ??
          new _$DeploymentStatus._(
              url: url,
              id: id,
              nodeId: nodeId,
              state: state,
              creator: _creator?.build(),
              description: description,
              environment: environment,
              targetUrl: targetUrl,
              createdAt: createdAt,
              updatedAt: updatedAt,
              deploymentUrl: deploymentUrl,
              repositoryUrl: repositoryUrl,
              environmentUrl: environmentUrl,
              logUrl: logUrl,
              performedViaGithubApp: _performedViaGithubApp?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();

        _$failedField = 'performedViaGithubApp';
        _performedViaGithubApp?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeploymentStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
