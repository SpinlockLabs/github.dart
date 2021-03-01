// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_protection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchProtection> _$branchProtectionSerializer =
    new _$BranchProtectionSerializer();

class _$BranchProtectionSerializer
    implements StructuredSerializer<BranchProtection> {
  @override
  final Iterable<Type> types = const [BranchProtection, _$BranchProtection];
  @override
  final String wireName = 'BranchProtection';

  @override
  Iterable<Object> serialize(Serializers serializers, BranchProtection object,
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
            specifiedType:
                const FullType(BranchProtectionRequiredStatusChecks)));
    }
    if (object.enforceAdmins != null) {
      result
        ..add('enforce_admins')
        ..add(serializers.serialize(object.enforceAdmins,
            specifiedType: const FullType(ProtectedBranchAdminEnforced)));
    }
    if (object.requiredPullRequestReviews != null) {
      result
        ..add('required_pull_request_reviews')
        ..add(serializers.serialize(object.requiredPullRequestReviews,
            specifiedType: const FullType(ProtectedBranchPullRequestReview)));
    }
    if (object.restrictions != null) {
      result
        ..add('restrictions')
        ..add(serializers.serialize(object.restrictions,
            specifiedType: const FullType(BranchRestrictionPolicy)));
    }
    if (object.requiredLinearHistory != null) {
      result
        ..add('required_linear_history')
        ..add(serializers.serialize(object.requiredLinearHistory,
            specifiedType:
                const FullType(BranchProtectionRequiredLinearHistory)));
    }
    if (object.allowForcePushes != null) {
      result
        ..add('allow_force_pushes')
        ..add(serializers.serialize(object.allowForcePushes,
            specifiedType:
                const FullType(BranchProtectionRequiredLinearHistory)));
    }
    if (object.allowDeletions != null) {
      result
        ..add('allow_deletions')
        ..add(serializers.serialize(object.allowDeletions,
            specifiedType:
                const FullType(BranchProtectionRequiredLinearHistory)));
    }
    if (object.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.protectionUrl != null) {
      result
        ..add('protection_url')
        ..add(serializers.serialize(object.protectionUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BranchProtection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchProtectionBuilder();

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
                  specifiedType:
                      const FullType(BranchProtectionRequiredStatusChecks))
              as BranchProtectionRequiredStatusChecks);
          break;
        case 'enforce_admins':
          result.enforceAdmins.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProtectedBranchAdminEnforced))
              as ProtectedBranchAdminEnforced);
          break;
        case 'required_pull_request_reviews':
          result.requiredPullRequestReviews.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(ProtectedBranchPullRequestReview))
              as ProtectedBranchPullRequestReview);
          break;
        case 'restrictions':
          result.restrictions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BranchRestrictionPolicy))
              as BranchRestrictionPolicy);
          break;
        case 'required_linear_history':
          result.requiredLinearHistory.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BranchProtectionRequiredLinearHistory))
              as BranchProtectionRequiredLinearHistory);
          break;
        case 'allow_force_pushes':
          result.allowForcePushes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BranchProtectionRequiredLinearHistory))
              as BranchProtectionRequiredLinearHistory);
          break;
        case 'allow_deletions':
          result.allowDeletions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BranchProtectionRequiredLinearHistory))
              as BranchProtectionRequiredLinearHistory);
          break;
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'protection_url':
          result.protectionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchProtection extends BranchProtection {
  @override
  final String url;
  @override
  final BranchProtectionRequiredStatusChecks requiredStatusChecks;
  @override
  final ProtectedBranchAdminEnforced enforceAdmins;
  @override
  final ProtectedBranchPullRequestReview requiredPullRequestReviews;
  @override
  final BranchRestrictionPolicy restrictions;
  @override
  final BranchProtectionRequiredLinearHistory requiredLinearHistory;
  @override
  final BranchProtectionRequiredLinearHistory allowForcePushes;
  @override
  final BranchProtectionRequiredLinearHistory allowDeletions;
  @override
  final bool enabled;
  @override
  final String name;
  @override
  final String protectionUrl;

  factory _$BranchProtection(
          [void Function(BranchProtectionBuilder) updates]) =>
      (new BranchProtectionBuilder()..update(updates)).build();

  _$BranchProtection._(
      {this.url,
      this.requiredStatusChecks,
      this.enforceAdmins,
      this.requiredPullRequestReviews,
      this.restrictions,
      this.requiredLinearHistory,
      this.allowForcePushes,
      this.allowDeletions,
      this.enabled,
      this.name,
      this.protectionUrl})
      : super._();

  @override
  BranchProtection rebuild(void Function(BranchProtectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchProtectionBuilder toBuilder() =>
      new BranchProtectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchProtection &&
        url == other.url &&
        requiredStatusChecks == other.requiredStatusChecks &&
        enforceAdmins == other.enforceAdmins &&
        requiredPullRequestReviews == other.requiredPullRequestReviews &&
        restrictions == other.restrictions &&
        requiredLinearHistory == other.requiredLinearHistory &&
        allowForcePushes == other.allowForcePushes &&
        allowDeletions == other.allowDeletions &&
        enabled == other.enabled &&
        name == other.name &&
        protectionUrl == other.protectionUrl;
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
                                        $jc($jc(0, url.hashCode),
                                            requiredStatusChecks.hashCode),
                                        enforceAdmins.hashCode),
                                    requiredPullRequestReviews.hashCode),
                                restrictions.hashCode),
                            requiredLinearHistory.hashCode),
                        allowForcePushes.hashCode),
                    allowDeletions.hashCode),
                enabled.hashCode),
            name.hashCode),
        protectionUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchProtection')
          ..add('url', url)
          ..add('requiredStatusChecks', requiredStatusChecks)
          ..add('enforceAdmins', enforceAdmins)
          ..add('requiredPullRequestReviews', requiredPullRequestReviews)
          ..add('restrictions', restrictions)
          ..add('requiredLinearHistory', requiredLinearHistory)
          ..add('allowForcePushes', allowForcePushes)
          ..add('allowDeletions', allowDeletions)
          ..add('enabled', enabled)
          ..add('name', name)
          ..add('protectionUrl', protectionUrl))
        .toString();
  }
}

