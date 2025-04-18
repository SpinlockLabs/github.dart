// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orgs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      htmlUrl: json['html_url'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
      blog: json['blog'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      publicReposCount: (json['public_repos'] as num?)?.toInt(),
      publicGistsCount: (json['public_gists'] as num?)?.toInt(),
      followersCount: (json['followers'] as num?)?.toInt(),
      followingCount: (json['following'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

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
        Map<String, dynamic> json) =>
    OrganizationMembership(
      state: json['state'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationMembershipToJson(
        OrganizationMembership instance) =>
    <String, dynamic>{
      'state': instance.state,
      'organization': instance.organization,
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      description: json['description'] as String?,
      htmlUrl: json['html_url'] as String?,
      id: (json['id'] as num?)?.toInt(),
      ldapDn: json['ldap_dn'] as String?,
      membersCount: (json['members_count'] as num?)?.toInt(),
      membersUrl: json['members_url'] as String?,
      name: json['name'] as String?,
      nodeId: json['node_id'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : Team.fromJson(json['parent'] as Map<String, dynamic>),
      permission: json['permission'] as String?,
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      privacy: json['privacy'] as String?,
      reposCount: (json['repos_count'] as num?)?.toInt(),
      repositoriesUrl: json['repositories_url'] as String?,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'description': instance.description,
      'html_url': instance.htmlUrl,
      'id': instance.id,
      'ldap_dn': instance.ldapDn,
      'members_count': instance.membersCount,
      'members_url': instance.membersUrl,
      'name': instance.name,
      'node_id': instance.nodeId,
      'organization': instance.organization,
      'parent': instance.parent,
      'permission': instance.permission,
      'permissions': instance.permissions,
      'privacy': instance.privacy,
      'repos_count': instance.reposCount,
      'repositories_url': instance.repositoriesUrl,
      'slug': instance.slug,
      'url': instance.url,
    };

Permissions _$PermissionsFromJson(Map<String, dynamic> json) => Permissions(
      admin: json['admin'] as bool?,
      maintain: json['maintain'] as bool?,
      pull: json['pull'] as bool?,
      push: json['push'] as bool?,
      triage: json['triage'] as bool?,
    );

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'maintain': instance.maintain,
      'pull': instance.pull,
      'push': instance.push,
      'triage': instance.triage,
    };

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) => TeamMember(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      avatarUrl: json['avatar_url'] as String?,
      type: json['type'] as String?,
      siteAdmin: json['site_admin'] as bool?,
      htmlUrl: json['html_url'] as String?,
    );

Map<String, dynamic> _$TeamMemberToJson(TeamMember instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
      'html_url': instance.htmlUrl,
    };
