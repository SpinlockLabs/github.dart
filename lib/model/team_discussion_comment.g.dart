// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_discussion_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamDiscussionComment> _$teamDiscussionCommentSerializer =
    new _$TeamDiscussionCommentSerializer();

class _$TeamDiscussionCommentSerializer
    implements StructuredSerializer<TeamDiscussionComment> {
  @override
  final Iterable<Type> types = const [
    TeamDiscussionComment,
    _$TeamDiscussionComment
  ];
  @override
  final String wireName = 'TeamDiscussionComment';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TeamDiscussionComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.bodyHtml != null) {
      result
        ..add('body_html')
        ..add(serializers.serialize(object.bodyHtml,
            specifiedType: const FullType(String)));
    }
    if (object.bodyVersion != null) {
      result
        ..add('body_version')
        ..add(serializers.serialize(object.bodyVersion,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.lastEditedAt != null) {
      result
        ..add('last_edited_at')
        ..add(serializers.serialize(object.lastEditedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.discussionUrl != null) {
      result
        ..add('discussion_url')
        ..add(serializers.serialize(object.discussionUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
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
  TeamDiscussionComment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamDiscussionCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_version':
          result.bodyVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'last_edited_at':
          result.lastEditedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'discussion_url':
          result.discussionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$TeamDiscussionComment extends TeamDiscussionComment {
  @override
  final SimpleUser author;
  @override
  final String body;
  @override
  final String bodyHtml;
  @override
  final String bodyVersion;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastEditedAt;
  @override
  final String discussionUrl;
  @override
  final String htmlUrl;
  @override
  final String nodeId;
  @override
  final int number;
  @override
  final DateTime updatedAt;
  @override
  final String url;
  @override
  final ReactionRollup reactions;

  factory _$TeamDiscussionComment(
          [void Function(TeamDiscussionCommentBuilder) updates]) =>
      (new TeamDiscussionCommentBuilder()..update(updates)).build();

  _$TeamDiscussionComment._(
      {this.author,
      this.body,
      this.bodyHtml,
      this.bodyVersion,
      this.createdAt,
      this.lastEditedAt,
      this.discussionUrl,
      this.htmlUrl,
      this.nodeId,
      this.number,
      this.updatedAt,
      this.url,
      this.reactions})
      : super._();

  @override
  TeamDiscussionComment rebuild(
          void Function(TeamDiscussionCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamDiscussionCommentBuilder toBuilder() =>
      new TeamDiscussionCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamDiscussionComment &&
        author == other.author &&
        body == other.body &&
        bodyHtml == other.bodyHtml &&
        bodyVersion == other.bodyVersion &&
        createdAt == other.createdAt &&
        lastEditedAt == other.lastEditedAt &&
        discussionUrl == other.discussionUrl &&
        htmlUrl == other.htmlUrl &&
        nodeId == other.nodeId &&
        number == other.number &&
        updatedAt == other.updatedAt &&
        url == other.url &&
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
                                                $jc($jc(0, author.hashCode),
                                                    body.hashCode),
                                                bodyHtml.hashCode),
                                            bodyVersion.hashCode),
                                        createdAt.hashCode),
                                    lastEditedAt.hashCode),
                                discussionUrl.hashCode),
                            htmlUrl.hashCode),
                        nodeId.hashCode),
                    number.hashCode),
                updatedAt.hashCode),
            url.hashCode),
        reactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamDiscussionComment')
          ..add('author', author)
          ..add('body', body)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyVersion', bodyVersion)
          ..add('createdAt', createdAt)
          ..add('lastEditedAt', lastEditedAt)
          ..add('discussionUrl', discussionUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('nodeId', nodeId)
          ..add('number', number)
          ..add('updatedAt', updatedAt)
          ..add('url', url)
          ..add('reactions', reactions))
        .toString();
  }
}

class TeamDiscussionCommentBuilder
    implements Builder<TeamDiscussionComment, TeamDiscussionCommentBuilder> {
  _$TeamDiscussionComment _$v;

  SimpleUserBuilder _author;
  SimpleUserBuilder get author => _$this._author ??= new SimpleUserBuilder();
  set author(SimpleUserBuilder author) => _$this._author = author;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyVersion;
  String get bodyVersion => _$this._bodyVersion;
  set bodyVersion(String bodyVersion) => _$this._bodyVersion = bodyVersion;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _lastEditedAt;
  DateTime get lastEditedAt => _$this._lastEditedAt;
  set lastEditedAt(DateTime lastEditedAt) =>
      _$this._lastEditedAt = lastEditedAt;

  String _discussionUrl;
  String get discussionUrl => _$this._discussionUrl;
  set discussionUrl(String discussionUrl) =>
      _$this._discussionUrl = discussionUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ReactionRollupBuilder _reactions;
  ReactionRollupBuilder get reactions =>
      _$this._reactions ??= new ReactionRollupBuilder();
  set reactions(ReactionRollupBuilder reactions) =>
      _$this._reactions = reactions;

  TeamDiscussionCommentBuilder() {
    TeamDiscussionComment._initializeBuilder(this);
  }

  TeamDiscussionCommentBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author?.toBuilder();
      _body = _$v.body;
      _bodyHtml = _$v.bodyHtml;
      _bodyVersion = _$v.bodyVersion;
      _createdAt = _$v.createdAt;
      _lastEditedAt = _$v.lastEditedAt;
      _discussionUrl = _$v.discussionUrl;
      _htmlUrl = _$v.htmlUrl;
      _nodeId = _$v.nodeId;
      _number = _$v.number;
      _updatedAt = _$v.updatedAt;
      _url = _$v.url;
      _reactions = _$v.reactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamDiscussionComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamDiscussionComment;
  }

  @override
  void update(void Function(TeamDiscussionCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamDiscussionComment build() {
    _$TeamDiscussionComment _$result;
    try {
      _$result = _$v ??
          new _$TeamDiscussionComment._(
              author: _author?.build(),
              body: body,
              bodyHtml: bodyHtml,
              bodyVersion: bodyVersion,
              createdAt: createdAt,
              lastEditedAt: lastEditedAt,
              discussionUrl: discussionUrl,
              htmlUrl: htmlUrl,
              nodeId: nodeId,
              number: number,
              updatedAt: updatedAt,
              url: url,
              reactions: _reactions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'reactions';
        _reactions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamDiscussionComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
