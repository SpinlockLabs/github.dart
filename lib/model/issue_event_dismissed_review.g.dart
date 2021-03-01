// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event_dismissed_review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEventDismissedReview> _$issueEventDismissedReviewSerializer =
    new _$IssueEventDismissedReviewSerializer();

class _$IssueEventDismissedReviewSerializer
    implements StructuredSerializer<IssueEventDismissedReview> {
  @override
  final Iterable<Type> types = const [
    IssueEventDismissedReview,
    _$IssueEventDismissedReview
  ];
  @override
  final String wireName = 'IssueEventDismissedReview';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IssueEventDismissedReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.reviewId != null) {
      result
        ..add('review_id')
        ..add(serializers.serialize(object.reviewId,
            specifiedType: const FullType(int)));
    }
    if (object.dismissalMessage != null) {
      result
        ..add('dismissal_message')
        ..add(serializers.serialize(object.dismissalMessage,
            specifiedType: const FullType(String)));
    }
    if (object.dismissalCommitId != null) {
      result
        ..add('dismissal_commit_id')
        ..add(serializers.serialize(object.dismissalCommitId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueEventDismissedReview deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventDismissedReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_id':
          result.reviewId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dismissal_message':
          result.dismissalMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dismissal_commit_id':
          result.dismissalCommitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueEventDismissedReview extends IssueEventDismissedReview {
  @override
  final String state;
  @override
  final int reviewId;
  @override
  final String dismissalMessage;
  @override
  final String dismissalCommitId;

  factory _$IssueEventDismissedReview(
          [void Function(IssueEventDismissedReviewBuilder) updates]) =>
      (new IssueEventDismissedReviewBuilder()..update(updates)).build();

  _$IssueEventDismissedReview._(
      {this.state,
      this.reviewId,
      this.dismissalMessage,
      this.dismissalCommitId})
      : super._();

  @override
  IssueEventDismissedReview rebuild(
          void Function(IssueEventDismissedReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventDismissedReviewBuilder toBuilder() =>
      new IssueEventDismissedReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEventDismissedReview &&
        state == other.state &&
        reviewId == other.reviewId &&
        dismissalMessage == other.dismissalMessage &&
        dismissalCommitId == other.dismissalCommitId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, state.hashCode), reviewId.hashCode),
            dismissalMessage.hashCode),
        dismissalCommitId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEventDismissedReview')
          ..add('state', state)
          ..add('reviewId', reviewId)
          ..add('dismissalMessage', dismissalMessage)
          ..add('dismissalCommitId', dismissalCommitId))
        .toString();
  }
}

class IssueEventDismissedReviewBuilder
    implements
        Builder<IssueEventDismissedReview, IssueEventDismissedReviewBuilder> {
  _$IssueEventDismissedReview _$v;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  int _reviewId;
  int get reviewId => _$this._reviewId;
  set reviewId(int reviewId) => _$this._reviewId = reviewId;

  String _dismissalMessage;
  String get dismissalMessage => _$this._dismissalMessage;
  set dismissalMessage(String dismissalMessage) =>
      _$this._dismissalMessage = dismissalMessage;

  String _dismissalCommitId;
  String get dismissalCommitId => _$this._dismissalCommitId;
  set dismissalCommitId(String dismissalCommitId) =>
      _$this._dismissalCommitId = dismissalCommitId;

  IssueEventDismissedReviewBuilder() {
    IssueEventDismissedReview._initializeBuilder(this);
  }

  IssueEventDismissedReviewBuilder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _reviewId = _$v.reviewId;
      _dismissalMessage = _$v.dismissalMessage;
      _dismissalCommitId = _$v.dismissalCommitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEventDismissedReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEventDismissedReview;
  }

  @override
  void update(void Function(IssueEventDismissedReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEventDismissedReview build() {
    final _$result = _$v ??
        new _$IssueEventDismissedReview._(
            state: state,
            reviewId: reviewId,
            dismissalMessage: dismissalMessage,
            dismissalCommitId: dismissalCommitId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
