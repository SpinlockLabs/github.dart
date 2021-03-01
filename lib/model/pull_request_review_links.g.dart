// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewLinks> _$pullRequestReviewLinksSerializer =
    new _$PullRequestReviewLinksSerializer();

class _$PullRequestReviewLinksSerializer
    implements StructuredSerializer<PullRequestReviewLinks> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewLinks,
    _$PullRequestReviewLinks
  ];
  @override
  final String wireName = 'PullRequestReviewLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.html != null) {
      result
        ..add('html')
        ..add(serializers.serialize(object.html,
            specifiedType: const FullType(PullRequestReviewLinksHtml)));
    }
    if (object.pullRequest != null) {
      result
        ..add('pull_request')
        ..add(serializers.serialize(object.pullRequest,
            specifiedType: const FullType(PullRequestReviewLinksHtml)));
    }
    return result;
  }

  @override
  PullRequestReviewLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'html':
          result.html.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestReviewLinksHtml))
              as PullRequestReviewLinksHtml);
          break;
        case 'pull_request':
          result.pullRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestReviewLinksHtml))
              as PullRequestReviewLinksHtml);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestReviewLinks extends PullRequestReviewLinks {
  @override
  final PullRequestReviewLinksHtml html;
  @override
  final PullRequestReviewLinksHtml pullRequest;

  factory _$PullRequestReviewLinks(
          [void Function(PullRequestReviewLinksBuilder) updates]) =>
      (new PullRequestReviewLinksBuilder()..update(updates)).build();

  _$PullRequestReviewLinks._({this.html, this.pullRequest}) : super._();

  @override
  PullRequestReviewLinks rebuild(
          void Function(PullRequestReviewLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewLinksBuilder toBuilder() =>
      new PullRequestReviewLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewLinks &&
        html == other.html &&
        pullRequest == other.pullRequest;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, html.hashCode), pullRequest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewLinks')
          ..add('html', html)
          ..add('pullRequest', pullRequest))
        .toString();
  }
}

class PullRequestReviewLinksBuilder
    implements Builder<PullRequestReviewLinks, PullRequestReviewLinksBuilder> {
  _$PullRequestReviewLinks _$v;

  PullRequestReviewLinksHtmlBuilder _html;
  PullRequestReviewLinksHtmlBuilder get html =>
      _$this._html ??= new PullRequestReviewLinksHtmlBuilder();
  set html(PullRequestReviewLinksHtmlBuilder html) => _$this._html = html;

  PullRequestReviewLinksHtmlBuilder _pullRequest;
  PullRequestReviewLinksHtmlBuilder get pullRequest =>
      _$this._pullRequest ??= new PullRequestReviewLinksHtmlBuilder();
  set pullRequest(PullRequestReviewLinksHtmlBuilder pullRequest) =>
      _$this._pullRequest = pullRequest;

  PullRequestReviewLinksBuilder() {
    PullRequestReviewLinks._initializeBuilder(this);
  }

  PullRequestReviewLinksBuilder get _$this {
    if (_$v != null) {
      _html = _$v.html?.toBuilder();
      _pullRequest = _$v.pullRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewLinks;
  }

  @override
  void update(void Function(PullRequestReviewLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewLinks build() {
    _$PullRequestReviewLinks _$result;
    try {
      _$result = _$v ??
          new _$PullRequestReviewLinks._(
              html: _html?.build(), pullRequest: _pullRequest?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'html';
        _html?.build();
        _$failedField = 'pullRequest';
        _pullRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestReviewLinks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
