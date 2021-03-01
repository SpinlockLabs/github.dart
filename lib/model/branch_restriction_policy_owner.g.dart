// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_restriction_policy_owner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchRestrictionPolicyOwner>
    _$branchRestrictionPolicyOwnerSerializer =
    new _$BranchRestrictionPolicyOwnerSerializer();

class _$BranchRestrictionPolicyOwnerSerializer
    implements StructuredSerializer<BranchRestrictionPolicyOwner> {
  @override
  final Iterable<Type> types = const [
    BranchRestrictionPolicyOwner,
    _$BranchRestrictionPolicyOwner
  ];
  @override
  final String wireName = 'BranchRestrictionPolicyOwner';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchRestrictionPolicyOwner object,
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
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
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
    if (object.hooksUrl != null) {
      result
        ..add('hooks_url')
        ..add(serializers.serialize(object.hooksUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issuesUrl != null) {
      result
        ..add('issues_url')
        ..add(serializers.serialize(object.issuesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.membersUrl != null) {
      result
        ..add('members_url')
        ..add(serializers.serialize(object.membersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.publicMembersUrl != null) {
      result
        ..add('public_members_url')
        ..add(serializers.serialize(object.publicMembersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.gravatarId != null) {
      result
        ..add('gravatar_id')
        ..add(serializers.serialize(object.gravatarId,
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
    return result;
  }

  @override
  BranchRestrictionPolicyOwner deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchRestrictionPolicyOwnerBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
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
        case 'hooks_url':
          result.hooksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues_url':
          result.issuesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members_url':
          result.membersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public_members_url':
          result.publicMembersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gravatar_id':
          result.gravatarId = serializers.deserialize(value,
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
        case 'received_events_url':
          result.receivedEventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchRestrictionPolicyOwner extends BranchRestrictionPolicyOwner {
  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String reposUrl;
  @override
  final String eventsUrl;
  @override
  final String hooksUrl;
  @override
  final String issuesUrl;
  @override
  final String membersUrl;
  @override
  final String publicMembersUrl;
  @override
  final String avatarUrl;
  @override
  final String description;
  @override
  final String gravatarId;
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
  final String receivedEventsUrl;
  @override
  final String type;

  factory _$BranchRestrictionPolicyOwner(
          [void Function(BranchRestrictionPolicyOwnerBuilder) updates]) =>
      (new BranchRestrictionPolicyOwnerBuilder()..update(updates)).build();

  _$BranchRestrictionPolicyOwner._(
      {this.login,
      this.id,
      this.nodeId,
      this.url,
      this.reposUrl,
      this.eventsUrl,
      this.hooksUrl,
      this.issuesUrl,
      this.membersUrl,
      this.publicMembersUrl,
      this.avatarUrl,
      this.description,
      this.gravatarId,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.receivedEventsUrl,
      this.type})
      : super._();

  @override
  BranchRestrictionPolicyOwner rebuild(
          void Function(BranchRestrictionPolicyOwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchRestrictionPolicyOwnerBuilder toBuilder() =>
      new BranchRestrictionPolicyOwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchRestrictionPolicyOwner &&
        login == other.login &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        reposUrl == other.reposUrl &&
        eventsUrl == other.eventsUrl &&
        hooksUrl == other.hooksUrl &&
        issuesUrl == other.issuesUrl &&
        membersUrl == other.membersUrl &&
        publicMembersUrl == other.publicMembersUrl &&
        avatarUrl == other.avatarUrl &&
        description == other.description &&
        gravatarId == other.gravatarId &&
        htmlUrl == other.htmlUrl &&
        followersUrl == other.followersUrl &&
        followingUrl == other.followingUrl &&
        gistsUrl == other.gistsUrl &&
        starredUrl == other.starredUrl &&
        subscriptionsUrl == other.subscriptionsUrl &&
        organizationsUrl == other.organizationsUrl &&
        receivedEventsUrl == other.receivedEventsUrl &&
        type == other.type;
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
                                                                            $jc($jc($jc($jc(0, login.hashCode), id.hashCode), nodeId.hashCode),
                                                                                url.hashCode),
                                                                            reposUrl.hashCode),
                                                                        eventsUrl.hashCode),
                                                                    hooksUrl.hashCode),
                                                                issuesUrl.hashCode),
                                                            membersUrl.hashCode),
                                                        publicMembersUrl.hashCode),
                                                    avatarUrl.hashCode),
                                                description.hashCode),
                                            gravatarId.hashCode),
                                        htmlUrl.hashCode),
                                    followersUrl.hashCode),
                                followingUrl.hashCode),
                            gistsUrl.hashCode),
                        starredUrl.hashCode),
                    subscriptionsUrl.hashCode),
                organizationsUrl.hashCode),
            receivedEventsUrl.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchRestrictionPolicyOwner')
          ..add('login', login)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('reposUrl', reposUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('hooksUrl', hooksUrl)
          ..add('issuesUrl', issuesUrl)
          ..add('membersUrl', membersUrl)
          ..add('publicMembersUrl', publicMembersUrl)
          ..add('avatarUrl', avatarUrl)
          ..add('description', description)
          ..add('gravatarId', gravatarId)
          ..add('htmlUrl', htmlUrl)
          ..add('followersUrl', followersUrl)
          ..add('followingUrl', followingUrl)
          ..add('gistsUrl', gistsUrl)
          ..add('starredUrl', starredUrl)
          ..add('subscriptionsUrl', subscriptionsUrl)
          ..add('organizationsUrl', organizationsUrl)
          ..add('receivedEventsUrl', receivedEventsUrl)
          ..add('type', type))
        .toString();
  }
}

