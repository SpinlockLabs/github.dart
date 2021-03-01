// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_comment_links_html.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewCommentLinksHtml>
    _$pullRequestReviewCommentLinksHtmlSerializer =
    new _$PullRequestReviewCommentLinksHtmlSerializer();

class _$PullRequestReviewCommentLinksHtmlSerializer
    implements StructuredSerializer<PullRequestReviewCommentLinksHtml> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewCommentLinksHtml,
    _$PullRequestReviewCommentLinksHtml
  ];
  @override
  final String wireName = 'PullRequestReviewCommentLinksHtml';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewCommentLinksHtml object,
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
  PullRequestReviewCommentLinksHtml deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewCommentLinksHtmlBuilder();

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

class _$PullRequestReviewCommentLinksHtml
    extends PullRequestReviewCommentLinksHtml {
  @override
  final String href;

  factory _$PullRequestReviewCommentLinksHtml(
          [void Function(PullRequestReviewCommentLinksHtmlBuilder) updates]) =>
      (new PullRequestReviewCommentLinksHtmlBuilder()..update(updates)).build();

  _$PullRequestReviewCommentLinksHtml._({this.href}) : super._();

  @override
  PullRequestReviewCommentLinksHtml rebuild(
          void Function(PullRequestReviewCommentLinksHtmlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewCommentLinksHtmlBuilder toBuilder() =>
      new PullRequestReviewCommentLinksHtmlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewCommentLinksHtml && href == other.href;
  }

  @override
  int get hashCode {
    return $jf($jc(0, href.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewCommentLinksHtml')
          ..add('href', href))
        .toString();
  }
}

class PullRequestReviewCommentLinksHtmlBuilder
    implements
        Builder<PullRequestReviewCommentLinksHtml,
            PullRequestReviewCommentLinksHtmlBuilder> {
  _$PullRequestReviewCommentLinksHtml _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  PullRequestReviewCommentLinksHtmlBuilder() {
    PullRequestReviewCommentLinksHtml._initializeBuilder(this);
  }

  PullRequestReviewCommentLinksHtmlBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewCommentLinksHtml other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewCommentLinksHtml;
  }

  @override
  void update(void Function(PullRequestReviewCommentLinksHtmlBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewCommentLinksHtml build() {
    final _$result =
        _$v ?? new _$PullRequestReviewCommentLinksHtml._(href: href);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
