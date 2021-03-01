// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_comment_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewCommentLinks>
    _$pullRequestReviewCommentLinksSerializer =
    new _$PullRequestReviewCommentLinksSerializer();

class _$PullRequestReviewCommentLinksSerializer
    implements StructuredSerializer<PullRequestReviewCommentLinks> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewCommentLinks,
    _$PullRequestReviewCommentLinks
  ];
  @override
  final String wireName = 'PullRequestReviewCommentLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewCommentLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(PullRequestReviewCommentLinksSelf)));
    }
    if (object.html != null) {
      result
        ..add('html')
        ..add(serializers.serialize(object.html,
            specifiedType: const FullType(PullRequestReviewCommentLinksHtml)));
    }
    if (object.pullRequest != null) {
      result
        ..add('pull_request')
        ..add(serializers.serialize(object.pullRequest,
            specifiedType:
                const FullType(PullRequestReviewCommentLinksPullRequest)));
    }
    return result;
  }

  @override
  PullRequestReviewCommentLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewCommentLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'self':
          result.self.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(PullRequestReviewCommentLinksSelf))
              as PullRequestReviewCommentLinksSelf);
          break;
        case 'html':
          result.html.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(PullRequestReviewCommentLinksHtml))
              as PullRequestReviewCommentLinksHtml);
          break;
        case 'pull_request':
          result.pullRequest.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(PullRequestReviewCommentLinksPullRequest))
              as PullRequestReviewCommentLinksPullRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestReviewCommentLinks extends PullRequestReviewCommentLinks {
  @override
  final PullRequestReviewCommentLinksSelf self;
  @override
  final PullRequestReviewCommentLinksHtml html;
  @override
  final PullRequestReviewCommentLinksPullRequest pullRequest;

  factory _$PullRequestReviewCommentLinks(
          [void Function(PullRequestReviewCommentLinksBuilder) updates]) =>
      (new PullRequestReviewCommentLinksBuilder()..update(updates)).build();

  _$PullRequestReviewCommentLinks._({this.self, this.html, this.pullRequest})
      : super._();

  @override
  PullRequestReviewCommentLinks rebuild(
          void Function(PullRequestReviewCommentLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewCommentLinksBuilder toBuilder() =>
      new PullRequestReviewCommentLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewCommentLinks &&
        self == other.self &&
        html == other.html &&
        pullRequest == other.pullRequest;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, self.hashCode), html.hashCode), pullRequest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewCommentLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('pullRequest', pullRequest))
        .toString();
  }
}

class PullRequestReviewCommentLinksBuilder
    implements
        Builder<PullRequestReviewCommentLinks,
            PullRequestReviewCommentLinksBuilder> {
  _$PullRequestReviewCommentLinks _$v;

  PullRequestReviewCommentLinksSelfBuilder _self;
  PullRequestReviewCommentLinksSelfBuilder get self =>
      _$this._self ??= new PullRequestReviewCommentLinksSelfBuilder();
  set self(PullRequestReviewCommentLinksSelfBuilder self) =>
      _$this._self = self;

  PullRequestReviewCommentLinksHtmlBuilder _html;
  PullRequestReviewCommentLinksHtmlBuilder get html =>
      _$this._html ??= new PullRequestReviewCommentLinksHtmlBuilder();
  set html(PullRequestReviewCommentLinksHtmlBuilder html) =>
      _$this._html = html;

  PullRequestReviewCommentLinksPullRequestBuilder _pullRequest;
  PullRequestReviewCommentLinksPullRequestBuilder get pullRequest =>
      _$this._pullRequest ??=
          new PullRequestReviewCommentLinksPullRequestBuilder();
  set pullRequest(
          PullRequestReviewCommentLinksPullRequestBuilder pullRequest) =>
      _$this._pullRequest = pullRequest;

  PullRequestReviewCommentLinksBuilder() {
    PullRequestReviewCommentLinks._initializeBuilder(this);
  }

  PullRequestReviewCommentLinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self?.toBuilder();
      _html = _$v.html?.toBuilder();
      _pullRequest = _$v.pullRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewCommentLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewCommentLinks;
  }

  @override
  void update(void Function(PullRequestReviewCommentLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewCommentLinks build() {
    _$PullRequestReviewCommentLinks _$result;
    try {
      _$result = _$v ??
          new _$PullRequestReviewCommentLinks._(
              self: _self?.build(),
              html: _html?.build(),
              pullRequest: _pullRequest?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'self';
        _self?.build();
        _$failedField = 'html';
        _html?.build();
        _$failedField = 'pullRequest';
        _pullRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestReviewCommentLinks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
