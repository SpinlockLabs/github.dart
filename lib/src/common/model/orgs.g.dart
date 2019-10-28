// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orgs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization()
    ..login = json['login'] as String
    ..id = json['id'] as int
    ..htmlUrl = json['html_url'] as String
    ..avatarUrl = json['avatar_url'] as String
    ..name = json['name'] as String
    ..company = json['company'] as String
    ..blog = json['blog'] as String
    ..location = json['location'] as String
    ..email = json['email'] as String
    ..publicReposCount = json['public_repos'] as int
    ..publicGistsCount = json['public_gists'] as int
    ..followersCount = json['followers'] as int
    ..followingCount = json['following'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
}

TeamRepository _$TeamRepositoryFromJson(Map<String, dynamic> json) {
  return TeamRepository()
    ..name = json['name'] as String
    ..id = json['id'] as int
    ..fullName = json['full_name'] as String
    ..owner = json['owner'] == null
        ? null
        : UserInformation.fromJson(json['owner'] as Map<String, dynamic>)
    ..isPrivate = json['private'] as bool
    ..isFork = json['fork'] as bool
    ..htmlUrl = json['html_url'] as String
    ..description = json['description'] as String
    ..cloneUrls = json['clone_urls'] == null
        ? null
        : CloneUrls.fromJson(json['clone_urls'] as Map<String, dynamic>)
    ..homepage = json['homepage'] as String
    ..size = json['size'] as int
    ..stargazersCount = json['stargazers_count'] as int
    ..watchersCount = json['watchers_count'] as int
    ..language = json['language'] as String
    ..hasIssues = json['has_issues'] as bool
    ..hasWiki = json['has_wiki'] as bool
    ..hasDownloads = json['has_downloads'] as bool
    ..forksCount = json['forks_count'] as int
    ..openIssuesCount = json['open_issues_count'] as int
    ..defaultBranch = json['default_branch'] as String
    ..subscribersCount = json['subscribers_count'] as int
    ..networkCount = json['network_count'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..pushedAt = json['pushed_at'] == null
        ? null
        : DateTime.parse(json['pushed_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..license = json['license'] == null
        ? null
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>)
    ..permissions = json['permissions'] == null
        ? null
        : TeamRepositoryPermissions.fromJson(
            json['permissions'] as Map<String, dynamic>);
}

TeamRepositoryPermissions _$TeamRepositoryPermissionsFromJson(
    Map<String, dynamic> json) {
  return TeamRepositoryPermissions(
    json['admin'] as bool,
    json['push'] as bool,
    json['pull'] as bool,
  );
}
