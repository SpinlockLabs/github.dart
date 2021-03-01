// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_simple_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestSimpleLinks> _$pullRequestSimpleLinksSerializer =
    new _$PullRequestSimpleLinksSerializer();

class _$PullRequestSimpleLinksSerializer
    implements StructuredSerializer<PullRequestSimpleLinks> {
  @override
  final Iterable<Type> types = const [
    PullRequestSimpleLinks,
    _$PullRequestSimpleLinks
  ];
  @override
  final String wireName = 'PullRequestSimpleLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestSimpleLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(Link)));
    }
    if (object.commits != null) {
      result
        ..add('commits')
        ..add(serializers.serialize(object.commits,
            specifiedType: const FullType(Link)));
    }
    if (object.statuses != null) {
      result
        ..add('statuses')
        ..add(serializers.serialize(object.statuses,
            specifiedType: const FullType(Link)));
    }
    if (object.html != null) {
      result
        ..add('html')
        ..add(serializers.serialize(object.html,
            specifiedType: const FullType(Link)));
    }
    if (object.issue != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(object.issue,
            specifiedType: const FullType(Link)));
    }
    if (object.reviewComments != null) {
      result
        ..add('review_comments')
        ..add(serializers.serialize(object.reviewComments,
            specifiedType: const FullType(Link)));
    }
    if (object.reviewComment != null) {
      result
        ..add('review_comment')
        ..add(serializers.serialize(object.reviewComment,
            specifiedType: const FullType(Link)));
    }
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(Link)));
    }
    return result;
  }

  @override
  PullRequestSimpleLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestSimpleLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'commits':
          result.commits.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'statuses':
          result.statuses.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'html':
          result.html.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'issue':
          result.issue.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'review_comments':
          result.reviewComments.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'review_comment':
          result.reviewComment.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
        case 'self':
          result.self.replace(serializers.deserialize(value,
              specifiedType: const FullType(Link)) as Link);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestSimpleLinks extends PullRequestSimpleLinks {
  @override
  final Link comments;
  @override
  final Link commits;
  @override
  final Link statuses;
  @override
  final Link html;
  @override
  final Link issue;
  @override
  final Link reviewComments;
  @override
  final Link reviewComment;
  @override
  final Link self;

  factory _$PullRequestSimpleLinks(
          [void Function(PullRequestSimpleLinksBuilder) updates]) =>
      (new PullRequestSimpleLinksBuilder()..update(updates)).build();

  _$PullRequestSimpleLinks._(
      {this.comments,
      this.commits,
      this.statuses,
      this.html,
      this.issue,
      this.reviewComments,
      this.reviewComment,
      this.self})
      : super._();

  @override
  PullRequestSimpleLinks rebuild(
          void Function(PullRequestSimpleLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestSimpleLinksBuilder toBuilder() =>
      new PullRequestSimpleLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestSimpleLinks &&
        comments == other.comments &&
        commits == other.commits &&
        statuses == other.statuses &&
        html == other.html &&
        issue == other.issue &&
        reviewComments == other.reviewComments &&
        reviewComment == other.reviewComment &&
        self == other.self;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, comments.hashCode), commits.hashCode),
                            statuses.hashCode),
                        html.hashCode),
                    issue.hashCode),
                reviewComments.hashCode),
            reviewComment.hashCode),
        self.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestSimpleLinks')
          ..add('comments', comments)
          ..add('commits', commits)
          ..add('statuses', statuses)
          ..add('html', html)
          ..add('issue', issue)
          ..add('reviewComments', reviewComments)
          ..add('reviewComment', reviewComment)
          ..add('self', self))
        .toString();
  }
}

class PullRequestSimpleLinksBuilder
    implements Builder<PullRequestSimpleLinks, PullRequestSimpleLinksBuilder> {
  _$PullRequestSimpleLinks _$v;

  LinkBuilder _comments;
  LinkBuilder get comments => _$this._comments ??= new LinkBuilder();
  set comments(LinkBuilder comments) => _$this._comments = comments;

  LinkBuilder _commits;
  LinkBuilder get commits => _$this._commits ??= new LinkBuilder();
  set commits(LinkBuilder commits) => _$this._commits = commits;

  LinkBuilder _statuses;
  LinkBuilder get statuses => _$this._statuses ??= new LinkBuilder();
  set statuses(LinkBuilder statuses) => _$this._statuses = statuses;

  LinkBuilder _html;
  LinkBuilder get html => _$this._html ??= new LinkBuilder();
  set html(LinkBuilder html) => _$this._html = html;

  LinkBuilder _issue;
  LinkBuilder get issue => _$this._issue ??= new LinkBuilder();
  set issue(LinkBuilder issue) => _$this._issue = issue;

  LinkBuilder _reviewComments;
  LinkBuilder get reviewComments =>
      _$this._reviewComments ??= new LinkBuilder();
  set reviewComments(LinkBuilder reviewComments) =>
      _$this._reviewComments = reviewComments;

  LinkBuilder _reviewComment;
  LinkBuilder get reviewComment => _$this._reviewComment ??= new LinkBuilder();
  set reviewComment(LinkBuilder reviewComment) =>
      _$this._reviewComment = reviewComment;

  LinkBuilder _self;
  LinkBuilder get self => _$this._self ??= new LinkBuilder();
  set self(LinkBuilder self) => _$this._self = self;

  PullRequestSimpleLinksBuilder() {
    PullRequestSimpleLinks._initializeBuilder(this);
  }

  PullRequestSimpleLinksBuilder get _$this {
    if (_$v != null) {
      _comments = _$v.comments?.toBuilder();
      _commits = _$v.commits?.toBuilder();
      _statuses = _$v.statuses?.toBuilder();
      _html = _$v.html?.toBuilder();
      _issue = _$v.issue?.toBuilder();
      _reviewComments = _$v.reviewComments?.toBuilder();
      _reviewComment = _$v.reviewComment?.toBuilder();
      _self = _$v.self?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestSimpleLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestSimpleLinks;
  }

  @override
  void update(void Function(PullRequestSimpleLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestSimpleLinks build() {
    _$PullRequestSimpleLinks _$result;
    try {
      _$result = _$v ??
          new _$PullRequestSimpleLinks._(
              comments: _comments?.build(),
              commits: _commits?.build(),
              statuses: _statuses?.build(),
              html: _html?.build(),
              issue: _issue?.build(),
              reviewComments: _reviewComments?.build(),
              reviewComment: _reviewComment?.build(),
              self: _self?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
        _$failedField = 'commits';
        _commits?.build();
        _$failedField = 'statuses';
        _statuses?.build();
        _$failedField = 'html';
        _html?.build();
        _$failedField = 'issue';
        _issue?.build();
        _$failedField = 'reviewComments';
        _reviewComments?.build();
        _$failedField = 'reviewComment';
        _reviewComment?.build();
        _$failedField = 'self';
        _self?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestSimpleLinks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
