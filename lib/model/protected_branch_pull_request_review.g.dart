// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_pull_request_review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchPullRequestReview>
    _$protectedBranchPullRequestReviewSerializer =
    new _$ProtectedBranchPullRequestReviewSerializer();

class _$ProtectedBranchPullRequestReviewSerializer
    implements StructuredSerializer<ProtectedBranchPullRequestReview> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchPullRequestReview,
    _$ProtectedBranchPullRequestReview
  ];
  @override
  final String wireName = 'ProtectedBranchPullRequestReview';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProtectedBranchPullRequestReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.dismissalRestrictions != null) {
      result
        ..add('dismissal_restrictions')
        ..add(serializers.serialize(object.dismissalRestrictions,
            specifiedType: const FullType(
                ProtectedBranchPullRequestReviewDismissalRestrictions)));
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
  ProtectedBranchPullRequestReview deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchPullRequestReviewBuilder();

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
        case 'dismissal_restrictions':
          result.dismissalRestrictions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      ProtectedBranchPullRequestReviewDismissalRestrictions))
              as ProtectedBranchPullRequestReviewDismissalRestrictions);
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

class _$ProtectedBranchPullRequestReview
    extends ProtectedBranchPullRequestReview {
  @override
  final String url;
  @override
  final ProtectedBranchPullRequestReviewDismissalRestrictions
      dismissalRestrictions;
  @override
  final bool dismissStaleReviews;
  @override
  final bool requireCodeOwnerReviews;
  @override
  final int requiredApprovingReviewCount;

  factory _$ProtectedBranchPullRequestReview(
          [void Function(ProtectedBranchPullRequestReviewBuilder) updates]) =>
      (new ProtectedBranchPullRequestReviewBuilder()..update(updates)).build();

  _$ProtectedBranchPullRequestReview._(
      {this.url,
      this.dismissalRestrictions,
      this.dismissStaleReviews,
      this.requireCodeOwnerReviews,
      this.requiredApprovingReviewCount})
      : super._();

  @override
  ProtectedBranchPullRequestReview rebuild(
          void Function(ProtectedBranchPullRequestReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchPullRequestReviewBuilder toBuilder() =>
      new ProtectedBranchPullRequestReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchPullRequestReview &&
        url == other.url &&
        dismissalRestrictions == other.dismissalRestrictions &&
        dismissStaleReviews == other.dismissStaleReviews &&
        requireCodeOwnerReviews == other.requireCodeOwnerReviews &&
        requiredApprovingReviewCount == other.requiredApprovingReviewCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, url.hashCode), dismissalRestrictions.hashCode),
                dismissStaleReviews.hashCode),
            requireCodeOwnerReviews.hashCode),
        requiredApprovingReviewCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtectedBranchPullRequestReview')
          ..add('url', url)
          ..add('dismissalRestrictions', dismissalRestrictions)
          ..add('dismissStaleReviews', dismissStaleReviews)
          ..add('requireCodeOwnerReviews', requireCodeOwnerReviews)
          ..add('requiredApprovingReviewCount', requiredApprovingReviewCount))
        .toString();
  }
}

class ProtectedBranchPullRequestReviewBuilder
    implements
        Builder<ProtectedBranchPullRequestReview,
            ProtectedBranchPullRequestReviewBuilder> {
  _$ProtectedBranchPullRequestReview _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder
      _dismissalRestrictions;
  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder
      get dismissalRestrictions => _$this._dismissalRestrictions ??=
          new ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder();
  set dismissalRestrictions(
          ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder
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

  ProtectedBranchPullRequestReviewBuilder() {
    ProtectedBranchPullRequestReview._initializeBuilder(this);
  }

  ProtectedBranchPullRequestReviewBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _dismissalRestrictions = _$v.dismissalRestrictions?.toBuilder();
      _dismissStaleReviews = _$v.dismissStaleReviews;
      _requireCodeOwnerReviews = _$v.requireCodeOwnerReviews;
      _requiredApprovingReviewCount = _$v.requiredApprovingReviewCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchPullRequestReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchPullRequestReview;
  }

  @override
  void update(void Function(ProtectedBranchPullRequestReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchPullRequestReview build() {
    _$ProtectedBranchPullRequestReview _$result;
    try {
      _$result = _$v ??
          new _$ProtectedBranchPullRequestReview._(
              url: url,
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
            'ProtectedBranchPullRequestReview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
