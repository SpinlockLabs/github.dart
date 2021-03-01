// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event_for_issue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEventForIssue> _$issueEventForIssueSerializer =
    new _$IssueEventForIssueSerializer();

class _$IssueEventForIssueSerializer
    implements StructuredSerializer<IssueEventForIssue> {
  @override
  final Iterable<Type> types = const [IssueEventForIssue, _$IssueEventForIssue];
  @override
  final String wireName = 'IssueEventForIssue';

  @override
  Iterable<Object> serialize(Serializers serializers, IssueEventForIssue object,
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
    if (object.actor != null) {
      result
        ..add('actor')
        ..add(serializers.serialize(object.actor,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.event != null) {
      result
        ..add('event')
        ..add(serializers.serialize(object.event,
            specifiedType: const FullType(String)));
    }
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
            specifiedType: const FullType(String)));
    }
    if (object.commitUrl != null) {
      result
        ..add('commit_url')
        ..add(serializers.serialize(object.commitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.issueUrl != null) {
      result
        ..add('issue_url')
        ..add(serializers.serialize(object.issueUrl,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.lockReason != null) {
      result
        ..add('lock_reason')
        ..add(serializers.serialize(object.lockReason,
            specifiedType: const FullType(String)));
    }
    if (object.submittedAt != null) {
      result
        ..add('submitted_at')
        ..add(serializers.serialize(object.submittedAt,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestUrl != null) {
      result
        ..add('pull_request_url')
        ..add(serializers.serialize(object.pullRequestUrl,
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
    return result;
  }

  @override
  IssueEventForIssue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventForIssueBuilder();

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
        case 'actor':
          result.actor.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_url':
          result.commitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_url':
          result.issueUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lock_reason':
          result.lockReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'submitted_at':
          result.submittedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_url':
          result.pullRequestUrl = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$IssueEventForIssue extends IssueEventForIssue {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final SimpleUser actor;
  @override
  final String event;
  @override
  final String commitId;
  @override
  final String commitUrl;
  @override
  final String createdAt;
  @override
  final String sha;
  @override
  final String htmlUrl;
  @override
  final String message;
  @override
  final String issueUrl;
  @override
  final String updatedAt;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final String body;
  @override
  final String lockReason;
  @override
  final String submittedAt;
  @override
  final String state;
  @override
  final String pullRequestUrl;
  @override
  final String bodyHtml;
  @override
  final String bodyText;

  factory _$IssueEventForIssue(
          [void Function(IssueEventForIssueBuilder) updates]) =>
      (new IssueEventForIssueBuilder()..update(updates)).build();

  _$IssueEventForIssue._(
      {this.id,
      this.nodeId,
      this.url,
      this.actor,
      this.event,
      this.commitId,
      this.commitUrl,
      this.createdAt,
      this.sha,
      this.htmlUrl,
      this.message,
      this.issueUrl,
      this.updatedAt,
      this.authorAssociation,
      this.body,
      this.lockReason,
      this.submittedAt,
      this.state,
      this.pullRequestUrl,
      this.bodyHtml,
      this.bodyText})
      : super._();

  @override
  IssueEventForIssue rebuild(
          void Function(IssueEventForIssueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventForIssueBuilder toBuilder() =>
      new IssueEventForIssueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEventForIssue &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        actor == other.actor &&
        event == other.event &&
        commitId == other.commitId &&
        commitUrl == other.commitUrl &&
        createdAt == other.createdAt &&
        sha == other.sha &&
        htmlUrl == other.htmlUrl &&
        message == other.message &&
        issueUrl == other.issueUrl &&
        updatedAt == other.updatedAt &&
        authorAssociation == other.authorAssociation &&
        body == other.body &&
        lockReason == other.lockReason &&
        submittedAt == other.submittedAt &&
        state == other.state &&
        pullRequestUrl == other.pullRequestUrl &&
        bodyHtml == other.bodyHtml &&
        bodyText == other.bodyText;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, id.hashCode), nodeId.hashCode),
                                                                                url.hashCode),
                                                                            actor.hashCode),
                                                                        event.hashCode),
                                                                    commitId.hashCode),
                                                                commitUrl.hashCode),
                                                            createdAt.hashCode),
                                                        sha.hashCode),
                                                    htmlUrl.hashCode),
                                                message.hashCode),
                                            issueUrl.hashCode),
                                        updatedAt.hashCode),
                                    authorAssociation.hashCode),
                                body.hashCode),
                            lockReason.hashCode),
                        submittedAt.hashCode),
                    state.hashCode),
                pullRequestUrl.hashCode),
            bodyHtml.hashCode),
        bodyText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEventForIssue')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('actor', actor)
          ..add('event', event)
          ..add('commitId', commitId)
          ..add('commitUrl', commitUrl)
          ..add('createdAt', createdAt)
          ..add('sha', sha)
          ..add('htmlUrl', htmlUrl)
          ..add('message', message)
          ..add('issueUrl', issueUrl)
          ..add('updatedAt', updatedAt)
          ..add('authorAssociation', authorAssociation)
          ..add('body', body)
          ..add('lockReason', lockReason)
          ..add('submittedAt', submittedAt)
          ..add('state', state)
          ..add('pullRequestUrl', pullRequestUrl)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyText', bodyText))
        .toString();
  }
}

