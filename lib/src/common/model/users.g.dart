// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String?,
      siteAdmin: json['site_admin'] as bool?,
      name: json['name'] as String?,
      company: json['company'] as String?,
      blog: json['blog'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      hirable: json['hirable'] as bool?,
      bio: json['bio'] as String?,
      publicReposCount: json['public_repos'] as int?,
      publicGistsCount: json['public_gists'] as int?,
      followersCount: json['followers'] as int?,
      followingCount: json['following'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      eventsUrl: json['events_url'] as String?,
      followersUrl: json['followers_url'] as String?,
      followingUrl: json['following_url'] as String?,
      gistsUrl: json['gists_url'] as String?,
      gravatarId: json['gravatar_id'] as String?,
      nodeId: json['node_id'] as String?,
      organizationsUrl: json['organizations_url'] as String?,
      receivedEventsUrl: json['received_events_url'] as String?,
      reposUrl: json['repos_url'] as String?,
      starredAt: json['starred_at'] == null
          ? null
          : DateTime.parse(json['starred_at'] as String),
      starredUrl: json['starred_url'] as String?,
      subscriptionsUrl: json['subscriptions_url'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
    )..twitterUsername = json['twitter_username'] as String?;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'site_admin': instance.siteAdmin,
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'email': instance.email,
      'hirable': instance.hirable,
      'bio': instance.bio,
      'public_repos': instance.publicReposCount,
      'public_gists': instance.publicGistsCount,
      'followers': instance.followersCount,
      'following': instance.followingCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'twitter_username': instance.twitterUsername,
      'events_url': instance.eventsUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'gravatar_id': instance.gravatarId,
      'node_id': instance.nodeId,
      'organizations_url': instance.organizationsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'repos_url': instance.reposUrl,
      'starred_at': instance.starredAt?.toIso8601String(),
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'type': instance.type,
      'url': instance.url,
    };

Collaborator _$CollaboratorFromJson(Map<String, dynamic> json) => Collaborator(
      json['login'] as String?,
      json['id'] as int?,
      json['html_url'] as String?,
      json['type'] as String?,
      json['site_admin'] as bool?,
      (json['permissions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$CollaboratorToJson(Collaborator instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'html_url': instance.htmlUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
      'permissions': instance.permissions,
    };

Contributor _$ContributorFromJson(Map<String, dynamic> json) => Contributor(
      id: json['id'] as int?,
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String?,
      type: json['type'] as String?,
      siteAdmin: json['site_admin'] as bool?,
      contributions: json['contributions'] as int?,
    );

Map<String, dynamic> _$ContributorToJson(Contributor instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
      'contributions': instance.contributions,
    };

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) => CurrentUser()
  ..login = json['login'] as String?
  ..id = json['id'] as int?
  ..avatarUrl = json['avatar_url'] as String?
  ..htmlUrl = json['html_url'] as String?
  ..siteAdmin = json['site_admin'] as bool?
  ..name = json['name'] as String?
  ..company = json['company'] as String?
  ..blog = json['blog'] as String?
  ..location = json['location'] as String?
  ..email = json['email'] as String?
  ..hirable = json['hirable'] as bool?
  ..bio = json['bio'] as String?
  ..publicReposCount = json['public_repos'] as int?
  ..publicGistsCount = json['public_gists'] as int?
  ..followersCount = json['followers'] as int?
  ..followingCount = json['following'] as int?
  ..createdAt = json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String)
  ..updatedAt = json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String)
  ..twitterUsername = json['twitter_username'] as String?
  ..eventsUrl = json['events_url'] as String?
  ..followersUrl = json['followers_url'] as String?
  ..followingUrl = json['following_url'] as String?
  ..gistsUrl = json['gists_url'] as String?
  ..gravatarId = json['gravatar_id'] as String?
  ..nodeId = json['node_id'] as String?
  ..organizationsUrl = json['organizations_url'] as String?
  ..receivedEventsUrl = json['received_events_url'] as String?
  ..reposUrl = json['repos_url'] as String?
  ..starredAt = json['starred_at'] == null
      ? null
      : DateTime.parse(json['starred_at'] as String)
  ..starredUrl = json['starred_url'] as String?
  ..subscriptionsUrl = json['subscriptions_url'] as String?
  ..type = json['type'] as String?
  ..url = json['url'] as String?
  ..privateReposCount = json['total_private_repos'] as int?
  ..ownedPrivateReposCount = json['owned_private_repos'] as int?
  ..diskUsage = json['disk_usage'] as int?
  ..plan = json['plan'] == null
      ? null
      : UserPlan.fromJson(json['plan'] as Map<String, dynamic>);

Map<String, dynamic> _$CurrentUserToJson(CurrentUser instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'site_admin': instance.siteAdmin,
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'email': instance.email,
      'hirable': instance.hirable,
      'bio': instance.bio,
      'public_repos': instance.publicReposCount,
      'public_gists': instance.publicGistsCount,
      'followers': instance.followersCount,
      'following': instance.followingCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'twitter_username': instance.twitterUsername,
      'events_url': instance.eventsUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'gravatar_id': instance.gravatarId,
      'node_id': instance.nodeId,
      'organizations_url': instance.organizationsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'repos_url': instance.reposUrl,
      'starred_at': instance.starredAt?.toIso8601String(),
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'type': instance.type,
      'url': instance.url,
      'total_private_repos': instance.privateReposCount,
      'owned_private_repos': instance.ownedPrivateReposCount,
      'disk_usage': instance.diskUsage,
      'plan': instance.plan,
    };

UserPlan _$UserPlanFromJson(Map<String, dynamic> json) => UserPlan()
  ..name = json['name'] as String?
  ..space = json['space'] as int?
  ..privateReposCount = json['private_repos'] as int?
  ..collaboratorsCount = json['collaborators'] as int?;

Map<String, dynamic> _$UserPlanToJson(UserPlan instance) => <String, dynamic>{
      'name': instance.name,
      'space': instance.space,
      'private_repos': instance.privateReposCount,
      'collaborators': instance.collaboratorsCount,
    };

UserEmail _$UserEmailFromJson(Map<String, dynamic> json) => UserEmail(
      email: json['email'] as String?,
      verified: json['verified'] as bool?,
      primary: json['primary'] as bool?,
    );

Map<String, dynamic> _$UserEmailToJson(UserEmail instance) => <String, dynamic>{
      'email': instance.email,
      'verified': instance.verified,
      'primary': instance.primary,
    };
