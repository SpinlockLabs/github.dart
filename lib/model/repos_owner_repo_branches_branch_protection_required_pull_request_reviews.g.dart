// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_branches_branch_protection_required_pull_request_reviews.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews>
    _$reposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsSerializer =
    new _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsSerializer();

class _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsSerializer
    implements
        StructuredSerializer<
            ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews,
    _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews
  ];
  @override
  final String wireName =
      'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dismissalRestrictions != null) {
      result
        ..add('dismissal_restrictions')
        ..add(serializers.serialize(object.dismissalRestrictions,
            specifiedType: const FullType(
                ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions)));
    }
    if (object.dismissStaleReviews != null) {
      result
        ..add('dismiss_stale_reviews')
        ..add(serializers.serialize(object.dismissStaleReviews,
            specifiedType: const FullType(bool)));
    }
    if (object.requireCodeOwnerReviews != null) {
      result
        ..add('require_code_owner_reviews')
        ..add(serializers.serialize(object.requireCodeOwnerReviews,
            specifiedType: const FullType(bool)));
    }
    if (object.requiredApprovingReviewCount != null) {
      result
        ..add('required_approving_review_count')
        ..add(serializers.serialize(object.requiredApprovingReviewCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dismissal_restrictions':
          result.dismissalRestrictions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions))
              as ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions);
          break;
        case 'dismiss_stale_reviews':
          result.dismissStaleReviews = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'require_code_owner_reviews':
          result.requireCodeOwnerReviews = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'required_approving_review_count':
          result.requiredApprovingReviewCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews
    extends ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews {
  @override
  final ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
      dismissalRestrictions;
  @override
  final bool dismissStaleReviews;
  @override
  final bool requireCodeOwnerReviews;
  @override
  final int requiredApprovingReviewCount;

  factory _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews(
          [void Function(
                  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder)
              updates]) =>
      (new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews._(
      {this.dismissalRestrictions,
      this.dismissStaleReviews,
      this.requireCodeOwnerReviews,
      this.requiredApprovingReviewCount})
      : super._();

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews rebuild(
          void Function(
                  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder
      toBuilder() =>
          new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews &&
        dismissalRestrictions == other.dismissalRestrictions &&
        dismissStaleReviews == other.dismissStaleReviews &&
        requireCodeOwnerReviews == other.requireCodeOwnerReviews &&
        requiredApprovingReviewCount == other.requiredApprovingReviewCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, dismissalRestrictions.hashCode),
                dismissStaleReviews.hashCode),
            requireCodeOwnerReviews.hashCode),
        requiredApprovingReviewCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews')
          ..add('dismissalRestrictions', dismissalRestrictions)
          ..add('dismissStaleReviews', dismissStaleReviews)
          ..add('requireCodeOwnerReviews', requireCodeOwnerReviews)
          ..add('requiredApprovingReviewCount', requiredApprovingReviewCount))
        .toString();
  }
}

class ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder
    implements
        Builder<
            ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews,
            ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder> {
  _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews _$v;

  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder
      _dismissalRestrictions;
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder
      get dismissalRestrictions => _$this._dismissalRestrictions ??=
          new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder();
  set dismissalRestrictions(
          ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder
              dismissalRestrictions) =>
      _$this._dismissalRestrictions = dismissalRestrictions;

  bool _dismissStaleReviews;
  bool get dismissStaleReviews => _$this._dismissStaleReviews;
  set dismissStaleReviews(bool dismissStaleReviews) =>
      _$this._dismissStaleReviews = dismissStaleReviews;

  bool _requireCodeOwnerReviews;
  bool get requireCodeOwnerReviews => _$this._requireCodeOwnerReviews;
  set requireCodeOwnerReviews(bool requireCodeOwnerReviews) =>
      _$this._requireCodeOwnerReviews = requireCodeOwnerReviews;

  int _requiredApprovingReviewCount;
  int get requiredApprovingReviewCount => _$this._requiredApprovingReviewCount;
  set requiredApprovingReviewCount(int requiredApprovingReviewCount) =>
      _$this._requiredApprovingReviewCount = requiredApprovingReviewCount;

  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder() {
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews
        ._initializeBuilder(this);
  }

  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder
      get _$this {
    if (_$v != null) {
      _dismissalRestrictions = _$v.dismissalRestrictions?.toBuilder();
      _dismissStaleReviews = _$v.dismissStaleReviews;
      _requireCodeOwnerReviews = _$v.requireCodeOwnerReviews;
      _requiredApprovingReviewCount = _$v.requiredApprovingReviewCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews;
  }

  @override
  void update(
      void Function(
              ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews build() {
    _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews _$result;
    try {
      _$result = _$v ??
          new _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews
                  ._(
              dismissalRestrictions: _dismissalRestrictions?.build(),
              dismissStaleReviews: dismissStaleReviews,
              requireCodeOwnerReviews: requireCodeOwnerReviews,
              requiredApprovingReviewCount: requiredApprovingReviewCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dismissalRestrictions';
        _dismissalRestrictions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
