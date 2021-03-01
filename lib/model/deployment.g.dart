// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'deployment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Deployment> _$deploymentSerializer = new _$DeploymentSerializer();

class _$DeploymentSerializer implements StructuredSerializer<Deployment> {
  @override
  final Iterable<Type> types = const [Deployment, _$Deployment];
  @override
  final String wireName = 'Deployment';

  @override
  Iterable<Object> serialize(Serializers serializers, Deployment object,
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
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.task != null) {
      result
        ..add('task')
        ..add(serializers.serialize(object.task,
            specifiedType: const FullType(String)));
    }
    if (object.payload != null) {
      result
        ..add('payload')
        ..add(serializers.serialize(object.payload,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.originalEnvironment != null) {
      result
        ..add('original_environment')
        ..add(serializers.serialize(object.originalEnvironment,
            specifiedType: const FullType(String)));
    }
    if (object.environment != null) {
      result
        ..add('environment')
        ..add(serializers.serialize(object.environment,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.creator != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(object.creator,
            specifiedType: const FullType(SimpleUser)));
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
    if (object.statusesUrl != null) {
      result
        ..add('statuses_url')
        ..add(serializers.serialize(object.statusesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.transientEnvironment != null) {
      result
        ..add('transient_environment')
        ..add(serializers.serialize(object.transientEnvironment,
            specifiedType: const FullType(bool)));
    }
    if (object.productionEnvironment != null) {
      result
        ..add('production_environment')
        ..add(serializers.serialize(object.productionEnvironment,
            specifiedType: const FullType(bool)));
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
  Deployment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeploymentBuilder();

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
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'task':
          result.task = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payload':
          result.payload = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'original_environment':
          result.originalEnvironment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment':
          result.environment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'statuses_url':
          result.statusesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transient_environment':
          result.transientEnvironment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'production_environment':
          result.productionEnvironment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$Deployment extends Deployment {
  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String sha;
  @override
  final String ref;
  @override
  final String task;
  @override
  final JsonObject payload;
  @override
  final String originalEnvironment;
  @override
  final String environment;
  @override
  final String description;
  @override
  final SimpleUser creator;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String statusesUrl;
  @override
  final String repositoryUrl;
  @override
  final bool transientEnvironment;
  @override
  final bool productionEnvironment;
  @override
  final Integration performedViaGithubApp;

  factory _$Deployment([void Function(DeploymentBuilder) updates]) =>
      (new DeploymentBuilder()..update(updates)).build();

  _$Deployment._(
      {this.url,
      this.id,
      this.nodeId,
      this.sha,
      this.ref,
      this.task,
      this.payload,
      this.originalEnvironment,
      this.environment,
      this.description,
      this.creator,
      this.createdAt,
      this.updatedAt,
      this.statusesUrl,
      this.repositoryUrl,
      this.transientEnvironment,
      this.productionEnvironment,
      this.performedViaGithubApp})
      : super._();

  @override
  Deployment rebuild(void Function(DeploymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentBuilder toBuilder() => new DeploymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Deployment &&
        url == other.url &&
        id == other.id &&
        nodeId == other.nodeId &&
        sha == other.sha &&
        ref == other.ref &&
        task == other.task &&
        payload == other.payload &&
        originalEnvironment == other.originalEnvironment &&
        environment == other.environment &&
        description == other.description &&
        creator == other.creator &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        statusesUrl == other.statusesUrl &&
        repositoryUrl == other.repositoryUrl &&
        transientEnvironment == other.transientEnvironment &&
        productionEnvironment == other.productionEnvironment &&
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
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(0,
                                                                            url.hashCode),
                                                                        id.hashCode),
                                                                    nodeId.hashCode),
                                                                sha.hashCode),
                                                            ref.hashCode),
                                                        task.hashCode),
                                                    payload.hashCode),
                                                originalEnvironment.hashCode),
                                            environment.hashCode),
                                        description.hashCode),
                                    creator.hashCode),
                                createdAt.hashCode),
                            updatedAt.hashCode),
                        statusesUrl.hashCode),
                    repositoryUrl.hashCode),
                transientEnvironment.hashCode),
            productionEnvironment.hashCode),
        performedViaGithubApp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Deployment')
          ..add('url', url)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('sha', sha)
          ..add('ref', ref)
          ..add('task', task)
          ..add('payload', payload)
          ..add('originalEnvironment', originalEnvironment)
          ..add('environment', environment)
          ..add('description', description)
          ..add('creator', creator)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('statusesUrl', statusesUrl)
          ..add('repositoryUrl', repositoryUrl)
          ..add('transientEnvironment', transientEnvironment)
          ..add('productionEnvironment', productionEnvironment)
          ..add('performedViaGithubApp', performedViaGithubApp))
        .toString();
  }
}

