// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'deployment_branch_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeploymentBranchPolicy> _$deploymentBranchPolicySerializer =
    new _$DeploymentBranchPolicySerializer();

class _$DeploymentBranchPolicySerializer
    implements StructuredSerializer<DeploymentBranchPolicy> {
  @override
  final Iterable<Type> types = const [
    DeploymentBranchPolicy,
    _$DeploymentBranchPolicy
  ];
  @override
  final String wireName = 'DeploymentBranchPolicy';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DeploymentBranchPolicy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.protectedBranches != null) {
      result
        ..add('protected_branches')
        ..add(serializers.serialize(object.protectedBranches,
            specifiedType: const FullType(bool)));
    }
    if (object.customBranchPolicies != null) {
      result
        ..add('custom_branch_policies')
        ..add(serializers.serialize(object.customBranchPolicies,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  DeploymentBranchPolicy deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeploymentBranchPolicyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'protected_branches':
          result.protectedBranches = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'custom_branch_policies':
          result.customBranchPolicies = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DeploymentBranchPolicy extends DeploymentBranchPolicy {
  @override
  final bool protectedBranches;
  @override
  final bool customBranchPolicies;

  factory _$DeploymentBranchPolicy(
          [void Function(DeploymentBranchPolicyBuilder) updates]) =>
      (new DeploymentBranchPolicyBuilder()..update(updates)).build();

  _$DeploymentBranchPolicy._(
      {this.protectedBranches, this.customBranchPolicies})
      : super._();

  @override
  DeploymentBranchPolicy rebuild(
          void Function(DeploymentBranchPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentBranchPolicyBuilder toBuilder() =>
      new DeploymentBranchPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeploymentBranchPolicy &&
        protectedBranches == other.protectedBranches &&
        customBranchPolicies == other.customBranchPolicies;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, protectedBranches.hashCode), customBranchPolicies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeploymentBranchPolicy')
          ..add('protectedBranches', protectedBranches)
          ..add('customBranchPolicies', customBranchPolicies))
        .toString();
  }
}

class DeploymentBranchPolicyBuilder
    implements Builder<DeploymentBranchPolicy, DeploymentBranchPolicyBuilder> {
  _$DeploymentBranchPolicy _$v;

  bool _protectedBranches;
  bool get protectedBranches => _$this._protectedBranches;
  set protectedBranches(bool protectedBranches) =>
      _$this._protectedBranches = protectedBranches;

  bool _customBranchPolicies;
  bool get customBranchPolicies => _$this._customBranchPolicies;
  set customBranchPolicies(bool customBranchPolicies) =>
      _$this._customBranchPolicies = customBranchPolicies;

  DeploymentBranchPolicyBuilder() {
    DeploymentBranchPolicy._initializeBuilder(this);
  }

  DeploymentBranchPolicyBuilder get _$this {
    if (_$v != null) {
      _protectedBranches = _$v.protectedBranches;
      _customBranchPolicies = _$v.customBranchPolicies;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeploymentBranchPolicy other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeploymentBranchPolicy;
  }

  @override
  void update(void Function(DeploymentBranchPolicyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeploymentBranchPolicy build() {
    final _$result = _$v ??
        new _$DeploymentBranchPolicy._(
            protectedBranches: protectedBranches,
            customBranchPolicies: customBranchPolicies);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
