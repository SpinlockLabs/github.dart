// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_comment_links_pull_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewCommentLinksPullRequest>
    _$pullRequestReviewCommentLinksPullRequestSerializer =
    new _$PullRequestReviewCommentLinksPullRequestSerializer();

class _$PullRequestReviewCommentLinksPullRequestSerializer
    implements StructuredSerializer<PullRequestReviewCommentLinksPullRequest> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewCommentLinksPullRequest,
    _$PullRequestReviewCommentLinksPullRequest
  ];
  @override
  final String wireName = 'PullRequestReviewCommentLinksPullRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewCommentLinksPullRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.href != null) {
      result
        ..add('href')
        ..add(serializers.serialize(object.href,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PullRequestReviewCommentLinksPullRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewCommentLinksPullRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'href':
          result.href = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestReviewCommentLinksPullRequest
    extends PullRequestReviewCommentLinksPullRequest {
  @override
  final String href;

  factory _$PullRequestReviewCommentLinksPullRequest(
          [void Function(PullRequestReviewCommentLinksPullRequestBuilder)
              updates]) =>
      (new PullRequestReviewCommentLinksPullRequestBuilder()..update(updates))
          .build();

  _$PullRequestReviewCommentLinksPullRequest._({this.href}) : super._();

  @override
  PullRequestReviewCommentLinksPullRequest rebuild(
          void Function(PullRequestReviewCommentLinksPullRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewCommentLinksPullRequestBuilder toBuilder() =>
      new PullRequestReviewCommentLinksPullRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewCommentLinksPullRequest &&
        href == other.href;
  }

  @override
  int get hashCode {
    return $jf($jc(0, href.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'PullRequestReviewCommentLinksPullRequest')
          ..add('href', href))
        .toString();
  }
}

class PullRequestReviewCommentLinksPullRequestBuilder
    implements
        Builder<PullRequestReviewCommentLinksPullRequest,
            PullRequestReviewCommentLinksPullRequestBuilder> {
  _$PullRequestReviewCommentLinksPullRequest _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  PullRequestReviewCommentLinksPullRequestBuilder() {
    PullRequestReviewCommentLinksPullRequest._initializeBuilder(this);
  }

  PullRequestReviewCommentLinksPullRequestBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewCommentLinksPullRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewCommentLinksPullRequest;
  }

  @override
  void update(
      void Function(PullRequestReviewCommentLinksPullRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewCommentLinksPullRequest build() {
    final _$result =
        _$v ?? new _$PullRequestReviewCommentLinksPullRequest._(href: href);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
