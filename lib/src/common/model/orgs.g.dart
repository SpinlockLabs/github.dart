// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orgs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization(
    login: json['login'] as String,
    id: json['id'] as int,
    htmlUrl: json['html_url'] as String,
    avatarUrl: json['avatar_url'] as String,
    name: json['name'] as String,
    company: json['company'] as String,
    blog: json['blog'] as String,
    location: json['location'] as String,
    email: json['email'] as String,
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

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'html_url': instance.htmlUrl,
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'email': instance.email,
      'public_repos': instance.publicReposCount,
      'public_gists': instance.publicGistsCount,
      'followers': instance.followersCount,
      'following': instance.followingCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

OrganizationMembership _$OrganizationMembershipFromJson(
    Map<String, dynamic> json) {
  return OrganizationMembership(
    state: json['state'] as String,
    organization: json['organization'] == null
        ? null
        : Organization.fromJson(json['organization'] as Map<String, dynamic>),
  );
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return Team(
    name: json['name'] as String,
    id: json['id'] as int,
    permission: json['permission'] as String,
    membersCount: json['members_count'] as int,
    reposCount: json['repos_count'] as int,
    organization: json['organization'] == null
        ? null
        : Organization.fromJson(json['organization'] as Map<String, dynamic>),
  );
}

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) {
  return TeamMember(
    login: json['login'] as String,
    id: json['id'] as int,
    avatarUrl: json['avatar_url'] as String,
    type: json['type'] as String,
    siteAdmin: json['site_admin'] as bool,
    htmlUrl: json['html_url'] as String,
  );
}

TeamRepository _$TeamRepositoryFromJson(Map<String, dynamic> json) {
  return TeamRepository(
    permissions: json['permissions'] == null
        ? null
        : TeamRepositoryPermissions.fromJson(
            json['permissions'] as Map<String, dynamic>),
  );
}

TeamRepositoryPermissions _$TeamRepositoryPermissionsFromJson(
    Map<String, dynamic> json) {
  return TeamRepositoryPermissions(
    json['admin'] as bool,
    json['push'] as bool,
    json['pull'] as bool,
  );
}
