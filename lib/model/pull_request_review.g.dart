// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReview> _$pullRequestReviewSerializer =
    new _$PullRequestReviewSerializer();

class _$PullRequestReviewSerializer
    implements StructuredSerializer<PullRequestReview> {
  @override
  final Iterable<Type> types = const [PullRequestReview, _$PullRequestReview];
  @override
  final String wireName = 'PullRequestReview';

  @override
  Iterable<Object> serialize(Serializers serializers, PullRequestReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestUrl != null) {
      result
        ..add('pull_request_url')
        ..add(serializers.serialize(object.pullRequestUrl,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(PullRequestReviewLinks)));
    }
    if (object.submittedAt != null) {
      result
        ..add('submitted_at')
        ..add(serializers.serialize(object.submittedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
            specifiedType: const FullType(String)));
    }
    if (object.bodyHtml != null) {
      result
        ..add('body_html')
        ..add(serializers.serialize(object.bodyHtml,
            specifiedType: const FullType(String)));
    }
    if (object.bodyText != null) {
      result
        ..add('body_text')
        ..add(serializers.serialize(object.bodyText,
            specifiedType: const FullType(String)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    return result;
  }

  @override
  PullRequestReview deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_url':
          result.pullRequestUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestReviewLinks))
              as PullRequestReviewLinks);
          break;
        case 'submitted_at':
          result.submittedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_text':
          result.bodyText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestReview extends PullRequestReview {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final SimpleUser user;
  @override
  final String body;
  @override
  final String state;
  @override
  final String htmlUrl;
  @override
  final String pullRequestUrl;
  @override
  final PullRequestReviewLinks links;
  @override
  final DateTime submittedAt;
  @override
  final String commitId;
  @override
  final String bodyHtml;
  @override
  final String bodyText;
  @override
  final AuthorAssociation authorAssociation;

  factory _$PullRequestReview(
          [void Function(PullRequestReviewBuilder) updates]) =>
      (new PullRequestReviewBuilder()..update(updates)).build();

  _$PullRequestReview._(
      {this.id,
      this.nodeId,
      this.user,
      this.body,
      this.state,
      this.htmlUrl,
      this.pullRequestUrl,
      this.links,
      this.submittedAt,
      this.commitId,
      this.bodyHtml,
      this.bodyText,
      this.authorAssociation})
      : super._();

  @override
  PullRequestReview rebuild(void Function(PullRequestReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewBuilder toBuilder() =>
      new PullRequestReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReview &&
        id == other.id &&
        nodeId == other.nodeId &&
        user == other.user &&
        body == other.body &&
        state == other.state &&
        htmlUrl == other.htmlUrl &&
        pullRequestUrl == other.pullRequestUrl &&
        links == other.links &&
        submittedAt == other.submittedAt &&
        commitId == other.commitId &&
        bodyHtml == other.bodyHtml &&
        bodyText == other.bodyText &&
        authorAssociation == other.authorAssociation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    nodeId.hashCode),
                                                user.hashCode),
                                            body.hashCode),
                                        state.hashCode),
                                    htmlUrl.hashCode),
                                pullRequestUrl.hashCode),
                            links.hashCode),
                        submittedAt.hashCode),
                    commitId.hashCode),
                bodyHtml.hashCode),
            bodyText.hashCode),
        authorAssociation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReview')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('user', user)
          ..add('body', body)
          ..add('state', state)
          ..add('htmlUrl', htmlUrl)
          ..add('pullRequestUrl', pullRequestUrl)
          ..add('links', links)
          ..add('submittedAt', submittedAt)
          ..add('commitId', commitId)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyText', bodyText)
          ..add('authorAssociation', authorAssociation))
        .toString();
  }
}

class PullRequestReviewBuilder
    implements Builder<PullRequestReview, PullRequestReviewBuilder> {
  _$PullRequestReview _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _pullRequestUrl;
  String get pullRequestUrl => _$this._pullRequestUrl;
  set pullRequestUrl(String pullRequestUrl) =>
      _$this._pullRequestUrl = pullRequestUrl;

  PullRequestReviewLinksBuilder _links;
  PullRequestReviewLinksBuilder get links =>
      _$this._links ??= new PullRequestReviewLinksBuilder();
  set links(PullRequestReviewLinksBuilder links) => _$this._links = links;

  DateTime _submittedAt;
  DateTime get submittedAt => _$this._submittedAt;
  set submittedAt(DateTime submittedAt) => _$this._submittedAt = submittedAt;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  PullRequestReviewBuilder() {
    PullRequestReview._initializeBuilder(this);
  }

  PullRequestReviewBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _user = _$v.user?.toBuilder();
      _body = _$v.body;
      _state = _$v.state;
      _htmlUrl = _$v.htmlUrl;
      _pullRequestUrl = _$v.pullRequestUrl;
      _links = _$v.links?.toBuilder();
      _submittedAt = _$v.submittedAt;
      _commitId = _$v.commitId;
      _bodyHtml = _$v.bodyHtml;
      _bodyText = _$v.bodyText;
      _authorAssociation = _$v.authorAssociation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReview;
  }

  @override
  void update(void Function(PullRequestReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReview build() {
    _$PullRequestReview _$result;
    try {
      _$result = _$v ??
          new _$PullRequestReview._(
              id: id,
              nodeId: nodeId,
              user: _user?.build(),
              body: body,
              state: state,
              htmlUrl: htmlUrl,
              pullRequestUrl: pullRequestUrl,
              links: _links?.build(),
              submittedAt: submittedAt,
              commitId: commitId,
              bodyHtml: bodyHtml,
              bodyText: bodyText,
              authorAssociation: authorAssociation);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestReview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
