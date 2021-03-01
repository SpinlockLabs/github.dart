// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranch> _$protectedBranchSerializer =
    new _$ProtectedBranchSerializer();

class _$ProtectedBranchSerializer
    implements StructuredSerializer<ProtectedBranch> {
  @override
  final Iterable<Type> types = const [ProtectedBranch, _$ProtectedBranch];
  @override
  final String wireName = 'ProtectedBranch';

  @override
  Iterable<Object> serialize(Serializers serializers, ProtectedBranch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.requiredStatusChecks != null) {
      result
        ..add('required_status_checks')
        ..add(serializers.serialize(object.requiredStatusChecks,
            specifiedType: const FullType(StatusCheckPolicy)));
    }
    if (object.requiredPullRequestReviews != null) {
      result
        ..add('required_pull_request_reviews')
        ..add(serializers.serialize(object.requiredPullRequestReviews,
            specifiedType:
                const FullType(ProtectedBranchRequiredPullRequestReviews)));
    }
    if (object.requiredSignatures != null) {
      result
        ..add('required_signatures')
        ..add(serializers.serialize(object.requiredSignatures,
            specifiedType: const FullType(ProtectedBranchRequiredSignatures)));
    }
    if (object.enforceAdmins != null) {
      result
        ..add('enforce_admins')
        ..add(serializers.serialize(object.enforceAdmins,
            specifiedType: const FullType(ProtectedBranchEnforceAdmins)));
    }
    if (object.requiredLinearHistory != null) {
      result
        ..add('required_linear_history')
        ..add(serializers.serialize(object.requiredLinearHistory,
            specifiedType:
                const FullType(ProtectedBranchRequiredLinearHistory)));
    }
    if (object.allowForcePushes != null) {
      result
        ..add('allow_force_pushes')
        ..add(serializers.serialize(object.allowForcePushes,
            specifiedType:
                const FullType(ProtectedBranchRequiredLinearHistory)));
    }
    if (object.allowDeletions != null) {
      result
        ..add('allow_deletions')
        ..add(serializers.serialize(object.allowDeletions,
            specifiedType:
                const FullType(ProtectedBranchRequiredLinearHistory)));
    }
    if (object.restrictions != null) {
      result
        ..add('restrictions')
        ..add(serializers.serialize(object.restrictions,
            specifiedType: const FullType(BranchRestrictionPolicy)));
    }
    return result;
  }

  @override
  ProtectedBranch deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchBuilder();

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
        case 'required_status_checks':
          result.requiredStatusChecks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StatusCheckPolicy))
              as StatusCheckPolicy);
          break;
        case 'required_pull_request_reviews':
          result.requiredPullRequestReviews.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(ProtectedBranchRequiredPullRequestReviews))
              as ProtectedBranchRequiredPullRequestReviews);
          break;
        case 'required_signatures':
          result.requiredSignatures.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ProtectedBranchRequiredSignatures))
              as ProtectedBranchRequiredSignatures);
          break;
        case 'enforce_admins':
          result.enforceAdmins.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProtectedBranchEnforceAdmins))
              as ProtectedBranchEnforceAdmins);
          break;
        case 'required_linear_history':
          result.requiredLinearHistory.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ProtectedBranchRequiredLinearHistory))
              as ProtectedBranchRequiredLinearHistory);
          break;
        case 'allow_force_pushes':
          result.allowForcePushes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ProtectedBranchRequiredLinearHistory))
              as ProtectedBranchRequiredLinearHistory);
          break;
        case 'allow_deletions':
          result.allowDeletions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ProtectedBranchRequiredLinearHistory))
              as ProtectedBranchRequiredLinearHistory);
          break;
        case 'restrictions':
          result.restrictions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BranchRestrictionPolicy))
              as BranchRestrictionPolicy);
          break;
      }
    }

    return result.build();
  }
}

