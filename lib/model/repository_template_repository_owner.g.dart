// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_template_repository_owner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryTemplateRepositoryOwner>
    _$repositoryTemplateRepositoryOwnerSerializer =
    new _$RepositoryTemplateRepositoryOwnerSerializer();

class _$RepositoryTemplateRepositoryOwnerSerializer
    implements StructuredSerializer<RepositoryTemplateRepositoryOwner> {
  @override
  final Iterable<Type> types = const [
    RepositoryTemplateRepositoryOwner,
    _$RepositoryTemplateRepositoryOwner
  ];
  @override
  final String wireName = 'RepositoryTemplateRepositoryOwner';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositoryTemplateRepositoryOwner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
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
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gravatarId != null) {
      result
        ..add('gravatar_id')
        ..add(serializers.serialize(object.gravatarId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.followersUrl != null) {
      result
        ..add('followers_url')
        ..add(serializers.serialize(object.followersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.followingUrl != null) {
      result
        ..add('following_url')
        ..add(serializers.serialize(object.followingUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gistsUrl != null) {
      result
        ..add('gists_url')
        ..add(serializers.serialize(object.gistsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.starredUrl != null) {
      result
        ..add('starred_url')
        ..add(serializers.serialize(object.starredUrl,
            specifiedType: const FullType(String)));
    }
    if (object.subscriptionsUrl != null) {
      result
        ..add('subscriptions_url')
        ..add(serializers.serialize(object.subscriptionsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.organizationsUrl != null) {
      result
        ..add('organizations_url')
        ..add(serializers.serialize(object.organizationsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.reposUrl != null) {
      result
        ..add('repos_url')
        ..add(serializers.serialize(object.reposUrl,
            specifiedType: const FullType(String)));
    }
    if (object.eventsUrl != null) {
      result
        ..add('events_url')
        ..add(serializers.serialize(object.eventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.receivedEventsUrl != null) {
      result
        ..add('received_events_url')
        ..add(serializers.serialize(object.receivedEventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.siteAdmin != null) {
      result
        ..add('site_admin')
        ..add(serializers.serialize(object.siteAdmin,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RepositoryTemplateRepositoryOwner deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryTemplateRepositoryOwnerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'login':
          result.login = serializers.deserialize(value,
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
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gravatar_id':
          result.gravatarId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'followers_url':
          result.followersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'following_url':
          result.followingUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gists_url':
          result.gistsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'starred_url':
          result.starredUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscriptions_url':
          result.subscriptionsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organizations_url':
          result.organizationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repos_url':
          result.reposUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'received_events_url':
          result.receivedEventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_admin':
          result.siteAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryTemplateRepositoryOwner
    extends RepositoryTemplateRepositoryOwner {
  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String avatarUrl;
  @override
  final String gravatarId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String followersUrl;
  @override
  final String followingUrl;
  @override
  final String gistsUrl;
  @override
  final String starredUrl;
  @override
  final String subscriptionsUrl;
  @override
  final String organizationsUrl;
  @override
  final String reposUrl;
  @override
  final String eventsUrl;
  @override
  final String receivedEventsUrl;
  @override
  final String type;
  @override
  final bool siteAdmin;

  factory _$RepositoryTemplateRepositoryOwner(
          [void Function(RepositoryTemplateRepositoryOwnerBuilder) updates]) =>
      (new RepositoryTemplateRepositoryOwnerBuilder()..update(updates)).build();

  _$RepositoryTemplateRepositoryOwner._(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin})
      : super._();

  @override
  RepositoryTemplateRepositoryOwner rebuild(
          void Function(RepositoryTemplateRepositoryOwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryTemplateRepositoryOwnerBuilder toBuilder() =>
      new RepositoryTemplateRepositoryOwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryTemplateRepositoryOwner &&
        login == other.login &&
        id == other.id &&
        nodeId == other.nodeId &&
        avatarUrl == other.avatarUrl &&
        gravatarId == other.gravatarId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        followersUrl == other.followersUrl &&
        followingUrl == other.followingUrl &&
        gistsUrl == other.gistsUrl &&
        starredUrl == other.starredUrl &&
        subscriptionsUrl == other.subscriptionsUrl &&
        organizationsUrl == other.organizationsUrl &&
        reposUrl == other.reposUrl &&
        eventsUrl == other.eventsUrl &&
        receivedEventsUrl == other.receivedEventsUrl &&
        type == other.type &&
        siteAdmin == other.siteAdmin;
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
                                                                            login
                                                                                .hashCode),
                                                                        id
                                                                            .hashCode),
                                                                    nodeId
                                                                        .hashCode),
                                                                avatarUrl
                                                                    .hashCode),
                                                            gravatarId
                                                                .hashCode),
                                                        url.hashCode),
                                                    htmlUrl.hashCode),
                                                followersUrl.hashCode),
                                            followingUrl.hashCode),
                                        gistsUrl.hashCode),
                                    starredUrl.hashCode),
                                subscriptionsUrl.hashCode),
                            organizationsUrl.hashCode),
                        reposUrl.hashCode),
                    eventsUrl.hashCode),
                receivedEventsUrl.hashCode),
            type.hashCode),
        siteAdmin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryTemplateRepositoryOwner')
          ..add('login', login)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('avatarUrl', avatarUrl)
          ..add('gravatarId', gravatarId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('followersUrl', followersUrl)
          ..add('followingUrl', followingUrl)
          ..add('gistsUrl', gistsUrl)
          ..add('starredUrl', starredUrl)
          ..add('subscriptionsUrl', subscriptionsUrl)
          ..add('organizationsUrl', organizationsUrl)
          ..add('reposUrl', reposUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('receivedEventsUrl', receivedEventsUrl)
          ..add('type', type)
          ..add('siteAdmin', siteAdmin))
        .toString();
  }
}

class RepositoryTemplateRepositoryOwnerBuilder
    implements
        Builder<RepositoryTemplateRepositoryOwner,
            RepositoryTemplateRepositoryOwnerBuilder> {
  _$RepositoryTemplateRepositoryOwner _$v;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _gravatarId;
  String get gravatarId => _$this._gravatarId;
  set gravatarId(String gravatarId) => _$this._gravatarId = gravatarId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _followersUrl;
  String get followersUrl => _$this._followersUrl;
  set followersUrl(String followersUrl) => _$this._followersUrl = followersUrl;

  String _followingUrl;
  String get followingUrl => _$this._followingUrl;
  set followingUrl(String followingUrl) => _$this._followingUrl = followingUrl;

  String _gistsUrl;
  String get gistsUrl => _$this._gistsUrl;
  set gistsUrl(String gistsUrl) => _$this._gistsUrl = gistsUrl;

  String _starredUrl;
  String get starredUrl => _$this._starredUrl;
  set starredUrl(String starredUrl) => _$this._starredUrl = starredUrl;

  String _subscriptionsUrl;
  String get subscriptionsUrl => _$this._subscriptionsUrl;
  set subscriptionsUrl(String subscriptionsUrl) =>
      _$this._subscriptionsUrl = subscriptionsUrl;

  String _organizationsUrl;
  String get organizationsUrl => _$this._organizationsUrl;
  set organizationsUrl(String organizationsUrl) =>
      _$this._organizationsUrl = organizationsUrl;

  String _reposUrl;
  String get reposUrl => _$this._reposUrl;
  set reposUrl(String reposUrl) => _$this._reposUrl = reposUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _receivedEventsUrl;
  String get receivedEventsUrl => _$this._receivedEventsUrl;
  set receivedEventsUrl(String receivedEventsUrl) =>
      _$this._receivedEventsUrl = receivedEventsUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  bool _siteAdmin;
  bool get siteAdmin => _$this._siteAdmin;
  set siteAdmin(bool siteAdmin) => _$this._siteAdmin = siteAdmin;

  RepositoryTemplateRepositoryOwnerBuilder() {
    RepositoryTemplateRepositoryOwner._initializeBuilder(this);
  }

  RepositoryTemplateRepositoryOwnerBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _avatarUrl = _$v.avatarUrl;
      _gravatarId = _$v.gravatarId;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _followersUrl = _$v.followersUrl;
      _followingUrl = _$v.followingUrl;
      _gistsUrl = _$v.gistsUrl;
      _starredUrl = _$v.starredUrl;
      _subscriptionsUrl = _$v.subscriptionsUrl;
      _organizationsUrl = _$v.organizationsUrl;
      _reposUrl = _$v.reposUrl;
      _eventsUrl = _$v.eventsUrl;
      _receivedEventsUrl = _$v.receivedEventsUrl;
      _type = _$v.type;
      _siteAdmin = _$v.siteAdmin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryTemplateRepositoryOwner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryTemplateRepositoryOwner;
  }

  @override
  void update(void Function(RepositoryTemplateRepositoryOwnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryTemplateRepositoryOwner build() {
    final _$result = _$v ??
        new _$RepositoryTemplateRepositoryOwner._(
            login: login,
            id: id,
            nodeId: nodeId,
            avatarUrl: avatarUrl,
            gravatarId: gravatarId,
            url: url,
            htmlUrl: htmlUrl,
            followersUrl: followersUrl,
            followingUrl: followingUrl,
            gistsUrl: gistsUrl,
            starredUrl: starredUrl,
            subscriptionsUrl: subscriptionsUrl,
            organizationsUrl: organizationsUrl,
            reposUrl: reposUrl,
            eventsUrl: eventsUrl,
            receivedEventsUrl: receivedEventsUrl,
            type: type,
            siteAdmin: siteAdmin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
