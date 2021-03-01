// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_required_pull_request_reviews.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchRequiredPullRequestReviews>
    _$protectedBranchRequiredPullRequestReviewsSerializer =
    new _$ProtectedBranchRequiredPullRequestReviewsSerializer();

class _$ProtectedBranchRequiredPullRequestReviewsSerializer
    implements StructuredSerializer<ProtectedBranchRequiredPullRequestReviews> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchRequiredPullRequestReviews,
    _$ProtectedBranchRequiredPullRequestReviews
  ];
  @override
  final String wireName = 'ProtectedBranchRequiredPullRequestReviews';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProtectedBranchRequiredPullRequestReviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
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
    if (object.dismissalRestrictions != null) {
      result
        ..add('dismissal_restrictions')
        ..add(serializers.serialize(object.dismissalRestrictions,
            specifiedType: const FullType(
                ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions)));
    }
    return result;
  }

  @override
  ProtectedBranchRequiredPullRequestReviews deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchRequiredPullRequestReviewsBuilder();

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
        case 'dismissal_restrictions':
          result.dismissalRestrictions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions))
              as ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions);
          break;
      }
    }

    return result.build();
  }
}

class _$ProtectedBranchRequiredPullRequestReviews
    extends ProtectedBranchRequiredPullRequestReviews {
  @override
  final String url;
  @override
  final bool dismissStaleReviews;
  @override
  final bool requireCodeOwnerReviews;
  @override
  final int requiredApprovingReviewCount;
  @override
  final ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions
      dismissalRestrictions;

  factory _$ProtectedBranchRequiredPullRequestReviews(
          [void Function(ProtectedBranchRequiredPullRequestReviewsBuilder)
              updates]) =>
      (new ProtectedBranchRequiredPullRequestReviewsBuilder()..update(updates))
          .build();

  _$ProtectedBranchRequiredPullRequestReviews._(
      {this.url,
      this.dismissStaleReviews,
      this.requireCodeOwnerReviews,
      this.requiredApprovingReviewCount,
      this.dismissalRestrictions})
      : super._();

  @override
  ProtectedBranchRequiredPullRequestReviews rebuild(
          void Function(ProtectedBranchRequiredPullRequestReviewsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchRequiredPullRequestReviewsBuilder toBuilder() =>
      new ProtectedBranchRequiredPullRequestReviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchRequiredPullRequestReviews &&
        url == other.url &&
        dismissStaleReviews == other.dismissStaleReviews &&
        requireCodeOwnerReviews == other.requireCodeOwnerReviews &&
        requiredApprovingReviewCount == other.requiredApprovingReviewCount &&
        dismissalRestrictions == other.dismissalRestrictions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, url.hashCode), dismissStaleReviews.hashCode),
                requireCodeOwnerReviews.hashCode),
            requiredApprovingReviewCount.hashCode),
        dismissalRestrictions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ProtectedBranchRequiredPullRequestReviews')
          ..add('url', url)
          ..add('dismissStaleReviews', dismissStaleReviews)
          ..add('requireCodeOwnerReviews', requireCodeOwnerReviews)
          ..add('requiredApprovingReviewCount', requiredApprovingReviewCount)
          ..add('dismissalRestrictions', dismissalRestrictions))
        .toString();
  }
}

class ProtectedBranchRequiredPullRequestReviewsBuilder
    implements
        Builder<ProtectedBranchRequiredPullRequestReviews,
            ProtectedBranchRequiredPullRequestReviewsBuilder> {
  _$ProtectedBranchRequiredPullRequestReviews _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

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

  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder
      _dismissalRestrictions;
  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder
      get dismissalRestrictions => _$this._dismissalRestrictions ??=
          new ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder();
  set dismissalRestrictions(
          ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder
              dismissalRestrictions) =>
      _$this._dismissalRestrictions = dismissalRestrictions;

  ProtectedBranchRequiredPullRequestReviewsBuilder() {
    ProtectedBranchRequiredPullRequestReviews._initializeBuilder(this);
  }

  ProtectedBranchRequiredPullRequestReviewsBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _dismissStaleReviews = _$v.dismissStaleReviews;
      _requireCodeOwnerReviews = _$v.requireCodeOwnerReviews;
      _requiredApprovingReviewCount = _$v.requiredApprovingReviewCount;
      _dismissalRestrictions = _$v.dismissalRestrictions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchRequiredPullRequestReviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchRequiredPullRequestReviews;
  }

  @override
  void update(
      void Function(ProtectedBranchRequiredPullRequestReviewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchRequiredPullRequestReviews build() {
    _$ProtectedBranchRequiredPullRequestReviews _$result;
    try {
      _$result = _$v ??
          new _$ProtectedBranchRequiredPullRequestReviews._(
              url: url,
              dismissStaleReviews: dismissStaleReviews,
              requireCodeOwnerReviews: requireCodeOwnerReviews,
              requiredApprovingReviewCount: requiredApprovingReviewCount,
              dismissalRestrictions: _dismissalRestrictions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dismissalRestrictions';
        _dismissalRestrictions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProtectedBranchRequiredPullRequestReviews',
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
