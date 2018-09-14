// GENERATED CODE - DO NOT MODIFY BY HAND

part of github.common;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitTree _$GitTreeFromJson(Map<String, dynamic> json) {
  return GitTree(
      json['sha'] as String,
      json['url'] as String,
      json['truncated'] as bool,
      (json['tree'] as List)
          ?.map((e) => e == null
              ? null
              : GitTreeEntry.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

GitTreeEntry _$GitTreeEntryFromJson(Map<String, dynamic> json) {
  return GitTreeEntry(
      json['path'] as String,
      json['mode'] as String,
      json['type'] as String,
      json['size'] as int,
      json['sha'] as String,
      json['url'] as String);
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
    ..defaultBranch = json['defaultBranch'] as String
    ..subscribersCount = json['subscribers_count'] as int
    ..networkCount = json['network_count'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..pushedAt = json['pushed_at'] == null
        ? null
        : DateTime.parse(json['pushed_at'] as String)
    ..permissions = json['permissions'] == null
        ? null
        : TeamRepositoryPermissions.fromJson(
            json['permissions'] as Map<String, dynamic>);
}

TeamRepositoryPermissions _$TeamRepositoryPermissionsFromJson(
    Map<String, dynamic> json) {
  return TeamRepositoryPermissions(
      json['admin'] as bool, json['push'] as bool, json['pull'] as bool);
}

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) {
  return GitHubComparison(
      json['url'] as String,
      json['status'] as String,
      json['ahead_by'] as int,
      json['behind_by'] as int,
      json['total_commits'] as int);
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository()
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
    ..defaultBranch = json['defaultBranch'] as String
    ..subscribersCount = json['subscribers_count'] as int
    ..networkCount = json['network_count'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..pushedAt = json['pushed_at'] == null
        ? null
        : DateTime.parse(json['pushed_at'] as String);
}

CloneUrls _$CloneUrlsFromJson(Map<String, dynamic> json) {
  return CloneUrls(json['git'] as String, json['ssh'] as String,
      json['https'] as String, json['svn'] as String);
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
      json['name'] as String,
      json['commit'] == null
          ? null
          : CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
      json['zipball_url'] as String,
      json['tarball_url'] as String);
}

CommitData _$CommitDataFromJson(Map<String, dynamic> json) {
  return CommitData(
      json['sha'] as String,
      json['commit'] == null ? null : GitCommit.fromJson(json['commit']),
      json['url'] as String,
      json['html_url'] as String,
      json['comments_url'] as String,
      json['author'] == null
          ? null
          : CommitDataUser.fromJson(json['author'] as Map<String, dynamic>),
      json['committer'] == null
          ? null
          : CommitDataUser.fromJson(json['committer'] as Map<String, dynamic>),
      (json['parents'] as List)
          ?.map((e) => e as Map<String, dynamic>)
          ?.toList());
}

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) {
  return CommitDataUser(
      json['login'] as String, json['id'] as int, json['type'] as String);
}

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) {
  return CommitInfo(
      json['sha'] as String,
      json['tree'] == null
          ? null
          : GitTree.fromJson(json['tree'] as Map<String, dynamic>));
}

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) {
  return UserInformation(json['login'] as String, json['id'] as int,
      json['avatar_url'] as String, json['html_url'] as String);
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return Branch(
      json['name'] as String,
      json['commit'] == null
          ? null
          : CommitData.fromJson(json['commit'] as Map<String, dynamic>));
}

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) {
  return LicenseDetails(
      name: json['name'] as String,
      path: json['path'] as String,
      sha: json['sha'] as String,
      size: json['size'] as int,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      htmlUrl: json['html_url'] == null
          ? null
          : Uri.parse(json['html_url'] as String),
      gitUrl:
          json['git_url'] == null ? null : Uri.parse(json['git_url'] as String),
      downloadUrl: json['download_url'] == null
          ? null
          : Uri.parse(json['download_url'] as String),
      type: json['type'] as String,
      content: json['content'] as String,
      encoding: json['encoding'] as String,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : LicenseKind.fromJson(json['license'] as Map<String, dynamic>));
}

Map<String, dynamic> _$LicenseDetailsToJson(LicenseDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'sha': instance.sha,
      'size': instance.size,
      'url': instance.url?.toString(),
      'html_url': instance.htmlUrl?.toString(),
      'git_url': instance.gitUrl?.toString(),
      'download_url': instance.downloadUrl?.toString(),
      'type': instance.type,
      'content': instance.content,
      'encoding': instance.encoding,
      '_links': instance.links,
      'license': instance.license
    };

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) {
  return LicenseKind(
      key: json['key'] as String,
      name: json['name'] as String,
      spdxId: json['spdx_id'] as String,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      nodeId: json['node_id'] as String);
}

Map<String, dynamic> _$LicenseKindToJson(LicenseKind instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url?.toString(),
      'node_id': instance.nodeId
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
      git: json['git'] == null ? null : Uri.parse(json['git'] as String),
      self: json['self'] == null ? null : Uri.parse(json['self'] as String),
      html: json['html'] == null ? null : Uri.parse(json['html'] as String));
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self?.toString(),
      'git': instance.git?.toString(),
      'html': instance.html?.toString()
    };
