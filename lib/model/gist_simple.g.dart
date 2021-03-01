// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gist_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GistSimple> _$gistSimpleSerializer = new _$GistSimpleSerializer();

class _$GistSimpleSerializer implements StructuredSerializer<GistSimple> {
  @override
  final Iterable<Type> types = const [GistSimple, _$GistSimple];
  @override
  final String wireName = 'GistSimple';

  @override
  Iterable<Object> serialize(Serializers serializers, GistSimple object,
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
              const FullType(GistSimpleFiles)
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
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(String)));
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
    return result;
  }

  @override
  GistSimple deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GistSimpleBuilder();

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
                const FullType(GistSimpleFiles)
              ])));
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
      }
    }

    return result.build();
  }
}

class _$GistSimple extends GistSimple {
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
  final BuiltMap<String, GistSimpleFiles> files;
  @override
  final bool public;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String description;
  @override
  final int comments;
  @override
  final String user;
  @override
  final String commentsUrl;
  @override
  final SimpleUser owner;
  @override
  final bool truncated;

  factory _$GistSimple([void Function(GistSimpleBuilder) updates]) =>
      (new GistSimpleBuilder()..update(updates)).build();

  _$GistSimple._(
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
      this.truncated})
      : super._();

  @override
  GistSimple rebuild(void Function(GistSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GistSimpleBuilder toBuilder() => new GistSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GistSimple &&
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
        truncated == other.truncated;
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
                                                                            url
                                                                                .hashCode),
                                                                        forksUrl
                                                                            .hashCode),
                                                                    commitsUrl
                                                                        .hashCode),
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
        truncated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GistSimple')
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
          ..add('truncated', truncated))
        .toString();
  }
}

class GistSimpleBuilder implements Builder<GistSimple, GistSimpleBuilder> {
  _$GistSimple _$v;

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

  MapBuilder<String, GistSimpleFiles> _files;
  MapBuilder<String, GistSimpleFiles> get files =>
      _$this._files ??= new MapBuilder<String, GistSimpleFiles>();
  set files(MapBuilder<String, GistSimpleFiles> files) => _$this._files = files;

  bool _public;
  bool get public => _$this._public;
  set public(bool public) => _$this._public = public;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _comments;
  int get comments => _$this._comments;
  set comments(int comments) => _$this._comments = comments;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  SimpleUserBuilder _owner;
  SimpleUserBuilder get owner => _$this._owner ??= new SimpleUserBuilder();
  set owner(SimpleUserBuilder owner) => _$this._owner = owner;

  bool _truncated;
  bool get truncated => _$this._truncated;
  set truncated(bool truncated) => _$this._truncated = truncated;

  GistSimpleBuilder() {
    GistSimple._initializeBuilder(this);
  }

  GistSimpleBuilder get _$this {
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
      _user = _$v.user;
      _commentsUrl = _$v.commentsUrl;
      _owner = _$v.owner?.toBuilder();
      _truncated = _$v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GistSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GistSimple;
  }

  @override
  void update(void Function(GistSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GistSimple build() {
    _$GistSimple _$result;
    try {
      _$result = _$v ??
          new _$GistSimple._(
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
              user: user,
              commentsUrl: commentsUrl,
              owner: _owner?.build(),
              truncated: truncated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'files';
        _files?.build();

        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GistSimple', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
