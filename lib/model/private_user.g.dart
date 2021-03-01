// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'private_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrivateUser> _$privateUserSerializer = new _$PrivateUserSerializer();

class _$PrivateUserSerializer implements StructuredSerializer<PrivateUser> {
  @override
  final Iterable<Type> types = const [PrivateUser, _$PrivateUser];
  @override
  final String wireName = 'PrivateUser';

  @override
  Iterable<Object> serialize(Serializers serializers, PrivateUser object,
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.company != null) {
      result
        ..add('company')
        ..add(serializers.serialize(object.company,
            specifiedType: const FullType(String)));
    }
    if (object.blog != null) {
      result
        ..add('blog')
        ..add(serializers.serialize(object.blog,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.hireable != null) {
      result
        ..add('hireable')
        ..add(serializers.serialize(object.hireable,
            specifiedType: const FullType(bool)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    if (object.twitterUsername != null) {
      result
        ..add('twitter_username')
        ..add(serializers.serialize(object.twitterUsername,
            specifiedType: const FullType(String)));
    }
    if (object.publicRepos != null) {
      result
        ..add('public_repos')
        ..add(serializers.serialize(object.publicRepos,
            specifiedType: const FullType(int)));
    }
    if (object.publicGists != null) {
      result
        ..add('public_gists')
        ..add(serializers.serialize(object.publicGists,
            specifiedType: const FullType(int)));
    }
    if (object.followers != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(object.followers,
            specifiedType: const FullType(int)));
    }
    if (object.following != null) {
      result
        ..add('following')
        ..add(serializers.serialize(object.following,
            specifiedType: const FullType(int)));
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
    if (object.privateGists != null) {
      result
        ..add('private_gists')
        ..add(serializers.serialize(object.privateGists,
            specifiedType: const FullType(int)));
    }
    if (object.totalPrivateRepos != null) {
      result
        ..add('total_private_repos')
        ..add(serializers.serialize(object.totalPrivateRepos,
            specifiedType: const FullType(int)));
    }
    if (object.ownedPrivateRepos != null) {
      result
        ..add('owned_private_repos')
        ..add(serializers.serialize(object.ownedPrivateRepos,
            specifiedType: const FullType(int)));
    }
    if (object.diskUsage != null) {
      result
        ..add('disk_usage')
        ..add(serializers.serialize(object.diskUsage,
            specifiedType: const FullType(int)));
    }
    if (object.collaborators != null) {
      result
        ..add('collaborators')
        ..add(serializers.serialize(object.collaborators,
            specifiedType: const FullType(int)));
    }
    if (object.twoFactorAuthentication != null) {
      result
        ..add('two_factor_authentication')
        ..add(serializers.serialize(object.twoFactorAuthentication,
            specifiedType: const FullType(bool)));
    }
    if (object.plan != null) {
      result
        ..add('plan')
        ..add(serializers.serialize(object.plan,
            specifiedType: const FullType(PrivateUserPlan)));
    }
    if (object.suspendedAt != null) {
      result
        ..add('suspended_at')
        ..add(serializers.serialize(object.suspendedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.businessPlus != null) {
      result
        ..add('business_plus')
        ..add(serializers.serialize(object.businessPlus,
            specifiedType: const FullType(bool)));
    }
    if (object.ldapDn != null) {
      result
        ..add('ldap_dn')
        ..add(serializers.serialize(object.ldapDn,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PrivateUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrivateUserBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blog':
          result.blog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hireable':
          result.hireable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public_repos':
          result.publicRepos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'public_gists':
          result.publicGists = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'followers':
          result.followers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'following':
          result.following = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'private_gists':
          result.privateGists = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_private_repos':
          result.totalPrivateRepos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'owned_private_repos':
          result.ownedPrivateRepos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'disk_usage':
          result.diskUsage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'collaborators':
          result.collaborators = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'two_factor_authentication':
          result.twoFactorAuthentication = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'plan':
          result.plan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PrivateUserPlan))
              as PrivateUserPlan);
          break;
        case 'suspended_at':
          result.suspendedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'business_plus':
          result.businessPlus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ldap_dn':
          result.ldapDn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PrivateUser extends PrivateUser {
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
  @override
  final String name;
  @override
  final String company;
  @override
  final String blog;
  @override
  final String location;
  @override
  final String email;
  @override
  final bool hireable;
  @override
  final String bio;
  @override
  final String twitterUsername;
  @override
  final int publicRepos;
  @override
  final int publicGists;
  @override
  final int followers;
  @override
  final int following;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int privateGists;
  @override
  final int totalPrivateRepos;
  @override
  final int ownedPrivateRepos;
  @override
  final int diskUsage;
  @override
  final int collaborators;
  @override
  final bool twoFactorAuthentication;
  @override
  final PrivateUserPlan plan;
  @override
  final DateTime suspendedAt;
  @override
  final bool businessPlus;
  @override
  final String ldapDn;

  factory _$PrivateUser([void Function(PrivateUserBuilder) updates]) =>
      (new PrivateUserBuilder()..update(updates)).build();

  _$PrivateUser._(
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
      this.siteAdmin,
      this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.hireable,
      this.bio,
      this.twitterUsername,
      this.publicRepos,
      this.publicGists,
      this.followers,
      this.following,
      this.createdAt,
      this.updatedAt,
      this.privateGists,
      this.totalPrivateRepos,
      this.ownedPrivateRepos,
      this.diskUsage,
      this.collaborators,
      this.twoFactorAuthentication,
      this.plan,
      this.suspendedAt,
      this.businessPlus,
      this.ldapDn})
      : super._();

  @override
  PrivateUser rebuild(void Function(PrivateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateUserBuilder toBuilder() => new PrivateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateUser &&
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
        siteAdmin == other.siteAdmin &&
        name == other.name &&
        company == other.company &&
        blog == other.blog &&
        location == other.location &&
        email == other.email &&
        hireable == other.hireable &&
        bio == other.bio &&
        twitterUsername == other.twitterUsername &&
        publicRepos == other.publicRepos &&
        publicGists == other.publicGists &&
        followers == other.followers &&
        following == other.following &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        privateGists == other.privateGists &&
        totalPrivateRepos == other.totalPrivateRepos &&
        ownedPrivateRepos == other.ownedPrivateRepos &&
        diskUsage == other.diskUsage &&
        collaborators == other.collaborators &&
        twoFactorAuthentication == other.twoFactorAuthentication &&
        plan == other.plan &&
        suspendedAt == other.suspendedAt &&
        businessPlus == other.businessPlus &&
        ldapDn == other.ldapDn;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, login.hashCode), id.hashCode), nodeId.hashCode), avatarUrl.hashCode), gravatarId.hashCode), url.hashCode), htmlUrl.hashCode), followersUrl.hashCode), followingUrl.hashCode), gistsUrl.hashCode), starredUrl.hashCode), subscriptionsUrl.hashCode), organizationsUrl.hashCode), reposUrl.hashCode), eventsUrl.hashCode), receivedEventsUrl.hashCode), type.hashCode), siteAdmin.hashCode), name.hashCode), company.hashCode), blog.hashCode), location.hashCode), email.hashCode),
                                                                                hireable.hashCode),
                                                                            bio.hashCode),
                                                                        twitterUsername.hashCode),
                                                                    publicRepos.hashCode),
                                                                publicGists.hashCode),
                                                            followers.hashCode),
                                                        following.hashCode),
                                                    createdAt.hashCode),
                                                updatedAt.hashCode),
                                            privateGists.hashCode),
                                        totalPrivateRepos.hashCode),
                                    ownedPrivateRepos.hashCode),
                                diskUsage.hashCode),
                            collaborators.hashCode),
                        twoFactorAuthentication.hashCode),
                    plan.hashCode),
                suspendedAt.hashCode),
            businessPlus.hashCode),
        ldapDn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrivateUser')
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
          ..add('siteAdmin', siteAdmin)
          ..add('name', name)
          ..add('company', company)
          ..add('blog', blog)
          ..add('location', location)
          ..add('email', email)
          ..add('hireable', hireable)
          ..add('bio', bio)
          ..add('twitterUsername', twitterUsername)
          ..add('publicRepos', publicRepos)
          ..add('publicGists', publicGists)
          ..add('followers', followers)
          ..add('following', following)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('privateGists', privateGists)
          ..add('totalPrivateRepos', totalPrivateRepos)
          ..add('ownedPrivateRepos', ownedPrivateRepos)
          ..add('diskUsage', diskUsage)
          ..add('collaborators', collaborators)
          ..add('twoFactorAuthentication', twoFactorAuthentication)
          ..add('plan', plan)
          ..add('suspendedAt', suspendedAt)
          ..add('businessPlus', businessPlus)
          ..add('ldapDn', ldapDn))
        .toString();
  }
}

