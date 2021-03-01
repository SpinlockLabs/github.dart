// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'organization_full.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganizationFull> _$organizationFullSerializer =
    new _$OrganizationFullSerializer();

class _$OrganizationFullSerializer
    implements StructuredSerializer<OrganizationFull> {
  @override
  final Iterable<Type> types = const [OrganizationFull, _$OrganizationFull];
  @override
  final String wireName = 'OrganizationFull';

  @override
  Iterable<Object> serialize(Serializers serializers, OrganizationFull object,
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
    if (object.twitterUsername != null) {
      result
        ..add('twitter_username')
        ..add(serializers.serialize(object.twitterUsername,
            specifiedType: const FullType(String)));
    }
    if (object.isVerified != null) {
      result
        ..add('is_verified')
        ..add(serializers.serialize(object.isVerified,
            specifiedType: const FullType(bool)));
    }
    if (object.hasOrganizationProjects != null) {
      result
        ..add('has_organization_projects')
        ..add(serializers.serialize(object.hasOrganizationProjects,
            specifiedType: const FullType(bool)));
    }
    if (object.hasRepositoryProjects != null) {
      result
        ..add('has_repository_projects')
        ..add(serializers.serialize(object.hasRepositoryProjects,
            specifiedType: const FullType(bool)));
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
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
    if (object.privateGists != null) {
      result
        ..add('private_gists')
        ..add(serializers.serialize(object.privateGists,
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
    if (object.billingEmail != null) {
      result
        ..add('billing_email')
        ..add(serializers.serialize(object.billingEmail,
            specifiedType: const FullType(String)));
    }
    if (object.plan != null) {
      result
        ..add('plan')
        ..add(serializers.serialize(object.plan,
            specifiedType: const FullType(OrganizationFullPlan)));
    }
    if (object.defaultRepositoryPermission != null) {
      result
        ..add('default_repository_permission')
        ..add(serializers.serialize(object.defaultRepositoryPermission,
            specifiedType: const FullType(String)));
    }
    if (object.membersCanCreateRepositories != null) {
      result
        ..add('members_can_create_repositories')
        ..add(serializers.serialize(object.membersCanCreateRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.twoFactorRequirementEnabled != null) {
      result
        ..add('two_factor_requirement_enabled')
        ..add(serializers.serialize(object.twoFactorRequirementEnabled,
            specifiedType: const FullType(bool)));
    }
    if (object.membersAllowedRepositoryCreationType != null) {
      result
        ..add('members_allowed_repository_creation_type')
        ..add(serializers.serialize(object.membersAllowedRepositoryCreationType,
            specifiedType: const FullType(String)));
    }
    if (object.membersCanCreatePublicRepositories != null) {
      result
        ..add('members_can_create_public_repositories')
        ..add(serializers.serialize(object.membersCanCreatePublicRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreatePrivateRepositories != null) {
      result
        ..add('members_can_create_private_repositories')
        ..add(serializers.serialize(object.membersCanCreatePrivateRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreateInternalRepositories != null) {
      result
        ..add('members_can_create_internal_repositories')
        ..add(serializers.serialize(object.membersCanCreateInternalRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreatePages != null) {
      result
        ..add('members_can_create_pages')
        ..add(serializers.serialize(object.membersCanCreatePages,
            specifiedType: const FullType(bool)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  OrganizationFull deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganizationFullBuilder();

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
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_verified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_organization_projects':
          result.hasOrganizationProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_repository_projects':
          result.hasRepositoryProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_private_repos':
          result.totalPrivateRepos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'owned_private_repos':
          result.ownedPrivateRepos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'private_gists':
          result.privateGists = serializers.deserialize(value,
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
        case 'billing_email':
          result.billingEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'plan':
          result.plan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OrganizationFullPlan))
              as OrganizationFullPlan);
          break;
        case 'default_repository_permission':
          result.defaultRepositoryPermission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members_can_create_repositories':
          result.membersCanCreateRepositories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'two_factor_requirement_enabled':
          result.twoFactorRequirementEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_allowed_repository_creation_type':
          result.membersAllowedRepositoryCreationType = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members_can_create_public_repositories':
          result.membersCanCreatePublicRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_private_repositories':
          result.membersCanCreatePrivateRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_internal_repositories':
          result.membersCanCreateInternalRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_pages':
          result.membersCanCreatePages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganizationFull extends OrganizationFull {
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
  final String twitterUsername;
  @override
  final bool isVerified;
  @override
  final bool hasOrganizationProjects;
  @override
  final bool hasRepositoryProjects;
  @override
  final int publicRepos;
  @override
  final int publicGists;
  @override
  final int followers;
  @override
  final int following;
  @override
  final String htmlUrl;
  @override
  final DateTime createdAt;
  @override
  final String type;
  @override
  final int totalPrivateRepos;
  @override
  final int ownedPrivateRepos;
  @override
  final int privateGists;
  @override
  final int diskUsage;
  @override
  final int collaborators;
  @override
  final String billingEmail;
  @override
  final OrganizationFullPlan plan;
  @override
  final String defaultRepositoryPermission;
  @override
  final bool membersCanCreateRepositories;
  @override
  final bool twoFactorRequirementEnabled;
  @override
  final String membersAllowedRepositoryCreationType;
  @override
  final bool membersCanCreatePublicRepositories;
  @override
  final bool membersCanCreatePrivateRepositories;
  @override
  final bool membersCanCreateInternalRepositories;
  @override
  final bool membersCanCreatePages;
  @override
  final DateTime updatedAt;

  factory _$OrganizationFull(
          [void Function(OrganizationFullBuilder) updates]) =>
      (new OrganizationFullBuilder()..update(updates)).build();

  _$OrganizationFull._(
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
      this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.twitterUsername,
      this.isVerified,
      this.hasOrganizationProjects,
      this.hasRepositoryProjects,
      this.publicRepos,
      this.publicGists,
      this.followers,
      this.following,
      this.htmlUrl,
      this.createdAt,
      this.type,
      this.totalPrivateRepos,
      this.ownedPrivateRepos,
      this.privateGists,
      this.diskUsage,
      this.collaborators,
      this.billingEmail,
      this.plan,
      this.defaultRepositoryPermission,
      this.membersCanCreateRepositories,
      this.twoFactorRequirementEnabled,
      this.membersAllowedRepositoryCreationType,
      this.membersCanCreatePublicRepositories,
      this.membersCanCreatePrivateRepositories,
      this.membersCanCreateInternalRepositories,
      this.membersCanCreatePages,
      this.updatedAt})
      : super._();

  @override
  OrganizationFull rebuild(void Function(OrganizationFullBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationFullBuilder toBuilder() =>
      new OrganizationFullBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationFull &&
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
        name == other.name &&
        company == other.company &&
        blog == other.blog &&
        location == other.location &&
        email == other.email &&
        twitterUsername == other.twitterUsername &&
        isVerified == other.isVerified &&
        hasOrganizationProjects == other.hasOrganizationProjects &&
        hasRepositoryProjects == other.hasRepositoryProjects &&
        publicRepos == other.publicRepos &&
        publicGists == other.publicGists &&
        followers == other.followers &&
        following == other.following &&
        htmlUrl == other.htmlUrl &&
        createdAt == other.createdAt &&
        type == other.type &&
        totalPrivateRepos == other.totalPrivateRepos &&
        ownedPrivateRepos == other.ownedPrivateRepos &&
        privateGists == other.privateGists &&
        diskUsage == other.diskUsage &&
        collaborators == other.collaborators &&
        billingEmail == other.billingEmail &&
        plan == other.plan &&
        defaultRepositoryPermission == other.defaultRepositoryPermission &&
        membersCanCreateRepositories == other.membersCanCreateRepositories &&
        twoFactorRequirementEnabled == other.twoFactorRequirementEnabled &&
        membersAllowedRepositoryCreationType ==
            other.membersAllowedRepositoryCreationType &&
        membersCanCreatePublicRepositories ==
            other.membersCanCreatePublicRepositories &&
        membersCanCreatePrivateRepositories ==
            other.membersCanCreatePrivateRepositories &&
        membersCanCreateInternalRepositories ==
            other.membersCanCreateInternalRepositories &&
        membersCanCreatePages == other.membersCanCreatePages &&
        updatedAt == other.updatedAt;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, login.hashCode), id.hashCode), nodeId.hashCode), url.hashCode), reposUrl.hashCode), eventsUrl.hashCode), hooksUrl.hashCode), issuesUrl.hashCode), membersUrl.hashCode), publicMembersUrl.hashCode), avatarUrl.hashCode), description.hashCode), name.hashCode), company.hashCode), blog.hashCode), location.hashCode), email.hashCode), twitterUsername.hashCode), isVerified.hashCode), hasOrganizationProjects.hashCode), hasRepositoryProjects.hashCode), publicRepos.hashCode), publicGists.hashCode), followers.hashCode), following.hashCode),
                                                                                htmlUrl.hashCode),
                                                                            createdAt.hashCode),
                                                                        type.hashCode),
                                                                    totalPrivateRepos.hashCode),
                                                                ownedPrivateRepos.hashCode),
                                                            privateGists.hashCode),
                                                        diskUsage.hashCode),
                                                    collaborators.hashCode),
                                                billingEmail.hashCode),
                                            plan.hashCode),
                                        defaultRepositoryPermission.hashCode),
                                    membersCanCreateRepositories.hashCode),
                                twoFactorRequirementEnabled.hashCode),
                            membersAllowedRepositoryCreationType.hashCode),
                        membersCanCreatePublicRepositories.hashCode),
                    membersCanCreatePrivateRepositories.hashCode),
                membersCanCreateInternalRepositories.hashCode),
            membersCanCreatePages.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationFull')
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
          ..add('name', name)
          ..add('company', company)
          ..add('blog', blog)
          ..add('location', location)
          ..add('email', email)
          ..add('twitterUsername', twitterUsername)
          ..add('isVerified', isVerified)
          ..add('hasOrganizationProjects', hasOrganizationProjects)
          ..add('hasRepositoryProjects', hasRepositoryProjects)
          ..add('publicRepos', publicRepos)
          ..add('publicGists', publicGists)
          ..add('followers', followers)
          ..add('following', following)
          ..add('htmlUrl', htmlUrl)
          ..add('createdAt', createdAt)
          ..add('type', type)
          ..add('totalPrivateRepos', totalPrivateRepos)
          ..add('ownedPrivateRepos', ownedPrivateRepos)
          ..add('privateGists', privateGists)
          ..add('diskUsage', diskUsage)
          ..add('collaborators', collaborators)
          ..add('billingEmail', billingEmail)
          ..add('plan', plan)
          ..add('defaultRepositoryPermission', defaultRepositoryPermission)
          ..add('membersCanCreateRepositories', membersCanCreateRepositories)
          ..add('twoFactorRequirementEnabled', twoFactorRequirementEnabled)
          ..add('membersAllowedRepositoryCreationType',
              membersAllowedRepositoryCreationType)
          ..add('membersCanCreatePublicRepositories',
              membersCanCreatePublicRepositories)
          ..add('membersCanCreatePrivateRepositories',
              membersCanCreatePrivateRepositories)
          ..add('membersCanCreateInternalRepositories',
              membersCanCreateInternalRepositories)
          ..add('membersCanCreatePages', membersCanCreatePages)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class OrganizationFullBuilder
    implements Builder<OrganizationFull, OrganizationFullBuilder> {
  _$OrganizationFull _$v;

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

  String _twitterUsername;
  String get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  bool _isVerified;
  bool get isVerified => _$this._isVerified;
  set isVerified(bool isVerified) => _$this._isVerified = isVerified;

  bool _hasOrganizationProjects;
  bool get hasOrganizationProjects => _$this._hasOrganizationProjects;
  set hasOrganizationProjects(bool hasOrganizationProjects) =>
      _$this._hasOrganizationProjects = hasOrganizationProjects;

  bool _hasRepositoryProjects;
  bool get hasRepositoryProjects => _$this._hasRepositoryProjects;
  set hasRepositoryProjects(bool hasRepositoryProjects) =>
      _$this._hasRepositoryProjects = hasRepositoryProjects;

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

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _totalPrivateRepos;
  int get totalPrivateRepos => _$this._totalPrivateRepos;
  set totalPrivateRepos(int totalPrivateRepos) =>
      _$this._totalPrivateRepos = totalPrivateRepos;

  int _ownedPrivateRepos;
  int get ownedPrivateRepos => _$this._ownedPrivateRepos;
  set ownedPrivateRepos(int ownedPrivateRepos) =>
      _$this._ownedPrivateRepos = ownedPrivateRepos;

  int _privateGists;
  int get privateGists => _$this._privateGists;
  set privateGists(int privateGists) => _$this._privateGists = privateGists;

  int _diskUsage;
  int get diskUsage => _$this._diskUsage;
  set diskUsage(int diskUsage) => _$this._diskUsage = diskUsage;

  int _collaborators;
  int get collaborators => _$this._collaborators;
  set collaborators(int collaborators) => _$this._collaborators = collaborators;

  String _billingEmail;
  String get billingEmail => _$this._billingEmail;
  set billingEmail(String billingEmail) => _$this._billingEmail = billingEmail;

  OrganizationFullPlanBuilder _plan;
  OrganizationFullPlanBuilder get plan =>
      _$this._plan ??= new OrganizationFullPlanBuilder();
  set plan(OrganizationFullPlanBuilder plan) => _$this._plan = plan;

  String _defaultRepositoryPermission;
  String get defaultRepositoryPermission => _$this._defaultRepositoryPermission;
  set defaultRepositoryPermission(String defaultRepositoryPermission) =>
      _$this._defaultRepositoryPermission = defaultRepositoryPermission;

  bool _membersCanCreateRepositories;
  bool get membersCanCreateRepositories => _$this._membersCanCreateRepositories;
  set membersCanCreateRepositories(bool membersCanCreateRepositories) =>
      _$this._membersCanCreateRepositories = membersCanCreateRepositories;

  bool _twoFactorRequirementEnabled;
  bool get twoFactorRequirementEnabled => _$this._twoFactorRequirementEnabled;
  set twoFactorRequirementEnabled(bool twoFactorRequirementEnabled) =>
      _$this._twoFactorRequirementEnabled = twoFactorRequirementEnabled;

  String _membersAllowedRepositoryCreationType;
  String get membersAllowedRepositoryCreationType =>
      _$this._membersAllowedRepositoryCreationType;
  set membersAllowedRepositoryCreationType(
          String membersAllowedRepositoryCreationType) =>
      _$this._membersAllowedRepositoryCreationType =
          membersAllowedRepositoryCreationType;

  bool _membersCanCreatePublicRepositories;
  bool get membersCanCreatePublicRepositories =>
      _$this._membersCanCreatePublicRepositories;
  set membersCanCreatePublicRepositories(
          bool membersCanCreatePublicRepositories) =>
      _$this._membersCanCreatePublicRepositories =
          membersCanCreatePublicRepositories;

  bool _membersCanCreatePrivateRepositories;
  bool get membersCanCreatePrivateRepositories =>
      _$this._membersCanCreatePrivateRepositories;
  set membersCanCreatePrivateRepositories(
          bool membersCanCreatePrivateRepositories) =>
      _$this._membersCanCreatePrivateRepositories =
          membersCanCreatePrivateRepositories;

  bool _membersCanCreateInternalRepositories;
  bool get membersCanCreateInternalRepositories =>
      _$this._membersCanCreateInternalRepositories;
  set membersCanCreateInternalRepositories(
          bool membersCanCreateInternalRepositories) =>
      _$this._membersCanCreateInternalRepositories =
          membersCanCreateInternalRepositories;

  bool _membersCanCreatePages;
  bool get membersCanCreatePages => _$this._membersCanCreatePages;
  set membersCanCreatePages(bool membersCanCreatePages) =>
      _$this._membersCanCreatePages = membersCanCreatePages;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  OrganizationFullBuilder() {
    OrganizationFull._initializeBuilder(this);
  }

  OrganizationFullBuilder get _$this {
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
      _name = _$v.name;
      _company = _$v.company;
      _blog = _$v.blog;
      _location = _$v.location;
      _email = _$v.email;
      _twitterUsername = _$v.twitterUsername;
      _isVerified = _$v.isVerified;
      _hasOrganizationProjects = _$v.hasOrganizationProjects;
      _hasRepositoryProjects = _$v.hasRepositoryProjects;
      _publicRepos = _$v.publicRepos;
      _publicGists = _$v.publicGists;
      _followers = _$v.followers;
      _following = _$v.following;
      _htmlUrl = _$v.htmlUrl;
      _createdAt = _$v.createdAt;
      _type = _$v.type;
      _totalPrivateRepos = _$v.totalPrivateRepos;
      _ownedPrivateRepos = _$v.ownedPrivateRepos;
      _privateGists = _$v.privateGists;
      _diskUsage = _$v.diskUsage;
      _collaborators = _$v.collaborators;
      _billingEmail = _$v.billingEmail;
      _plan = _$v.plan?.toBuilder();
      _defaultRepositoryPermission = _$v.defaultRepositoryPermission;
      _membersCanCreateRepositories = _$v.membersCanCreateRepositories;
      _twoFactorRequirementEnabled = _$v.twoFactorRequirementEnabled;
      _membersAllowedRepositoryCreationType =
          _$v.membersAllowedRepositoryCreationType;
      _membersCanCreatePublicRepositories =
          _$v.membersCanCreatePublicRepositories;
      _membersCanCreatePrivateRepositories =
          _$v.membersCanCreatePrivateRepositories;
      _membersCanCreateInternalRepositories =
          _$v.membersCanCreateInternalRepositories;
      _membersCanCreatePages = _$v.membersCanCreatePages;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationFull other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrganizationFull;
  }

  @override
  void update(void Function(OrganizationFullBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationFull build() {
    _$OrganizationFull _$result;
    try {
      _$result = _$v ??
          new _$OrganizationFull._(
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
              name: name,
              company: company,
              blog: blog,
              location: location,
              email: email,
              twitterUsername: twitterUsername,
              isVerified: isVerified,
              hasOrganizationProjects: hasOrganizationProjects,
              hasRepositoryProjects: hasRepositoryProjects,
              publicRepos: publicRepos,
              publicGists: publicGists,
              followers: followers,
              following: following,
              htmlUrl: htmlUrl,
              createdAt: createdAt,
              type: type,
              totalPrivateRepos: totalPrivateRepos,
              ownedPrivateRepos: ownedPrivateRepos,
              privateGists: privateGists,
              diskUsage: diskUsage,
              collaborators: collaborators,
              billingEmail: billingEmail,
              plan: _plan?.build(),
              defaultRepositoryPermission: defaultRepositoryPermission,
              membersCanCreateRepositories: membersCanCreateRepositories,
              twoFactorRequirementEnabled: twoFactorRequirementEnabled,
              membersAllowedRepositoryCreationType:
                  membersAllowedRepositoryCreationType,
              membersCanCreatePublicRepositories:
                  membersCanCreatePublicRepositories,
              membersCanCreatePrivateRepositories:
                  membersCanCreatePrivateRepositories,
              membersCanCreateInternalRepositories:
                  membersCanCreateInternalRepositories,
              membersCanCreatePages: membersCanCreatePages,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'plan';
        _plan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrganizationFull', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
