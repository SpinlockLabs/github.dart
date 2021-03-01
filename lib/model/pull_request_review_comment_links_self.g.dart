// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_comment_links_self.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewCommentLinksSelf>
    _$pullRequestReviewCommentLinksSelfSerializer =
    new _$PullRequestReviewCommentLinksSelfSerializer();

class _$PullRequestReviewCommentLinksSelfSerializer
    implements StructuredSerializer<PullRequestReviewCommentLinksSelf> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewCommentLinksSelf,
    _$PullRequestReviewCommentLinksSelf
  ];
  @override
  final String wireName = 'PullRequestReviewCommentLinksSelf';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewCommentLinksSelf object,
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
  PullRequestReviewCommentLinksSelf deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewCommentLinksSelfBuilder();

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

class _$PullRequestReviewCommentLinksSelf
    extends PullRequestReviewCommentLinksSelf {
  @override
  final String href;

  factory _$PullRequestReviewCommentLinksSelf(
          [void Function(PullRequestReviewCommentLinksSelfBuilder) updates]) =>
      (new PullRequestReviewCommentLinksSelfBuilder()..update(updates)).build();

  _$PullRequestReviewCommentLinksSelf._({this.href}) : super._();

  @override
  PullRequestReviewCommentLinksSelf rebuild(
          void Function(PullRequestReviewCommentLinksSelfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewCommentLinksSelfBuilder toBuilder() =>
      new PullRequestReviewCommentLinksSelfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewCommentLinksSelf && href == other.href;
  }

  @override
  int get hashCode {
    return $jf($jc(0, href.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewCommentLinksSelf')
          ..add('href', href))
        .toString();
  }
}

class PullRequestReviewCommentLinksSelfBuilder
    implements
        Builder<PullRequestReviewCommentLinksSelf,
            PullRequestReviewCommentLinksSelfBuilder> {
  _$PullRequestReviewCommentLinksSelf _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  PullRequestReviewCommentLinksSelfBuilder() {
    PullRequestReviewCommentLinksSelf._initializeBuilder(this);
  }

  PullRequestReviewCommentLinksSelfBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewCommentLinksSelf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewCommentLinksSelf;
  }

  @override
  void update(void Function(PullRequestReviewCommentLinksSelfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewCommentLinksSelf build() {
    final _$result =
        _$v ?? new _$PullRequestReviewCommentLinksSelf._(href: href);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
