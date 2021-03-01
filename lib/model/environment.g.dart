// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'environment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Environment> _$environmentSerializer = new _$EnvironmentSerializer();

class _$EnvironmentSerializer implements StructuredSerializer<Environment> {
  @override
  final Iterable<Type> types = const [Environment, _$Environment];
  @override
  final String wireName = 'Environment';

  @override
  Iterable<Object> serialize(Serializers serializers, Environment object,
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
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
    if (object.protectionRules != null) {
      result
        ..add('protection_rules')
        ..add(serializers.serialize(object.protectionRules,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.deploymentBranchPolicy != null) {
      result
        ..add('deployment_branch_policy')
        ..add(serializers.serialize(object.deploymentBranchPolicy,
            specifiedType: const FullType(DeploymentBranchPolicy)));
    }
    return result;
  }

  @override
  Environment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnvironmentBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'protection_rules':
          result.protectionRules = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'deployment_branch_policy':
          result.deploymentBranchPolicy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DeploymentBranchPolicy))
              as DeploymentBranchPolicy);
          break;
      }
    }

    return result.build();
  }
}

class _$Environment extends Environment {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final BuiltList protectionRules;
  @override
  final DeploymentBranchPolicy deploymentBranchPolicy;

  factory _$Environment([void Function(EnvironmentBuilder) updates]) =>
      (new EnvironmentBuilder()..update(updates)).build();

  _$Environment._(
      {this.id,
      this.nodeId,
      this.name,
      this.url,
      this.htmlUrl,
      this.createdAt,
      this.updatedAt,
      this.protectionRules,
      this.deploymentBranchPolicy})
      : super._();

  @override
  Environment rebuild(void Function(EnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentBuilder toBuilder() => new EnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Environment &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        protectionRules == other.protectionRules &&
        deploymentBranchPolicy == other.deploymentBranchPolicy;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), nodeId.hashCode),
                                name.hashCode),
                            url.hashCode),
                        htmlUrl.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            protectionRules.hashCode),
        deploymentBranchPolicy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Environment')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('protectionRules', protectionRules)
          ..add('deploymentBranchPolicy', deploymentBranchPolicy))
        .toString();
  }
}

class EnvironmentBuilder implements Builder<Environment, EnvironmentBuilder> {
  _$Environment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  BuiltList _protectionRules;
  BuiltList get protectionRules => _$this._protectionRules;
  set protectionRules(BuiltList protectionRules) =>
      _$this._protectionRules = protectionRules;

  DeploymentBranchPolicyBuilder _deploymentBranchPolicy;
  DeploymentBranchPolicyBuilder get deploymentBranchPolicy =>
      _$this._deploymentBranchPolicy ??= new DeploymentBranchPolicyBuilder();
  set deploymentBranchPolicy(
          DeploymentBranchPolicyBuilder deploymentBranchPolicy) =>
      _$this._deploymentBranchPolicy = deploymentBranchPolicy;

  EnvironmentBuilder() {
    Environment._initializeBuilder(this);
  }

  EnvironmentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _protectionRules = _$v.protectionRules;
      _deploymentBranchPolicy = _$v.deploymentBranchPolicy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Environment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Environment;
  }

  @override
  void update(void Function(EnvironmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Environment build() {
    _$Environment _$result;
    try {
      _$result = _$v ??
          new _$Environment._(
              id: id,
              nodeId: nodeId,
              name: name,
              url: url,
              htmlUrl: htmlUrl,
              createdAt: createdAt,
              updatedAt: updatedAt,
              protectionRules: protectionRules,
              deploymentBranchPolicy: _deploymentBranchPolicy?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'deploymentBranchPolicy';
        _deploymentBranchPolicy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Environment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
