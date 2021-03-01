// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'base_gist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseGist> _$baseGistSerializer = new _$BaseGistSerializer();

class _$BaseGistSerializer implements StructuredSerializer<BaseGist> {
  @override
  final Iterable<Type> types = const [BaseGist, _$BaseGist];
  @override
  final String wireName = 'BaseGist';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseGist object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.forksUrl != null) {
      result
        ..add('forks_url')
        ..add(serializers.serialize(object.forksUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commitsUrl != null) {
      result
        ..add('commits_url')
        ..add(serializers.serialize(object.commitsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.gitPullUrl != null) {
      result
        ..add('git_pull_url')
        ..add(serializers.serialize(object.gitPullUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gitPushUrl != null) {
      result
        ..add('git_push_url')
        ..add(serializers.serialize(object.gitPushUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.files != null) {
      result
        ..add('files')
        ..add(serializers.serialize(object.files,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BaseGistFiles)
            ])));
    }
    if (object.public != null) {
      result
        ..add('public')
        ..add(serializers.serialize(object.public,
            specifiedType: const FullType(bool)));
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
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(int)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.commentsUrl != null) {
      result
        ..add('comments_url')
        ..add(serializers.serialize(object.commentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.truncated != null) {
      result
        ..add('truncated')
        ..add(serializers.serialize(object.truncated,
            specifiedType: const FullType(bool)));
    }
    if (object.forks != null) {
      result
        ..add('forks')
        ..add(serializers.serialize(object.forks,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    if (object.history != null) {
      result
        ..add('history')
        ..add(serializers.serialize(object.history,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  BaseGist deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseGistBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forks_url':
          result.forksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commits_url':
          result.commitsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_pull_url':
          result.gitPullUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_push_url':
          result.gitPushUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BaseGistFiles)
              ])));
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'truncated':
          result.truncated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'forks':
          result.forks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
        case 'history':
          result.history.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseGist extends BaseGist {
  @override
  final String url;
  @override
  final String forksUrl;
  @override
  final String commitsUrl;
  @override
  final String id;
  @override
  final String nodeId;
  @override
  final String gitPullUrl;
  @override
  final String gitPushUrl;
  @override
  final String htmlUrl;
  @override
  final BuiltMap<String, BaseGistFiles> files;
  @override
  final bool public;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String description;
  @override
  final int comments;
  @override
  final SimpleUser user;
  @override
  final String commentsUrl;
  @override
  final SimpleUser owner;
  @override
  final bool truncated;
  @override
  final BuiltList<JsonObject> forks;
  @override
  final BuiltList<JsonObject> history;

  factory _$BaseGist([void Function(BaseGistBuilder) updates]) =>
      (new BaseGistBuilder()..update(updates)).build();

  _$BaseGist._(
      {this.url,
      this.forksUrl,
      this.commitsUrl,
      this.id,
      this.nodeId,
      this.gitPullUrl,
      this.gitPushUrl,
      this.htmlUrl,
      this.files,
      this.public,
      this.createdAt,
      this.updatedAt,
      this.description,
      this.comments,
      this.user,
      this.commentsUrl,
      this.owner,
      this.truncated,
      this.forks,
      this.history})
      : super._();

  @override
  BaseGist rebuild(void Function(BaseGistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseGistBuilder toBuilder() => new BaseGistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseGist &&
        url == other.url &&
        forksUrl == other.forksUrl &&
        commitsUrl == other.commitsUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        gitPullUrl == other.gitPullUrl &&
        gitPushUrl == other.gitPushUrl &&
        htmlUrl == other.htmlUrl &&
        files == other.files &&
        public == other.public &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        description == other.description &&
        comments == other.comments &&
        user == other.user &&
        commentsUrl == other.commentsUrl &&
        owner == other.owner &&
        truncated == other.truncated &&
        forks == other.forks &&
        history == other.history;
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
                                                                            $jc($jc(0, url.hashCode),
                                                                                forksUrl.hashCode),
                                                                            commitsUrl.hashCode),
                                                                        id.hashCode),
                                                                    nodeId.hashCode),
                                                                gitPullUrl.hashCode),
                                                            gitPushUrl.hashCode),
                                                        htmlUrl.hashCode),
                                                    files.hashCode),
                                                public.hashCode),
                                            createdAt.hashCode),
                                        updatedAt.hashCode),
                                    description.hashCode),
                                comments.hashCode),
                            user.hashCode),
                        commentsUrl.hashCode),
                    owner.hashCode),
                truncated.hashCode),
            forks.hashCode),
        history.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseGist')
          ..add('url', url)
          ..add('forksUrl', forksUrl)
          ..add('commitsUrl', commitsUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('gitPullUrl', gitPullUrl)
          ..add('gitPushUrl', gitPushUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('files', files)
          ..add('public', public)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('description', description)
          ..add('comments', comments)
          ..add('user', user)
          ..add('commentsUrl', commentsUrl)
          ..add('owner', owner)
          ..add('truncated', truncated)
          ..add('forks', forks)
          ..add('history', history))
        .toString();
  }
}

