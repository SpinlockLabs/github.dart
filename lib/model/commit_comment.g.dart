// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitComment> _$commitCommentSerializer =
    new _$CommitCommentSerializer();

class _$CommitCommentSerializer implements StructuredSerializer<CommitComment> {
  @override
  final Iterable<Type> types = const [CommitComment, _$CommitComment];
  @override
  final String wireName = 'CommitComment';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
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
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(int)));
    }
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
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
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
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
  CommitComment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
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
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
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

class _$CommitComment extends CommitComment {
  @override
  final String htmlUrl;
  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String body;
  @override
  final String path;
  @override
  final int position;
  @override
  final int line;
  @override
  final String commitId;
  @override
  final SimpleUser user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final ReactionRollup reactions;

  factory _$CommitComment([void Function(CommitCommentBuilder) updates]) =>
      (new CommitCommentBuilder()..update(updates)).build();

  _$CommitComment._(
      {this.htmlUrl,
      this.url,
      this.id,
      this.nodeId,
      this.body,
      this.path,
      this.position,
      this.line,
      this.commitId,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.authorAssociation,
      this.reactions})
      : super._();

  @override
  CommitComment rebuild(void Function(CommitCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitCommentBuilder toBuilder() => new CommitCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitComment &&
        htmlUrl == other.htmlUrl &&
        url == other.url &&
        id == other.id &&
        nodeId == other.nodeId &&
        body == other.body &&
        path == other.path &&
        position == other.position &&
        line == other.line &&
        commitId == other.commitId &&
        user == other.user &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        authorAssociation == other.authorAssociation &&
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
                                                        $jc(0,
                                                            htmlUrl.hashCode),
                                                        url.hashCode),
                                                    id.hashCode),
                                                nodeId.hashCode),
                                            body.hashCode),
                                        path.hashCode),
                                    position.hashCode),
                                line.hashCode),
                            commitId.hashCode),
                        user.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            authorAssociation.hashCode),
        reactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitComment')
          ..add('htmlUrl', htmlUrl)
          ..add('url', url)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('body', body)
          ..add('path', path)
          ..add('position', position)
          ..add('line', line)
          ..add('commitId', commitId)
          ..add('user', user)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('authorAssociation', authorAssociation)
          ..add('reactions', reactions))
        .toString();
  }
}

class CommitCommentBuilder
    implements Builder<CommitComment, CommitCommentBuilder> {
  _$CommitComment _$v;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  ReactionRollupBuilder _reactions;
  ReactionRollupBuilder get reactions =>
      _$this._reactions ??= new ReactionRollupBuilder();
  set reactions(ReactionRollupBuilder reactions) =>
      _$this._reactions = reactions;

  CommitCommentBuilder() {
    CommitComment._initializeBuilder(this);
  }

  CommitCommentBuilder get _$this {
    if (_$v != null) {
      _htmlUrl = _$v.htmlUrl;
      _url = _$v.url;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _body = _$v.body;
      _path = _$v.path;
      _position = _$v.position;
      _line = _$v.line;
      _commitId = _$v.commitId;
      _user = _$v.user?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _authorAssociation = _$v.authorAssociation;
      _reactions = _$v.reactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitComment;
  }

  @override
  void update(void Function(CommitCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitComment build() {
    _$CommitComment _$result;
    try {
      _$result = _$v ??
          new _$CommitComment._(
              htmlUrl: htmlUrl,
              url: url,
              id: id,
              nodeId: nodeId,
              body: body,
              path: path,
              position: position,
              line: line,
              commitId: commitId,
              user: _user?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              authorAssociation: authorAssociation,
              reactions: _reactions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'reactions';
        _reactions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommitComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
