// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pending_deployment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PendingDeployment> _$pendingDeploymentSerializer =
    new _$PendingDeploymentSerializer();

class _$PendingDeploymentSerializer
    implements StructuredSerializer<PendingDeployment> {
  @override
  final Iterable<Type> types = const [PendingDeployment, _$PendingDeployment];
  @override
  final String wireName = 'PendingDeployment';

  @override
  Iterable<Object> serialize(Serializers serializers, PendingDeployment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.environment != null) {
      result
        ..add('environment')
        ..add(serializers.serialize(object.environment,
            specifiedType: const FullType(PendingDeploymentEnvironment)));
    }
    if (object.waitTimer != null) {
      result
        ..add('wait_timer')
        ..add(serializers.serialize(object.waitTimer,
            specifiedType: const FullType(int)));
    }
    if (object.waitTimerStartedAt != null) {
      result
        ..add('wait_timer_started_at')
        ..add(serializers.serialize(object.waitTimerStartedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.currentUserCanApprove != null) {
      result
        ..add('current_user_can_approve')
        ..add(serializers.serialize(object.currentUserCanApprove,
            specifiedType: const FullType(bool)));
    }
    if (object.reviewers != null) {
      result
        ..add('reviewers')
        ..add(serializers.serialize(object.reviewers,
            specifiedType: const FullType(BuiltList,
                const [const FullType(PendingDeploymentReviewers)])));
    }
    return result;
  }

  @override
  PendingDeployment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PendingDeploymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'environment':
          result.environment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PendingDeploymentEnvironment))
              as PendingDeploymentEnvironment);
          break;
        case 'wait_timer':
          result.waitTimer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wait_timer_started_at':
          result.waitTimerStartedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'current_user_can_approve':
          result.currentUserCanApprove = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reviewers':
          result.reviewers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(PendingDeploymentReviewers)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$PendingDeployment extends PendingDeployment {
  @override
  final PendingDeploymentEnvironment environment;
  @override
  final int waitTimer;
  @override
  final DateTime waitTimerStartedAt;
  @override
  final bool currentUserCanApprove;
  @override
  final BuiltList<PendingDeploymentReviewers> reviewers;

  factory _$PendingDeployment(
          [void Function(PendingDeploymentBuilder) updates]) =>
      (new PendingDeploymentBuilder()..update(updates)).build();

  _$PendingDeployment._(
      {this.environment,
      this.waitTimer,
      this.waitTimerStartedAt,
      this.currentUserCanApprove,
      this.reviewers})
      : super._();

  @override
  PendingDeployment rebuild(void Function(PendingDeploymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PendingDeploymentBuilder toBuilder() =>
      new PendingDeploymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PendingDeployment &&
        environment == other.environment &&
        waitTimer == other.waitTimer &&
        waitTimerStartedAt == other.waitTimerStartedAt &&
        currentUserCanApprove == other.currentUserCanApprove &&
        reviewers == other.reviewers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, environment.hashCode), waitTimer.hashCode),
                waitTimerStartedAt.hashCode),
            currentUserCanApprove.hashCode),
        reviewers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PendingDeployment')
          ..add('environment', environment)
          ..add('waitTimer', waitTimer)
          ..add('waitTimerStartedAt', waitTimerStartedAt)
          ..add('currentUserCanApprove', currentUserCanApprove)
          ..add('reviewers', reviewers))
        .toString();
  }
}

class PendingDeploymentBuilder
    implements Builder<PendingDeployment, PendingDeploymentBuilder> {
  _$PendingDeployment _$v;

  PendingDeploymentEnvironmentBuilder _environment;
  PendingDeploymentEnvironmentBuilder get environment =>
      _$this._environment ??= new PendingDeploymentEnvironmentBuilder();
  set environment(PendingDeploymentEnvironmentBuilder environment) =>
      _$this._environment = environment;

  int _waitTimer;
  int get waitTimer => _$this._waitTimer;
  set waitTimer(int waitTimer) => _$this._waitTimer = waitTimer;

  DateTime _waitTimerStartedAt;
  DateTime get waitTimerStartedAt => _$this._waitTimerStartedAt;
  set waitTimerStartedAt(DateTime waitTimerStartedAt) =>
      _$this._waitTimerStartedAt = waitTimerStartedAt;

  bool _currentUserCanApprove;
  bool get currentUserCanApprove => _$this._currentUserCanApprove;
  set currentUserCanApprove(bool currentUserCanApprove) =>
      _$this._currentUserCanApprove = currentUserCanApprove;

  ListBuilder<PendingDeploymentReviewers> _reviewers;
  ListBuilder<PendingDeploymentReviewers> get reviewers =>
      _$this._reviewers ??= new ListBuilder<PendingDeploymentReviewers>();
  set reviewers(ListBuilder<PendingDeploymentReviewers> reviewers) =>
      _$this._reviewers = reviewers;

  PendingDeploymentBuilder() {
    PendingDeployment._initializeBuilder(this);
  }

  PendingDeploymentBuilder get _$this {
    if (_$v != null) {
      _environment = _$v.environment?.toBuilder();
      _waitTimer = _$v.waitTimer;
      _waitTimerStartedAt = _$v.waitTimerStartedAt;
      _currentUserCanApprove = _$v.currentUserCanApprove;
      _reviewers = _$v.reviewers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PendingDeployment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PendingDeployment;
  }

  @override
  void update(void Function(PendingDeploymentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PendingDeployment build() {
    _$PendingDeployment _$result;
    try {
      _$result = _$v ??
          new _$PendingDeployment._(
              environment: _environment?.build(),
              waitTimer: waitTimer,
              waitTimerStartedAt: waitTimerStartedAt,
              currentUserCanApprove: currentUserCanApprove,
              reviewers: _reviewers?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'environment';
        _environment?.build();

        _$failedField = 'reviewers';
        _reviewers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PendingDeployment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