class BaseGistBuilder implements Builder<BaseGist, BaseGistBuilder> {
  _$BaseGist _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _forksUrl;
  String get forksUrl => _$this._forksUrl;
  set forksUrl(String forksUrl) => _$this._forksUrl = forksUrl;

  String _commitsUrl;
  String get commitsUrl => _$this._commitsUrl;
  set commitsUrl(String commitsUrl) => _$this._commitsUrl = commitsUrl;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _gitPullUrl;
  String get gitPullUrl => _$this._gitPullUrl;
  set gitPullUrl(String gitPullUrl) => _$this._gitPullUrl = gitPullUrl;

  String _gitPushUrl;
  String get gitPushUrl => _$this._gitPushUrl;
  set gitPushUrl(String gitPushUrl) => _$this._gitPushUrl = gitPushUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  MapBuilder<String, BaseGistFiles> _files;
  MapBuilder<String, BaseGistFiles> get files =>
      _$this._files ??= new MapBuilder<String, BaseGistFiles>();
  set files(MapBuilder<String, BaseGistFiles> files) => _$this._files = files;

  bool _public;
  bool get public => _$this._public;
  set public(bool public) => _$this._public = public;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _comments;
  int get comments => _$this._comments;
  set comments(int comments) => _$this._comments = comments;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  SimpleUserBuilder _owner;
  SimpleUserBuilder get owner => _$this._owner ??= new SimpleUserBuilder();
  set owner(SimpleUserBuilder owner) => _$this._owner = owner;

  bool _truncated;
  bool get truncated => _$this._truncated;
  set truncated(bool truncated) => _$this._truncated = truncated;

  ListBuilder<JsonObject> _forks;
  ListBuilder<JsonObject> get forks =>
      _$this._forks ??= new ListBuilder<JsonObject>();
  set forks(ListBuilder<JsonObject> forks) => _$this._forks = forks;

  ListBuilder<JsonObject> _history;
  ListBuilder<JsonObject> get history =>
      _$this._history ??= new ListBuilder<JsonObject>();
  set history(ListBuilder<JsonObject> history) => _$this._history = history;

  BaseGistBuilder() {
    BaseGist._initializeBuilder(this);
  }

  BaseGistBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _forksUrl = _$v.forksUrl;
      _commitsUrl = _$v.commitsUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _gitPullUrl = _$v.gitPullUrl;
      _gitPushUrl = _$v.gitPushUrl;
      _htmlUrl = _$v.htmlUrl;
      _files = _$v.files?.toBuilder();
      _public = _$v.public;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _description = _$v.description;
      _comments = _$v.comments;
      _user = _$v.user?.toBuilder();
      _commentsUrl = _$v.commentsUrl;
      _owner = _$v.owner?.toBuilder();
      _truncated = _$v.truncated;
      _forks = _$v.forks?.toBuilder();
      _history = _$v.history?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseGist other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseGist;
  }

  @override
  void update(void Function(BaseGistBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseGist build() {
    _$BaseGist _$result;
    try {
      _$result = _$v ??
          new _$BaseGist._(
              url: url,
              forksUrl: forksUrl,
              commitsUrl: commitsUrl,
              id: id,
              nodeId: nodeId,
              gitPullUrl: gitPullUrl,
              gitPushUrl: gitPushUrl,
              htmlUrl: htmlUrl,
              files: _files?.build(),
              public: public,
              createdAt: createdAt,
              updatedAt: updatedAt,
              description: description,
              comments: comments,
              user: _user?.build(),
              commentsUrl: commentsUrl,
              owner: _owner?.build(),
              truncated: truncated,
              forks: _forks?.build(),
              history: _history?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'files';
        _files?.build();

        _$failedField = 'user';
        _user?.build();

        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'forks';
        _forks?.build();
        _$failedField = 'history';
        _history?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseGist', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