class BranchRestrictionPolicyOwnerBuilder
    implements
        Builder<BranchRestrictionPolicyOwner,
            BranchRestrictionPolicyOwnerBuilder> {
  _$BranchRestrictionPolicyOwner _$v;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _reposUrl;
  String get reposUrl => _$this._reposUrl;
  set reposUrl(String reposUrl) => _$this._reposUrl = reposUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _hooksUrl;
  String get hooksUrl => _$this._hooksUrl;
  set hooksUrl(String hooksUrl) => _$this._hooksUrl = hooksUrl;

  String _issuesUrl;
  String get issuesUrl => _$this._issuesUrl;
  set issuesUrl(String issuesUrl) => _$this._issuesUrl = issuesUrl;

  String _membersUrl;
  String get membersUrl => _$this._membersUrl;
  set membersUrl(String membersUrl) => _$this._membersUrl = membersUrl;

  String _publicMembersUrl;
  String get publicMembersUrl => _$this._publicMembersUrl;
  set publicMembersUrl(String publicMembersUrl) =>
      _$this._publicMembersUrl = publicMembersUrl;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _gravatarId;
  String get gravatarId => _$this._gravatarId;
  set gravatarId(String gravatarId) => _$this._gravatarId = gravatarId;

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

  String _receivedEventsUrl;
  String get receivedEventsUrl => _$this._receivedEventsUrl;
  set receivedEventsUrl(String receivedEventsUrl) =>
      _$this._receivedEventsUrl = receivedEventsUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  BranchRestrictionPolicyOwnerBuilder() {
    BranchRestrictionPolicyOwner._initializeBuilder(this);
  }

  BranchRestrictionPolicyOwnerBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _reposUrl = _$v.reposUrl;
      _eventsUrl = _$v.eventsUrl;
      _hooksUrl = _$v.hooksUrl;
      _issuesUrl = _$v.issuesUrl;
      _membersUrl = _$v.membersUrl;
      _publicMembersUrl = _$v.publicMembersUrl;
      _avatarUrl = _$v.avatarUrl;
      _description = _$v.description;
      _gravatarId = _$v.gravatarId;
      _htmlUrl = _$v.htmlUrl;
      _followersUrl = _$v.followersUrl;
      _followingUrl = _$v.followingUrl;
      _gistsUrl = _$v.gistsUrl;
      _starredUrl = _$v.starredUrl;
      _subscriptionsUrl = _$v.subscriptionsUrl;
      _organizationsUrl = _$v.organizationsUrl;
      _receivedEventsUrl = _$v.receivedEventsUrl;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchRestrictionPolicyOwner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchRestrictionPolicyOwner;
  }

  @override
  void update(void Function(BranchRestrictionPolicyOwnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchRestrictionPolicyOwner build() {
    final _$result = _$v ??
        new _$BranchRestrictionPolicyOwner._(
            login: login,
            id: id,
            nodeId: nodeId,
            url: url,
            reposUrl: reposUrl,
            eventsUrl: eventsUrl,
            hooksUrl: hooksUrl,
            issuesUrl: issuesUrl,
            membersUrl: membersUrl,
            publicMembersUrl: publicMembersUrl,
            avatarUrl: avatarUrl,
            description: description,
            gravatarId: gravatarId,
            htmlUrl: htmlUrl,
            followersUrl: followersUrl,
            followingUrl: followingUrl,
            gistsUrl: gistsUrl,
            starredUrl: starredUrl,
            subscriptionsUrl: subscriptionsUrl,
            organizationsUrl: organizationsUrl,
            receivedEventsUrl: receivedEventsUrl,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