class _$ProtectedBranch extends ProtectedBranch {
  @override
  final String url;
  @override
  final StatusCheckPolicy requiredStatusChecks;
  @override
  final ProtectedBranchRequiredPullRequestReviews requiredPullRequestReviews;
  @override
  final ProtectedBranchRequiredSignatures requiredSignatures;
  @override
  final ProtectedBranchEnforceAdmins enforceAdmins;
  @override
  final ProtectedBranchRequiredLinearHistory requiredLinearHistory;
  @override
  final ProtectedBranchRequiredLinearHistory allowForcePushes;
  @override
  final ProtectedBranchRequiredLinearHistory allowDeletions;
  @override
  final BranchRestrictionPolicy restrictions;

  factory _$ProtectedBranch([void Function(ProtectedBranchBuilder) updates]) =>
      (new ProtectedBranchBuilder()..update(updates)).build();

  _$ProtectedBranch._(
      {this.url,
      this.requiredStatusChecks,
      this.requiredPullRequestReviews,
      this.requiredSignatures,
      this.enforceAdmins,
      this.requiredLinearHistory,
      this.allowForcePushes,
      this.allowDeletions,
      this.restrictions})
      : super._();

  @override
  ProtectedBranch rebuild(void Function(ProtectedBranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchBuilder toBuilder() =>
      new ProtectedBranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranch &&
        url == other.url &&
        requiredStatusChecks == other.requiredStatusChecks &&
        requiredPullRequestReviews == other.requiredPullRequestReviews &&
        requiredSignatures == other.requiredSignatures &&
        enforceAdmins == other.enforceAdmins &&
        requiredLinearHistory == other.requiredLinearHistory &&
        allowForcePushes == other.allowForcePushes &&
        allowDeletions == other.allowDeletions &&
        restrictions == other.restrictions;
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
                                $jc($jc(0, url.hashCode),
                                    requiredStatusChecks.hashCode),
                                requiredPullRequestReviews.hashCode),
                            requiredSignatures.hashCode),
                        enforceAdmins.hashCode),
                    requiredLinearHistory.hashCode),
                allowForcePushes.hashCode),
            allowDeletions.hashCode),
        restrictions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtectedBranch')
          ..add('url', url)
          ..add('requiredStatusChecks', requiredStatusChecks)
          ..add('requiredPullRequestReviews', requiredPullRequestReviews)
          ..add('requiredSignatures', requiredSignatures)
          ..add('enforceAdmins', enforceAdmins)
          ..add('requiredLinearHistory', requiredLinearHistory)
          ..add('allowForcePushes', allowForcePushes)
          ..add('allowDeletions', allowDeletions)
          ..add('restrictions', restrictions))
        .toString();
  }
}