class IssueEventForIssueBuilder
    implements Builder<IssueEventForIssue, IssueEventForIssueBuilder> {
  _$IssueEventForIssue _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  SimpleUserBuilder _actor;
  SimpleUserBuilder get actor => _$this._actor ??= new SimpleUserBuilder();
  set actor(SimpleUserBuilder actor) => _$this._actor = actor;

  String _event;
  String get event => _$this._event;
  set event(String event) => _$this._event = event;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  String _commitUrl;
  String get commitUrl => _$this._commitUrl;
  set commitUrl(String commitUrl) => _$this._commitUrl = commitUrl;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _issueUrl;
  String get issueUrl => _$this._issueUrl;
  set issueUrl(String issueUrl) => _$this._issueUrl = issueUrl;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _lockReason;
  String get lockReason => _$this._lockReason;
  set lockReason(String lockReason) => _$this._lockReason = lockReason;

  String _submittedAt;
  String get submittedAt => _$this._submittedAt;
  set submittedAt(String submittedAt) => _$this._submittedAt = submittedAt;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _pullRequestUrl;
  String get pullRequestUrl => _$this._pullRequestUrl;
  set pullRequestUrl(String pullRequestUrl) =>
      _$this._pullRequestUrl = pullRequestUrl;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  IssueEventForIssueBuilder() {
    IssueEventForIssue._initializeBuilder(this);
  }

  IssueEventForIssueBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _actor = _$v.actor?.toBuilder();
      _event = _$v.event;
      _commitId = _$v.commitId;
      _commitUrl = _$v.commitUrl;
      _createdAt = _$v.createdAt;
      _sha = _$v.sha;
      _htmlUrl = _$v.htmlUrl;
      _message = _$v.message;
      _issueUrl = _$v.issueUrl;
      _updatedAt = _$v.updatedAt;
      _authorAssociation = _$v.authorAssociation;
      _body = _$v.body;
      _lockReason = _$v.lockReason;
      _submittedAt = _$v.submittedAt;
      _state = _$v.state;
      _pullRequestUrl = _$v.pullRequestUrl;
      _bodyHtml = _$v.bodyHtml;
      _bodyText = _$v.bodyText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEventForIssue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEventForIssue;
  }

  @override
  void update(void Function(IssueEventForIssueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEventForIssue build() {
    _$IssueEventForIssue _$result;
    try {
      _$result = _$v ??
          new _$IssueEventForIssue._(
              id: id,
              nodeId: nodeId,
              url: url,
              actor: _actor?.build(),
              event: event,
              commitId: commitId,
              commitUrl: commitUrl,
              createdAt: createdAt,
              sha: sha,
              htmlUrl: htmlUrl,
              message: message,
              issueUrl: issueUrl,
              updatedAt: updatedAt,
              authorAssociation: authorAssociation,
              body: body,
              lockReason: lockReason,
              submittedAt: submittedAt,
              state: state,
              pullRequestUrl: pullRequestUrl,
              bodyHtml: bodyHtml,
              bodyText: bodyText);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'actor';
        _actor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IssueEventForIssue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