class PrivateUserBuilder implements Builder<PrivateUser, PrivateUserBuilder> {
  _$PrivateUser _$v;

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

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _company;
  String get company => _$this._company;
  set company(String company) => _$this._company = company;

  String _blog;
  String get blog => _$this._blog;
  set blog(String blog) => _$this._blog = blog;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _hireable;
  bool get hireable => _$this._hireable;
  set hireable(bool hireable) => _$this._hireable = hireable;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _twitterUsername;
  String get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  int _publicRepos;
  int get publicRepos => _$this._publicRepos;
  set publicRepos(int publicRepos) => _$this._publicRepos = publicRepos;

  int _publicGists;
  int get publicGists => _$this._publicGists;
  set publicGists(int publicGists) => _$this._publicGists = publicGists;

  int _followers;
  int get followers => _$this._followers;
  set followers(int followers) => _$this._followers = followers;

  int _following;
  int get following => _$this._following;
  set following(int following) => _$this._following = following;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  int _privateGists;
  int get privateGists => _$this._privateGists;
  set privateGists(int privateGists) => _$this._privateGists = privateGists;

  int _totalPrivateRepos;
  int get totalPrivateRepos => _$this._totalPrivateRepos;
  set totalPrivateRepos(int totalPrivateRepos) =>
      _$this._totalPrivateRepos = totalPrivateRepos;