class DeploymentBuilder implements Builder<Deployment, DeploymentBuilder> {
  _$Deployment _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _task;
  String get task => _$this._task;
  set task(String task) => _$this._task = task;

  JsonObject _payload;
  JsonObject get payload => _$this._payload;
  set payload(JsonObject payload) => _$this._payload = payload;

  String _originalEnvironment;
  String get originalEnvironment => _$this._originalEnvironment;
  set originalEnvironment(String originalEnvironment) =>
      _$this._originalEnvironment = originalEnvironment;

  String _environment;
  String get environment => _$this._environment;
  set environment(String environment) => _$this._environment = environment;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  SimpleUserBuilder _creator;
  SimpleUserBuilder get creator => _$this._creator ??= new SimpleUserBuilder();
  set creator(SimpleUserBuilder creator) => _$this._creator = creator;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _statusesUrl;
  String get statusesUrl => _$this._statusesUrl;
  set statusesUrl(String statusesUrl) => _$this._statusesUrl = statusesUrl;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  bool _transientEnvironment;
  bool get transientEnvironment => _$this._transientEnvironment;
  set transientEnvironment(bool transientEnvironment) =>
      _$this._transientEnvironment = transientEnvironment;

  bool _productionEnvironment;
  bool get productionEnvironment => _$this._productionEnvironment;
  set productionEnvironment(bool productionEnvironment) =>
      _$this._productionEnvironment = productionEnvironment;

  IntegrationBuilder _performedViaGithubApp;
  IntegrationBuilder get performedViaGithubApp =>
      _$this._performedViaGithubApp ??= new IntegrationBuilder();
  set performedViaGithubApp(IntegrationBuilder performedViaGithubApp) =>
      _$this._performedViaGithubApp = performedViaGithubApp;

  DeploymentBuilder() {
    Deployment._initializeBuilder(this);
  }

  DeploymentBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _sha = _$v.sha;
      _ref = _$v.ref;
      _task = _$v.task;
      _payload = _$v.payload;
      _originalEnvironment = _$v.originalEnvironment;
      _environment = _$v.environment;
      _description = _$v.description;
      _creator = _$v.creator?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _statusesUrl = _$v.statusesUrl;
      _repositoryUrl = _$v.repositoryUrl;
      _transientEnvironment = _$v.transientEnvironment;
      _productionEnvironment = _$v.productionEnvironment;
      _performedViaGithubApp = _$v.performedViaGithubApp?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Deployment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Deployment;
  }

  @override
  void update(void Function(DeploymentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Deployment build() {
    _$Deployment _$result;
    try {
      _$result = _$v ??
          new _$Deployment._(
              url: url,
              id: id,
              nodeId: nodeId,
              sha: sha,
              ref: ref,
              task: task,
              payload: payload,
              originalEnvironment: originalEnvironment,
              environment: environment,
              description: description,
              creator: _creator?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              statusesUrl: statusesUrl,
              repositoryUrl: repositoryUrl,
              transientEnvironment: transientEnvironment,
              productionEnvironment: productionEnvironment,
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
            'Deployment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
