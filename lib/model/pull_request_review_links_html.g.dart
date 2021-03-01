// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_links_html.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewLinksHtml> _$pullRequestReviewLinksHtmlSerializer =
    new _$PullRequestReviewLinksHtmlSerializer();

class _$PullRequestReviewLinksHtmlSerializer
    implements StructuredSerializer<PullRequestReviewLinksHtml> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewLinksHtml,
    _$PullRequestReviewLinksHtml
  ];
  @override
  final String wireName = 'PullRequestReviewLinksHtml';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewLinksHtml object,
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
  PullRequestReviewLinksHtml deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewLinksHtmlBuilder();

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

class _$PullRequestReviewLinksHtml extends PullRequestReviewLinksHtml {
  @override
  final String href;

  factory _$PullRequestReviewLinksHtml(
          [void Function(PullRequestReviewLinksHtmlBuilder) updates]) =>
      (new PullRequestReviewLinksHtmlBuilder()..update(updates)).build();

  _$PullRequestReviewLinksHtml._({this.href}) : super._();

  @override
  PullRequestReviewLinksHtml rebuild(
          void Function(PullRequestReviewLinksHtmlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewLinksHtmlBuilder toBuilder() =>
      new PullRequestReviewLinksHtmlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewLinksHtml && href == other.href;
  }

  @override
  int get hashCode {
    return $jf($jc(0, href.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewLinksHtml')
          ..add('href', href))
        .toString();
  }
}

class PullRequestReviewLinksHtmlBuilder
    implements
        Builder<PullRequestReviewLinksHtml, PullRequestReviewLinksHtmlBuilder> {
  _$PullRequestReviewLinksHtml _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  PullRequestReviewLinksHtmlBuilder() {
    PullRequestReviewLinksHtml._initializeBuilder(this);
  }

  PullRequestReviewLinksHtmlBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewLinksHtml other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewLinksHtml;
  }

  @override
  void update(void Function(PullRequestReviewLinksHtmlBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewLinksHtml build() {
    final _$result = _$v ?? new _$PullRequestReviewLinksHtml._(href: href);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