class BranchProtectionBuilder
    implements Builder<BranchProtection, BranchProtectionBuilder> {
  _$BranchProtection _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  BranchProtectionRequiredStatusChecksBuilder _requiredStatusChecks;
  BranchProtectionRequiredStatusChecksBuilder get requiredStatusChecks =>
      _$this._requiredStatusChecks ??=
          new BranchProtectionRequiredStatusChecksBuilder();
  set requiredStatusChecks(
          BranchProtectionRequiredStatusChecksBuilder requiredStatusChecks) =>
      _$this._requiredStatusChecks = requiredStatusChecks;

  ProtectedBranchAdminEnforcedBuilder _enforceAdmins;
  ProtectedBranchAdminEnforcedBuilder get enforceAdmins =>
      _$this._enforceAdmins ??= new ProtectedBranchAdminEnforcedBuilder();
  set enforceAdmins(ProtectedBranchAdminEnforcedBuilder enforceAdmins) =>
      _$this._enforceAdmins = enforceAdmins;

  ProtectedBranchPullRequestReviewBuilder _requiredPullRequestReviews;
  ProtectedBranchPullRequestReviewBuilder get requiredPullRequestReviews =>
      _$this._requiredPullRequestReviews ??=
          new ProtectedBranchPullRequestReviewBuilder();
  set requiredPullRequestReviews(
          ProtectedBranchPullRequestReviewBuilder requiredPullRequestReviews) =>
      _$this._requiredPullRequestReviews = requiredPullRequestReviews;

  BranchRestrictionPolicyBuilder _restrictions;
  BranchRestrictionPolicyBuilder get restrictions =>
      _$this._restrictions ??= new BranchRestrictionPolicyBuilder();
  set restrictions(BranchRestrictionPolicyBuilder restrictions) =>
      _$this._restrictions = restrictions;

  BranchProtectionRequiredLinearHistoryBuilder _requiredLinearHistory;
  BranchProtectionRequiredLinearHistoryBuilder get requiredLinearHistory =>
      _$this._requiredLinearHistory ??=
          new BranchProtectionRequiredLinearHistoryBuilder();
  set requiredLinearHistory(
          BranchProtectionRequiredLinearHistoryBuilder requiredLinearHistory) =>
      _$this._requiredLinearHistory = requiredLinearHistory;

  BranchProtectionRequiredLinearHistoryBuilder _allowForcePushes;
  BranchProtectionRequiredLinearHistoryBuilder get allowForcePushes =>
      _$this._allowForcePushes ??=
          new BranchProtectionRequiredLinearHistoryBuilder();
  set allowForcePushes(
          BranchProtectionRequiredLinearHistoryBuilder allowForcePushes) =>
      _$this._allowForcePushes = allowForcePushes;

  BranchProtectionRequiredLinearHistoryBuilder _allowDeletions;
  BranchProtectionRequiredLinearHistoryBuilder get allowDeletions =>
      _$this._allowDeletions ??=
          new BranchProtectionRequiredLinearHistoryBuilder();
  set allowDeletions(
          BranchProtectionRequiredLinearHistoryBuilder allowDeletions) =>
      _$this._allowDeletions = allowDeletions;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _protectionUrl;
  String get protectionUrl => _$this._protectionUrl;
  set protectionUrl(String protectionUrl) =>
      _$this._protectionUrl = protectionUrl;

  BranchProtectionBuilder() {
    BranchProtection._initializeBuilder(this);
  }

  BranchProtectionBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _requiredStatusChecks = _$v.requiredStatusChecks?.toBuilder();
      _enforceAdmins = _$v.enforceAdmins?.toBuilder();
      _requiredPullRequestReviews = _$v.requiredPullRequestReviews?.toBuilder();
      _restrictions = _$v.restrictions?.toBuilder();
      _requiredLinearHistory = _$v.requiredLinearHistory?.toBuilder();
      _allowForcePushes = _$v.allowForcePushes?.toBuilder();
      _allowDeletions = _$v.allowDeletions?.toBuilder();
      _enabled = _$v.enabled;
      _name = _$v.name;
      _protectionUrl = _$v.protectionUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchProtection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchProtection;
  }

  @override
  void update(void Function(BranchProtectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchProtection build() {
    _$BranchProtection _$result;
    try {
      _$result = _$v ??
          new _$BranchProtection._(
              url: url,
              requiredStatusChecks: _requiredStatusChecks?.build(),
              enforceAdmins: _enforceAdmins?.build(),
              requiredPullRequestReviews: _requiredPullRequestReviews?.build(),
              restrictions: _restrictions?.build(),
              requiredLinearHistory: _requiredLinearHistory?.build(),
              allowForcePushes: _allowForcePushes?.build(),
              allowDeletions: _allowDeletions?.build(),
              enabled: enabled,
              name: name,
              protectionUrl: protectionUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'requiredStatusChecks';
        _requiredStatusChecks?.build();
        _$failedField = 'enforceAdmins';
        _enforceAdmins?.build();
        _$failedField = 'requiredPullRequestReviews';
        _requiredPullRequestReviews?.build();
        _$failedField = 'restrictions';
        _restrictions?.build();
        _$failedField = 'requiredLinearHistory';
        _requiredLinearHistory?.build();
        _$failedField = 'allowForcePushes';
        _allowForcePushes?.build();
        _$failedField = 'allowDeletions';
        _allowDeletions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BranchProtection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
