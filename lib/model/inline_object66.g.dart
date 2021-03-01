// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object66.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject66> _$inlineObject66Serializer =
    new _$InlineObject66Serializer();

class _$InlineObject66Serializer
    implements StructuredSerializer<InlineObject66> {
  @override
  final Iterable<Type> types = const [InlineObject66, _$InlineObject66];
  @override
  final String wireName = 'InlineObject66';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject66 object,
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
  InlineObject66 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject66Builder();

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

class _$InlineObject66 extends InlineObject66 {
  @override
  final ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
      dismissalRestrictions;
  @override
  final bool dismissStaleReviews;
  @override
  final bool requireCodeOwnerReviews;
  @override
  final int requiredApprovingReviewCount;

  factory _$InlineObject66([void Function(InlineObject66Builder) updates]) =>
      (new InlineObject66Builder()..update(updates)).build();

  _$InlineObject66._(
      {this.dismissalRestrictions,
      this.dismissStaleReviews,
      this.requireCodeOwnerReviews,
      this.requiredApprovingReviewCount})
      : super._();

  @override
  InlineObject66 rebuild(void Function(InlineObject66Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject66Builder toBuilder() =>
      new InlineObject66Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject66 &&
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
    return (newBuiltValueToStringHelper('InlineObject66')
          ..add('dismissalRestrictions', dismissalRestrictions)
          ..add('dismissStaleReviews', dismissStaleReviews)
          ..add('requireCodeOwnerReviews', requireCodeOwnerReviews)
          ..add('requiredApprovingReviewCount', requiredApprovingReviewCount))
        .toString();
  }
}

class InlineObject66Builder
    implements Builder<InlineObject66, InlineObject66Builder> {
  _$InlineObject66 _$v;

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

  InlineObject66Builder() {
    InlineObject66._initializeBuilder(this);
  }

  InlineObject66Builder get _$this {
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
  void replace(InlineObject66 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject66;
  }

  @override
  void update(void Function(InlineObject66Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject66 build() {
    _$InlineObject66 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject66._(
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
            'InlineObject66', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
