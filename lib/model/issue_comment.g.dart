// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueComment> _$issueCommentSerializer =
    new _$IssueCommentSerializer();

class _$IssueCommentSerializer implements StructuredSerializer<IssueComment> {
  @override
  final Iterable<Type> types = const [IssueComment, _$IssueComment];
  @override
  final String wireName = 'IssueComment';

  @override
  Iterable<Object> serialize(Serializers serializers, IssueComment object,
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
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.bodyText != null) {
      result
        ..add('body_text')
        ..add(serializers.serialize(object.bodyText,
            specifiedType: const FullType(String)));
    }
    if (object.bodyHtml != null) {
      result
        ..add('body_html')
        ..add(serializers.serialize(object.bodyHtml,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.issueUrl != null) {
      result
        ..add('issue_url')
        ..add(serializers.serialize(object.issueUrl,
            specifiedType: const FullType(String)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.performedViaGithubApp != null) {
      result
        ..add('performed_via_github_app')
        ..add(serializers.serialize(object.performedViaGithubApp,
            specifiedType: const FullType(Integration)));
    }
    if (object.reactions != null) {
      result
        ..add('reactions')
        ..add(serializers.serialize(object.reactions,
            specifiedType: const FullType(ReactionRollup)));
    }
    return result;
  }

  @override
  IssueComment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueCommentBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_text':
          result.bodyText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'issue_url':
          result.issueUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case 'performed_via_github_app':
          result.performedViaGithubApp.replace(serializers.deserialize(value,
              specifiedType: const FullType(Integration)) as Integration);
          break;
        case 'reactions':
          result.reactions.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReactionRollup)) as ReactionRollup);
          break;
      }
    }

    return result.build();
  }
}

class _$IssueComment extends IssueComment {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String body;
  @override
  final String bodyText;
  @override
  final String bodyHtml;
  @override
  final String htmlUrl;
  @override
  final SimpleUser user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String issueUrl;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final Integration performedViaGithubApp;
  @override
  final ReactionRollup reactions;

  factory _$IssueComment([void Function(IssueCommentBuilder) updates]) =>
      (new IssueCommentBuilder()..update(updates)).build();

  _$IssueComment._(
      {this.id,
      this.nodeId,
      this.url,
      this.body,
      this.bodyText,
      this.bodyHtml,
      this.htmlUrl,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.issueUrl,
      this.authorAssociation,
      this.performedViaGithubApp,
      this.reactions})
      : super._();

  @override
  IssueComment rebuild(void Function(IssueCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueCommentBuilder toBuilder() => new IssueCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueComment &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        body == other.body &&
        bodyText == other.bodyText &&
        bodyHtml == other.bodyHtml &&
        htmlUrl == other.htmlUrl &&
        user == other.user &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        issueUrl == other.issueUrl &&
        authorAssociation == other.authorAssociation &&
        performedViaGithubApp == other.performedViaGithubApp &&
        reactions == other.reactions;
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
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        nodeId.hashCode),
                                                    url.hashCode),
                                                body.hashCode),
                                            bodyText.hashCode),
                                        bodyHtml.hashCode),
                                    htmlUrl.hashCode),
                                user.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    issueUrl.hashCode),
                authorAssociation.hashCode),
            performedViaGithubApp.hashCode),
        reactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueComment')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('body', body)
          ..add('bodyText', bodyText)
          ..add('bodyHtml', bodyHtml)
          ..add('htmlUrl', htmlUrl)
          ..add('user', user)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('issueUrl', issueUrl)
          ..add('authorAssociation', authorAssociation)
          ..add('performedViaGithubApp', performedViaGithubApp)
          ..add('reactions', reactions))
        .toString();
  }
}

class IssueCommentBuilder
    implements Builder<IssueComment, IssueCommentBuilder> {
  _$IssueComment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _issueUrl;
  String get issueUrl => _$this._issueUrl;
  set issueUrl(String issueUrl) => _$this._issueUrl = issueUrl;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  IntegrationBuilder _performedViaGithubApp;
  IntegrationBuilder get performedViaGithubApp =>
      _$this._performedViaGithubApp ??= new IntegrationBuilder();
  set performedViaGithubApp(IntegrationBuilder performedViaGithubApp) =>
      _$this._performedViaGithubApp = performedViaGithubApp;

  ReactionRollupBuilder _reactions;
  ReactionRollupBuilder get reactions =>
      _$this._reactions ??= new ReactionRollupBuilder();
  set reactions(ReactionRollupBuilder reactions) =>
      _$this._reactions = reactions;

  IssueCommentBuilder() {
    IssueComment._initializeBuilder(this);
  }

  IssueCommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _body = _$v.body;
      _bodyText = _$v.bodyText;
      _bodyHtml = _$v.bodyHtml;
      _htmlUrl = _$v.htmlUrl;
      _user = _$v.user?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _issueUrl = _$v.issueUrl;
      _authorAssociation = _$v.authorAssociation;
      _performedViaGithubApp = _$v.performedViaGithubApp?.toBuilder();
      _reactions = _$v.reactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueComment;
  }

  @override
  void update(void Function(IssueCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueComment build() {
    _$IssueComment _$result;
    try {
      _$result = _$v ??
          new _$IssueComment._(
              id: id,
              nodeId: nodeId,
              url: url,
              body: body,
              bodyText: bodyText,
              bodyHtml: bodyHtml,
              htmlUrl: htmlUrl,
              user: _user?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              issueUrl: issueUrl,
              authorAssociation: authorAssociation,
              performedViaGithubApp: _performedViaGithubApp?.build(),
              reactions: _reactions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'performedViaGithubApp';
        _performedViaGithubApp?.build();
        _$failedField = 'reactions';
        _reactions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IssueComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
