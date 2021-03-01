// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_discussion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamDiscussion> _$teamDiscussionSerializer =
    new _$TeamDiscussionSerializer();

class _$TeamDiscussionSerializer
    implements StructuredSerializer<TeamDiscussion> {
  @override
  final Iterable<Type> types = const [TeamDiscussion, _$TeamDiscussion];
  @override
  final String wireName = 'TeamDiscussion';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamDiscussion object,
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
    if (object.commentsCount != null) {
      result
        ..add('comments_count')
        ..add(serializers.serialize(object.commentsCount,
            specifiedType: const FullType(int)));
    }
    if (object.commentsUrl != null) {
      result
        ..add('comments_url')
        ..add(serializers.serialize(object.commentsUrl,
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
    if (object.pinned != null) {
      result
        ..add('pinned')
        ..add(serializers.serialize(object.pinned,
            specifiedType: const FullType(bool)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    if (object.teamUrl != null) {
      result
        ..add('team_url')
        ..add(serializers.serialize(object.teamUrl,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
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
  TeamDiscussion deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamDiscussionBuilder();

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
        case 'comments_count':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
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
        case 'pinned':
          result.pinned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'team_url':
          result.teamUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$TeamDiscussion extends TeamDiscussion {
  @override
  final SimpleUser author;
  @override
  final String body;
  @override
  final String bodyHtml;
  @override
  final String bodyVersion;
  @override
  final int commentsCount;
  @override
  final String commentsUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastEditedAt;
  @override
  final String htmlUrl;
  @override
  final String nodeId;
  @override
  final int number;
  @override
  final bool pinned;
  @override
  final bool private;
  @override
  final String teamUrl;
  @override
  final String title;
  @override
  final DateTime updatedAt;
  @override
  final String url;
  @override
  final ReactionRollup reactions;

  factory _$TeamDiscussion([void Function(TeamDiscussionBuilder) updates]) =>
      (new TeamDiscussionBuilder()..update(updates)).build();

  _$TeamDiscussion._(
      {this.author,
      this.body,
      this.bodyHtml,
      this.bodyVersion,
      this.commentsCount,
      this.commentsUrl,
      this.createdAt,
      this.lastEditedAt,
      this.htmlUrl,
      this.nodeId,
      this.number,
      this.pinned,
      this.private,
      this.teamUrl,
      this.title,
      this.updatedAt,
      this.url,
      this.reactions})
      : super._();

  @override
  TeamDiscussion rebuild(void Function(TeamDiscussionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamDiscussionBuilder toBuilder() =>
      new TeamDiscussionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamDiscussion &&
        author == other.author &&
        body == other.body &&
        bodyHtml == other.bodyHtml &&
        bodyVersion == other.bodyVersion &&
        commentsCount == other.commentsCount &&
        commentsUrl == other.commentsUrl &&
        createdAt == other.createdAt &&
        lastEditedAt == other.lastEditedAt &&
        htmlUrl == other.htmlUrl &&
        nodeId == other.nodeId &&
        number == other.number &&
        pinned == other.pinned &&
        private == other.private &&
        teamUrl == other.teamUrl &&
        title == other.title &&
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            author
                                                                                .hashCode),
                                                                        body
                                                                            .hashCode),
                                                                    bodyHtml
                                                                        .hashCode),
                                                                bodyVersion
                                                                    .hashCode),
                                                            commentsCount
                                                                .hashCode),
                                                        commentsUrl.hashCode),
                                                    createdAt.hashCode),
                                                lastEditedAt.hashCode),
                                            htmlUrl.hashCode),
                                        nodeId.hashCode),
                                    number.hashCode),
                                pinned.hashCode),
                            private.hashCode),
                        teamUrl.hashCode),
                    title.hashCode),
                updatedAt.hashCode),
            url.hashCode),
        reactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamDiscussion')
          ..add('author', author)
          ..add('body', body)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyVersion', bodyVersion)
          ..add('commentsCount', commentsCount)
          ..add('commentsUrl', commentsUrl)
          ..add('createdAt', createdAt)
          ..add('lastEditedAt', lastEditedAt)
          ..add('htmlUrl', htmlUrl)
          ..add('nodeId', nodeId)
          ..add('number', number)
          ..add('pinned', pinned)
          ..add('private', private)
          ..add('teamUrl', teamUrl)
          ..add('title', title)
          ..add('updatedAt', updatedAt)
          ..add('url', url)
          ..add('reactions', reactions))
        .toString();
  }
}

class TeamDiscussionBuilder
    implements Builder<TeamDiscussion, TeamDiscussionBuilder> {
  _$TeamDiscussion _$v;

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

  int _commentsCount;
  int get commentsCount => _$this._commentsCount;
  set commentsCount(int commentsCount) => _$this._commentsCount = commentsCount;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _lastEditedAt;
  DateTime get lastEditedAt => _$this._lastEditedAt;
  set lastEditedAt(DateTime lastEditedAt) =>
      _$this._lastEditedAt = lastEditedAt;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  bool _pinned;
  bool get pinned => _$this._pinned;
  set pinned(bool pinned) => _$this._pinned = pinned;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  String _teamUrl;
  String get teamUrl => _$this._teamUrl;
  set teamUrl(String teamUrl) => _$this._teamUrl = teamUrl;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

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

  TeamDiscussionBuilder() {
    TeamDiscussion._initializeBuilder(this);
  }

  TeamDiscussionBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author?.toBuilder();
      _body = _$v.body;
      _bodyHtml = _$v.bodyHtml;
      _bodyVersion = _$v.bodyVersion;
      _commentsCount = _$v.commentsCount;
      _commentsUrl = _$v.commentsUrl;
      _createdAt = _$v.createdAt;
      _lastEditedAt = _$v.lastEditedAt;
      _htmlUrl = _$v.htmlUrl;
      _nodeId = _$v.nodeId;
      _number = _$v.number;
      _pinned = _$v.pinned;
      _private = _$v.private;
      _teamUrl = _$v.teamUrl;
      _title = _$v.title;
      _updatedAt = _$v.updatedAt;
      _url = _$v.url;
      _reactions = _$v.reactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamDiscussion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamDiscussion;
  }

  @override
  void update(void Function(TeamDiscussionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamDiscussion build() {
    _$TeamDiscussion _$result;
    try {
      _$result = _$v ??
          new _$TeamDiscussion._(
              author: _author?.build(),
              body: body,
              bodyHtml: bodyHtml,
              bodyVersion: bodyVersion,
              commentsCount: commentsCount,
              commentsUrl: commentsUrl,
              createdAt: createdAt,
              lastEditedAt: lastEditedAt,
              htmlUrl: htmlUrl,
              nodeId: nodeId,
              number: number,
              pinned: pinned,
              private: private,
              teamUrl: teamUrl,
              title: title,
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
            'TeamDiscussion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
