// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    login: json['login'] as String,
    avatarUrl: json['avatar_url'] as String,
    htmlUrl: json['html_url'] as String,
    siteAdmin: json['site_admin'] as bool,
    name: json['name'] as String,
    company: json['company'] as String,
    blog: json['blog'] as String,
    location: json['location'] as String,
    email: json['email'] as String,
    hirable: json['hirable'] as bool,
    bio: json['bio'] as String,
    publicReposCount: json['public_repos'] as int,
    publicGistsCount: json['public_gists'] as int,
    followersCount: json['followers'] as int,
    followingCount: json['following'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

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
    };

Collaborator _$CollaboratorFromJson(Map<String, dynamic> json) {
  return Collaborator(
    json['login'] as String,
    json['id'] as int,
    json['html_url'] as String,
    json['type'] as String,
    json['site_admin'] as bool,
    (json['permissions'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
  );
}

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) {
  return CurrentUser()
    ..login = json['login'] as String
    ..id = json['id'] as int
    ..avatarUrl = json['avatar_url'] as String
    ..htmlUrl = json['html_url'] as String
    ..siteAdmin = json['site_admin'] as bool
    ..name = json['name'] as String
    ..company = json['company'] as String
    ..blog = json['blog'] as String
    ..location = json['location'] as String
    ..email = json['email'] as String
    ..hirable = json['hirable'] as bool
    ..bio = json['bio'] as String
    ..publicReposCount = json['public_repos'] as int
    ..publicGistsCount = json['public_gists'] as int
    ..followersCount = json['followers'] as int
    ..followingCount = json['following'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..privateReposCount = json['total_private_repos'] as int
    ..ownedPrivateReposCount = json['owned_private_repos'] as int
    ..diskUsage = json['disk_usage'] as int
    ..plan = json['plan'] == null
        ? null
        : UserPlan.fromJson(json['plan'] as Map<String, dynamic>);
}

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
      'total_private_repos': instance.privateReposCount,
      'owned_private_repos': instance.ownedPrivateReposCount,
      'disk_usage': instance.diskUsage,
      'plan': instance.plan,
    };

UserPlan _$UserPlanFromJson(Map<String, dynamic> json) {
  return UserPlan()
    ..name = json['name'] as String
    ..space = json['space'] as int
    ..privateReposCount = json['private_repos'] as int
    ..collaboratorsCount = json['collaborators'] as int;
}

Map<String, dynamic> _$UserPlanToJson(UserPlan instance) => <String, dynamic>{
      'name': instance.name,
      'space': instance.space,
      'private_repos': instance.privateReposCount,
      'collaborators': instance.collaboratorsCount,
    };

UserEmail _$UserEmailFromJson(Map<String, dynamic> json) {
  return UserEmail(
    email: json['email'] as String,
    verified: json['verified'] as bool,
    primary: json['primary'] as bool,
  );
}

Map<String, dynamic> _$UserEmailToJson(UserEmail instance) => <String, dynamic>{
      'email': instance.email,
      'verified': instance.verified,
      'primary': instance.primary,
    };
