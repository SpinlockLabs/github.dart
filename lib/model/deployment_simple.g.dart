// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'deployment_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeploymentSimple> _$deploymentSimpleSerializer =
    new _$DeploymentSimpleSerializer();

class _$DeploymentSimpleSerializer
    implements StructuredSerializer<DeploymentSimple> {
  @override
  final Iterable<Type> types = const [DeploymentSimple, _$DeploymentSimple];
  @override
  final String wireName = 'DeploymentSimple';

  @override
  Iterable<Object> serialize(Serializers serializers, DeploymentSimple object,
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
    if (object.task != null) {
      result
        ..add('task')
        ..add(serializers.serialize(object.task,
            specifiedType: const FullType(String)));
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
  DeploymentSimple deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeploymentSimpleBuilder();

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
        case 'task':
          result.task = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$DeploymentSimple extends DeploymentSimple {
  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String task;
  @override
  final String originalEnvironment;
  @override
  final String environment;
  @override
  final String description;
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

  factory _$DeploymentSimple(
          [void Function(DeploymentSimpleBuilder) updates]) =>
      (new DeploymentSimpleBuilder()..update(updates)).build();

  _$DeploymentSimple._(
      {this.url,
      this.id,
      this.nodeId,
      this.task,
      this.originalEnvironment,
      this.environment,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.statusesUrl,
      this.repositoryUrl,
      this.transientEnvironment,
      this.productionEnvironment,
      this.performedViaGithubApp})
      : super._();

  @override
  DeploymentSimple rebuild(void Function(DeploymentSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentSimpleBuilder toBuilder() =>
      new DeploymentSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeploymentSimple &&
        url == other.url &&
        id == other.id &&
        nodeId == other.nodeId &&
        task == other.task &&
        originalEnvironment == other.originalEnvironment &&
        environment == other.environment &&
        description == other.description &&
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
                                                    $jc($jc(0, url.hashCode),
                                                        id.hashCode),
                                                    nodeId.hashCode),
                                                task.hashCode),
                                            originalEnvironment.hashCode),
                                        environment.hashCode),
                                    description.hashCode),
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
    return (newBuiltValueToStringHelper('DeploymentSimple')
          ..add('url', url)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('task', task)
          ..add('originalEnvironment', originalEnvironment)
          ..add('environment', environment)
          ..add('description', description)
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

class DeploymentSimpleBuilder
    implements Builder<DeploymentSimple, DeploymentSimpleBuilder> {
  _$DeploymentSimple _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _task;
  String get task => _$this._task;
  set task(String task) => _$this._task = task;

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

  DeploymentSimpleBuilder() {
    DeploymentSimple._initializeBuilder(this);
  }

  DeploymentSimpleBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _task = _$v.task;
      _originalEnvironment = _$v.originalEnvironment;
      _environment = _$v.environment;
      _description = _$v.description;
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
  void replace(DeploymentSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeploymentSimple;
  }

  @override
  void update(void Function(DeploymentSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeploymentSimple build() {
    _$DeploymentSimple _$result;
    try {
      _$result = _$v ??
          new _$DeploymentSimple._(
              url: url,
              id: id,
              nodeId: nodeId,
              task: task,
              originalEnvironment: originalEnvironment,
              environment: environment,
              description: description,
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
        _$failedField = 'performedViaGithubApp';
        _performedViaGithubApp?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeploymentSimple', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
