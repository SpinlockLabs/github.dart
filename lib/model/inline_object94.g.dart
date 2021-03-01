// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object94.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject94> _$inlineObject94Serializer =
    new _$InlineObject94Serializer();

class _$InlineObject94Serializer
    implements StructuredSerializer<InlineObject94> {
  @override
  final Iterable<Type> types = const [InlineObject94, _$InlineObject94];
  @override
  final String wireName = 'InlineObject94';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject94 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.waitTimer != null) {
      result
        ..add('wait_timer')
        ..add(serializers.serialize(object.waitTimer,
            specifiedType: const FullType(int)));
    }
    if (object.reviewers != null) {
      result
        ..add('reviewers')
        ..add(serializers.serialize(object.reviewers,
            specifiedType: const FullType(BuiltList, const [
              const FullType(ReposOwnerRepoEnvironmentsEnvironmentNameReviewers)
            ])));
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
  InlineObject94 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject94Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'wait_timer':
          result.waitTimer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reviewers':
          result.reviewers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    ReposOwnerRepoEnvironmentsEnvironmentNameReviewers)
              ])) as BuiltList<Object>);
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

class _$InlineObject94 extends InlineObject94 {
  @override
  final int waitTimer;
  @override
  final BuiltList<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers> reviewers;
  @override
  final DeploymentBranchPolicy deploymentBranchPolicy;

  factory _$InlineObject94([void Function(InlineObject94Builder) updates]) =>
      (new InlineObject94Builder()..update(updates)).build();

  _$InlineObject94._(
      {this.waitTimer, this.reviewers, this.deploymentBranchPolicy})
      : super._();

  @override
  InlineObject94 rebuild(void Function(InlineObject94Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject94Builder toBuilder() =>
      new InlineObject94Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject94 &&
        waitTimer == other.waitTimer &&
        reviewers == other.reviewers &&
        deploymentBranchPolicy == other.deploymentBranchPolicy;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, waitTimer.hashCode), reviewers.hashCode),
        deploymentBranchPolicy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject94')
          ..add('waitTimer', waitTimer)
          ..add('reviewers', reviewers)
          ..add('deploymentBranchPolicy', deploymentBranchPolicy))
        .toString();
  }
}

class InlineObject94Builder
    implements Builder<InlineObject94, InlineObject94Builder> {
  _$InlineObject94 _$v;

  int _waitTimer;
  int get waitTimer => _$this._waitTimer;
  set waitTimer(int waitTimer) => _$this._waitTimer = waitTimer;

  ListBuilder<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers> _reviewers;
  ListBuilder<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers>
      get reviewers => _$this._reviewers ??=
          new ListBuilder<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers>();
  set reviewers(
          ListBuilder<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers>
              reviewers) =>
      _$this._reviewers = reviewers;

  DeploymentBranchPolicyBuilder _deploymentBranchPolicy;
  DeploymentBranchPolicyBuilder get deploymentBranchPolicy =>
      _$this._deploymentBranchPolicy ??= new DeploymentBranchPolicyBuilder();
  set deploymentBranchPolicy(
          DeploymentBranchPolicyBuilder deploymentBranchPolicy) =>
      _$this._deploymentBranchPolicy = deploymentBranchPolicy;

  InlineObject94Builder() {
    InlineObject94._initializeBuilder(this);
  }

  InlineObject94Builder get _$this {
    if (_$v != null) {
      _waitTimer = _$v.waitTimer;
      _reviewers = _$v.reviewers?.toBuilder();
      _deploymentBranchPolicy = _$v.deploymentBranchPolicy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject94 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject94;
  }

  @override
  void update(void Function(InlineObject94Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject94 build() {
    _$InlineObject94 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject94._(
              waitTimer: waitTimer,
              reviewers: _reviewers?.build(),
              deploymentBranchPolicy: _deploymentBranchPolicy?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviewers';
        _reviewers?.build();
        _$failedField = 'deploymentBranchPolicy';
        _deploymentBranchPolicy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject94', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