  int _ownedPrivateRepos;
  int get ownedPrivateRepos => _$this._ownedPrivateRepos;
  set ownedPrivateRepos(int ownedPrivateRepos) =>
      _$this._ownedPrivateRepos = ownedPrivateRepos;

  int _diskUsage;
  int get diskUsage => _$this._diskUsage;
  set diskUsage(int diskUsage) => _$this._diskUsage = diskUsage;

  int _collaborators;
  int get collaborators => _$this._collaborators;
  set collaborators(int collaborators) => _$this._collaborators = collaborators;

  bool _twoFactorAuthentication;
  bool get twoFactorAuthentication => _$this._twoFactorAuthentication;
  set twoFactorAuthentication(bool twoFactorAuthentication) =>
      _$this._twoFactorAuthentication = twoFactorAuthentication;

  PrivateUserPlanBuilder _plan;
  PrivateUserPlanBuilder get plan =>
      _$this._plan ??= new PrivateUserPlanBuilder();
  set plan(PrivateUserPlanBuilder plan) => _$this._plan = plan;

  DateTime _suspendedAt;
  DateTime get suspendedAt => _$this._suspendedAt;
  set suspendedAt(DateTime suspendedAt) => _$this._suspendedAt = suspendedAt;

  bool _businessPlus;
  bool get businessPlus => _$this._businessPlus;
  set businessPlus(bool businessPlus) => _$this._businessPlus = businessPlus;

  String _ldapDn;
  String get ldapDn => _$this._ldapDn;
  set ldapDn(String ldapDn) => _$this._ldapDn = ldapDn;

  PrivateUserBuilder() {
    PrivateUser._initializeBuilder(this);
  }

  PrivateUserBuilder get _$this {
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
      _name = _$v.name;
      _company = _$v.company;
      _blog = _$v.blog;
      _location = _$v.location;
      _email = _$v.email;
      _hireable = _$v.hireable;
      _bio = _$v.bio;
      _twitterUsername = _$v.twitterUsername;
      _publicRepos = _$v.publicRepos;
      _publicGists = _$v.publicGists;
      _followers = _$v.followers;
      _following = _$v.following;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _privateGists = _$v.privateGists;
      _totalPrivateRepos = _$v.totalPrivateRepos;
      _ownedPrivateRepos = _$v.ownedPrivateRepos;
      _diskUsage = _$v.diskUsage;
      _collaborators = _$v.collaborators;
      _twoFactorAuthentication = _$v.twoFactorAuthentication;
      _plan = _$v.plan?.toBuilder();
      _suspendedAt = _$v.suspendedAt;
      _businessPlus = _$v.businessPlus;
      _ldapDn = _$v.ldapDn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrivateUser;
  }

  @override
  void update(void Function(PrivateUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrivateUser build() {
    _$PrivateUser _$result;
    try {
      _$result = _$v ??
          new _$PrivateUser._(
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
              siteAdmin: siteAdmin,
              name: name,
              company: company,
              blog: blog,
              location: location,
              email: email,
              hireable: hireable,
              bio: bio,
              twitterUsername: twitterUsername,
              publicRepos: publicRepos,
              publicGists: publicGists,
              followers: followers,
              following: following,
              createdAt: createdAt,
              updatedAt: updatedAt,
              privateGists: privateGists,
              totalPrivateRepos: totalPrivateRepos,
              ownedPrivateRepos: ownedPrivateRepos,
              diskUsage: diskUsage,
              collaborators: collaborators,
              twoFactorAuthentication: twoFactorAuthentication,
              plan: _plan?.build(),
              suspendedAt: suspendedAt,
              businessPlus: businessPlus,
              ldapDn: ldapDn);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'plan';
        _plan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PrivateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