class ProtectedBranchBuilder
    implements Builder<ProtectedBranch, ProtectedBranchBuilder> {
  _$ProtectedBranch _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  StatusCheckPolicyBuilder _requiredStatusChecks;
  StatusCheckPolicyBuilder get requiredStatusChecks =>
      _$this._requiredStatusChecks ??= new StatusCheckPolicyBuilder();
  set requiredStatusChecks(StatusCheckPolicyBuilder requiredStatusChecks) =>
      _$this._requiredStatusChecks = requiredStatusChecks;

  ProtectedBranchRequiredPullRequestReviewsBuilder _requiredPullRequestReviews;
  ProtectedBranchRequiredPullRequestReviewsBuilder
      get requiredPullRequestReviews => _$this._requiredPullRequestReviews ??=
          new ProtectedBranchRequiredPullRequestReviewsBuilder();
  set requiredPullRequestReviews(
          ProtectedBranchRequiredPullRequestReviewsBuilder
              requiredPullRequestReviews) =>
      _$this._requiredPullRequestReviews = requiredPullRequestReviews;

  ProtectedBranchRequiredSignaturesBuilder _requiredSignatures;
  ProtectedBranchRequiredSignaturesBuilder get requiredSignatures =>
      _$this._requiredSignatures ??=
          new ProtectedBranchRequiredSignaturesBuilder();
  set requiredSignatures(
          ProtectedBranchRequiredSignaturesBuilder requiredSignatures) =>
      _$this._requiredSignatures = requiredSignatures;

  ProtectedBranchEnforceAdminsBuilder _enforceAdmins;
  ProtectedBranchEnforceAdminsBuilder get enforceAdmins =>
      _$this._enforceAdmins ??= new ProtectedBranchEnforceAdminsBuilder();
  set enforceAdmins(ProtectedBranchEnforceAdminsBuilder enforceAdmins) =>
      _$this._enforceAdmins = enforceAdmins;

  ProtectedBranchRequiredLinearHistoryBuilder _requiredLinearHistory;
  ProtectedBranchRequiredLinearHistoryBuilder get requiredLinearHistory =>
      _$this._requiredLinearHistory ??=
          new ProtectedBranchRequiredLinearHistoryBuilder();
  set requiredLinearHistory(
          ProtectedBranchRequiredLinearHistoryBuilder requiredLinearHistory) =>
      _$this._requiredLinearHistory = requiredLinearHistory;

  ProtectedBranchRequiredLinearHistoryBuilder _allowForcePushes;
  ProtectedBranchRequiredLinearHistoryBuilder get allowForcePushes =>
      _$this._allowForcePushes ??=
          new ProtectedBranchRequiredLinearHistoryBuilder();
  set allowForcePushes(
          ProtectedBranchRequiredLinearHistoryBuilder allowForcePushes) =>
      _$this._allowForcePushes = allowForcePushes;

  ProtectedBranchRequiredLinearHistoryBuilder _allowDeletions;
  ProtectedBranchRequiredLinearHistoryBuilder get allowDeletions =>
      _$this._allowDeletions ??=
          new ProtectedBranchRequiredLinearHistoryBuilder();
  set allowDeletions(
          ProtectedBranchRequiredLinearHistoryBuilder allowDeletions) =>
      _$this._allowDeletions = allowDeletions;

  BranchRestrictionPolicyBuilder _restrictions;
  BranchRestrictionPolicyBuilder get restrictions =>
      _$this._restrictions ??= new BranchRestrictionPolicyBuilder();
  set restrictions(BranchRestrictionPolicyBuilder restrictions) =>
      _$this._restrictions = restrictions;

  ProtectedBranchBuilder() {
    ProtectedBranch._initializeBuilder(this);
  }

  ProtectedBranchBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _requiredStatusChecks = _$v.requiredStatusChecks?.toBuilder();
      _requiredPullRequestReviews = _$v.requiredPullRequestReviews?.toBuilder();
      _requiredSignatures = _$v.requiredSignatures?.toBuilder();
      _enforceAdmins = _$v.enforceAdmins?.toBuilder();
      _requiredLinearHistory = _$v.requiredLinearHistory?.toBuilder();
      _allowForcePushes = _$v.allowForcePushes?.toBuilder();
      _allowDeletions = _$v.allowDeletions?.toBuilder();
      _restrictions = _$v.restrictions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranch;
  }

  @override
  void update(void Function(ProtectedBranchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranch build() {
    _$ProtectedBranch _$result;
    try {
      _$result = _$v ??
          new _$ProtectedBranch._(
              url: url,
              requiredStatusChecks: _requiredStatusChecks?.build(),
              requiredPullRequestReviews: _requiredPullRequestReviews?.build(),
              requiredSignatures: _requiredSignatures?.build(),
              enforceAdmins: _enforceAdmins?.build(),
              requiredLinearHistory: _requiredLinearHistory?.build(),
              allowForcePushes: _allowForcePushes?.build(),
              allowDeletions: _allowDeletions?.build(),
              restrictions: _restrictions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'requiredStatusChecks';
        _requiredStatusChecks?.build();
        _$failedField = 'requiredPullRequestReviews';
        _requiredPullRequestReviews?.build();
        _$failedField = 'requiredSignatures';
        _requiredSignatures?.build();
        _$failedField = 'enforceAdmins';
        _enforceAdmins?.build();
        _$failedField = 'requiredLinearHistory';
        _requiredLinearHistory?.build();
        _$failedField = 'allowForcePushes';
        _allowForcePushes?.build();
        _$failedField = 'allowDeletions';
        _allowDeletions?.build();
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProtectedBranch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
