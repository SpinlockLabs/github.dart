// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'review_comment_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewCommentLinks> _$reviewCommentLinksSerializer =
    new _$ReviewCommentLinksSerializer();

class _$ReviewCommentLinksSerializer
    implements StructuredSerializer<ReviewCommentLinks> {
  @override
  final Iterable<Type> types = const [ReviewCommentLinks, _$ReviewCommentLinks];
  @override
  final String wireName = 'ReviewCommentLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewCommentLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(Link)));
    }
    if (object.html != null) {
      result
        ..add('html')
        ..add(serializers.serialize(object.html,
            specifiedType: const FullType(Link)));
    }
    if (object.pullRequest != null) {
      result
        ..add('pull_request')
        ..add(serializers.serialize(object.pullRequest,
            specifiedType: const FullType(Link)));
    }
    return result;
  }

  @override
  ReviewCommentLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewCommentLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'self':
          result.self.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'html':
          result.html.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'pull_request':
          result.pullRequest.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewCommentLinks extends ReviewCommentLinks {
  @override
  final Link self;
  @override
  final Link html;
  @override
  final Link pullRequest;

  factory _$ReviewCommentLinks(
          [void Function(ReviewCommentLinksBuilder) updates]) =>
      (new ReviewCommentLinksBuilder()..update(updates)).build();

  _$ReviewCommentLinks._({this.self, this.html, this.pullRequest}) : super._();

  @override
  ReviewCommentLinks rebuild(
          void Function(ReviewCommentLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewCommentLinksBuilder toBuilder() =>
      new ReviewCommentLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewCommentLinks &&
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
    return (newBuiltValueToStringHelper('ReviewCommentLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('pullRequest', pullRequest))
        .toString();
  }
}

class ReviewCommentLinksBuilder
    implements Builder<ReviewCommentLinks, ReviewCommentLinksBuilder> {
  _$ReviewCommentLinks _$v;

  LinkBuilder _self;
  LinkBuilder get self => _$this._self ??= new LinkBuilder();
  set self(LinkBuilder self) => _$this._self = self;

  LinkBuilder _html;
  LinkBuilder get html => _$this._html ??= new LinkBuilder();
  set html(LinkBuilder html) => _$this._html = html;

  LinkBuilder _pullRequest;
  LinkBuilder get pullRequest => _$this._pullRequest ??= new LinkBuilder();
  set pullRequest(LinkBuilder pullRequest) => _$this._pullRequest = pullRequest;

  ReviewCommentLinksBuilder() {
    ReviewCommentLinks._initializeBuilder(this);
  }

  ReviewCommentLinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self?.toBuilder();
      _html = _$v.html?.toBuilder();
      _pullRequest = _$v.pullRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewCommentLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewCommentLinks;
  }

  @override
  void update(void Function(ReviewCommentLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewCommentLinks build() {
    _$ReviewCommentLinks _$result;
    try {
      _$result = _$v ??
          new _$ReviewCommentLinks._(
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
            'ReviewCommentLinks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
