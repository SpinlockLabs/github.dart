// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object65.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject65> _$inlineObject65Serializer =
    new _$InlineObject65Serializer();

class _$InlineObject65Serializer
    implements StructuredSerializer<InlineObject65> {
  @override
  final Iterable<Type> types = const [InlineObject65, _$InlineObject65];
  @override
  final String wireName = 'InlineObject65';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject65 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.requiredStatusChecks != null) {
      result
        ..add('required_status_checks')
        ..add(serializers.serialize(object.requiredStatusChecks,
            specifiedType: const FullType(
                ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks)));
    }
    if (object.enforceAdmins != null) {
      result
        ..add('enforce_admins')
        ..add(serializers.serialize(object.enforceAdmins,
            specifiedType: const FullType(bool)));
    }
    if (object.requiredPullRequestReviews != null) {
      result
        ..add('required_pull_request_reviews')
        ..add(serializers.serialize(object.requiredPullRequestReviews,
            specifiedType: const FullType(
                ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews)));
    }
    if (object.restrictions != null) {
      result
        ..add('restrictions')
        ..add(serializers.serialize(object.restrictions,
            specifiedType: const FullType(
                ReposOwnerRepoBranchesBranchProtectionRestrictions)));
    }
    if (object.requiredLinearHistory != null) {
      result
        ..add('required_linear_history')
        ..add(serializers.serialize(object.requiredLinearHistory,
            specifiedType: const FullType(bool)));
    }
    if (object.allowForcePushes != null) {
      result
        ..add('allow_force_pushes')
        ..add(serializers.serialize(object.allowForcePushes,
            specifiedType: const FullType(bool)));
    }
    if (object.allowDeletions != null) {
      result
        ..add('allow_deletions')
        ..add(serializers.serialize(object.allowDeletions,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject65 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject65Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'required_status_checks':
          result.requiredStatusChecks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks))
              as ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks);
          break;
        case 'enforce_admins':
          result.enforceAdmins = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'required_pull_request_reviews':
          result.requiredPullRequestReviews.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews))
              as ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews);
          break;
        case 'restrictions':
          result.restrictions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      ReposOwnerRepoBranchesBranchProtectionRestrictions))
              as ReposOwnerRepoBranchesBranchProtectionRestrictions);
          break;
        case 'required_linear_history':
          result.requiredLinearHistory = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_force_pushes':
          result.allowForcePushes = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_deletions':
          result.allowDeletions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject65 extends InlineObject65 {
  @override
  final ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks
      requiredStatusChecks;
  @override
  final bool enforceAdmins;
  @override
  final ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews
      requiredPullRequestReviews;
  @override
  final ReposOwnerRepoBranchesBranchProtectionRestrictions restrictions;
  @override
  final bool requiredLinearHistory;
  @override
  final bool allowForcePushes;
  @override
  final bool allowDeletions;

  factory _$InlineObject65([void Function(InlineObject65Builder) updates]) =>
      (new InlineObject65Builder()..update(updates)).build();

  _$InlineObject65._(
      {this.requiredStatusChecks,
      this.enforceAdmins,
      this.requiredPullRequestReviews,
      this.restrictions,
      this.requiredLinearHistory,
      this.allowForcePushes,
      this.allowDeletions})
      : super._();

  @override
  InlineObject65 rebuild(void Function(InlineObject65Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject65Builder toBuilder() =>
      new InlineObject65Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject65 &&
        requiredStatusChecks == other.requiredStatusChecks &&
        enforceAdmins == other.enforceAdmins &&
        requiredPullRequestReviews == other.requiredPullRequestReviews &&
        restrictions == other.restrictions &&
        requiredLinearHistory == other.requiredLinearHistory &&
        allowForcePushes == other.allowForcePushes &&
        allowDeletions == other.allowDeletions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, requiredStatusChecks.hashCode),
                            enforceAdmins.hashCode),
                        requiredPullRequestReviews.hashCode),
                    restrictions.hashCode),
                requiredLinearHistory.hashCode),
            allowForcePushes.hashCode),
        allowDeletions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject65')
          ..add('requiredStatusChecks', requiredStatusChecks)
          ..add('enforceAdmins', enforceAdmins)
          ..add('requiredPullRequestReviews', requiredPullRequestReviews)
          ..add('restrictions', restrictions)
          ..add('requiredLinearHistory', requiredLinearHistory)
          ..add('allowForcePushes', allowForcePushes)
          ..add('allowDeletions', allowDeletions))
        .toString();
  }
}

class InlineObject65Builder
    implements Builder<InlineObject65, InlineObject65Builder> {
  _$InlineObject65 _$v;

  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder
      _requiredStatusChecks;
  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder
      get requiredStatusChecks => _$this._requiredStatusChecks ??=
          new ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder();
  set requiredStatusChecks(
          ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder
              requiredStatusChecks) =>
      _$this._requiredStatusChecks = requiredStatusChecks;

  bool _enforceAdmins;
  bool get enforceAdmins => _$this._enforceAdmins;
  set enforceAdmins(bool enforceAdmins) =>
      _$this._enforceAdmins = enforceAdmins;

  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder
      _requiredPullRequestReviews;
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder
      get requiredPullRequestReviews => _$this._requiredPullRequestReviews ??=
          new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder();
  set requiredPullRequestReviews(
          ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder
              requiredPullRequestReviews) =>
      _$this._requiredPullRequestReviews = requiredPullRequestReviews;

  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder _restrictions;
  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder get restrictions =>
      _$this._restrictions ??=
          new ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder();
  set restrictions(
          ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder
              restrictions) =>
      _$this._restrictions = restrictions;

  bool _requiredLinearHistory;
  bool get requiredLinearHistory => _$this._requiredLinearHistory;
  set requiredLinearHistory(bool requiredLinearHistory) =>
      _$this._requiredLinearHistory = requiredLinearHistory;

  bool _allowForcePushes;
  bool get allowForcePushes => _$this._allowForcePushes;
  set allowForcePushes(bool allowForcePushes) =>
      _$this._allowForcePushes = allowForcePushes;

  bool _allowDeletions;
  bool get allowDeletions => _$this._allowDeletions;
  set allowDeletions(bool allowDeletions) =>
      _$this._allowDeletions = allowDeletions;

  InlineObject65Builder() {
    InlineObject65._initializeBuilder(this);
  }

  InlineObject65Builder get _$this {
    if (_$v != null) {
      _requiredStatusChecks = _$v.requiredStatusChecks?.toBuilder();
      _enforceAdmins = _$v.enforceAdmins;
      _requiredPullRequestReviews = _$v.requiredPullRequestReviews?.toBuilder();
      _restrictions = _$v.restrictions?.toBuilder();
      _requiredLinearHistory = _$v.requiredLinearHistory;
      _allowForcePushes = _$v.allowForcePushes;
      _allowDeletions = _$v.allowDeletions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject65 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject65;
  }

  @override
  void update(void Function(InlineObject65Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject65 build() {
    _$InlineObject65 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject65._(
              requiredStatusChecks: _requiredStatusChecks?.build(),
              enforceAdmins: enforceAdmins,
              requiredPullRequestReviews: _requiredPullRequestReviews?.build(),
              restrictions: _restrictions?.build(),
              requiredLinearHistory: requiredLinearHistory,
              allowForcePushes: allowForcePushes,
              allowDeletions: allowDeletions);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'requiredStatusChecks';
        _requiredStatusChecks?.build();

        _$failedField = 'requiredPullRequestReviews';
        _requiredPullRequestReviews?.build();
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject65', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
