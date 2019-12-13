// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) {
  return GitHubComparison(
    json['url'] as String,
    json['status'] as String,
    json['ahead_by'] as int,
    json['behind_by'] as int,
    json['total_commits'] as int,
  );
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
    name: json['name'] as String,
    id: json['id'] as int,
    fullName: json['full_name'] as String,
    owner: json['owner'] == null
        ? null
        : UserInformation.fromJson(json['owner'] as Map<String, dynamic>),
    isPrivate: json['private'] as bool,
    isFork: json['fork'] as bool,
    htmlUrl: json['html_url'] as String,
    description: json['description'] as String,
    cloneUrls: json['clone_urls'] == null
        ? null
        : CloneUrls.fromJson(json['clone_urls'] as Map<String, dynamic>),
    homepage: json['homepage'] as String,
    size: json['size'] as int,
    stargazersCount: json['stargazers_count'] as int,
    watchersCount: json['watchers_count'] as int,
    language: json['language'] as String,
    hasIssues: json['has_issues'] as bool,
    hasWiki: json['has_wiki'] as bool,
    hasDownloads: json['has_downloads'] as bool,
    forksCount: json['forks_count'] as int,
    openIssuesCount: json['open_issues_count'] as int,
    defaultBranch: json['default_branch'] as String,
    subscribersCount: json['subscribers_count'] as int,
    networkCount: json['network_count'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    pushedAt: json['pushed_at'] == null
        ? null
        : DateTime.parse(json['pushed_at'] as String),
    license: json['license'] == null
        ? null
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>),
    archived: json['archived'] as bool,
    disabled: json['disabled'] as bool,
  );
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'private': instance.isPrivate,
      'fork': instance.isFork,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'clone_urls': instance.cloneUrls,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'has_issues': instance.hasIssues,
      'has_wiki': instance.hasWiki,
      'has_downloads': instance.hasDownloads,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'default_branch': instance.defaultBranch,
      'subscribers_count': instance.subscribersCount,
      'network_count': instance.networkCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'pushed_at': instance.pushedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'license': instance.license,
      'archived': instance.archived,
      'disabled': instance.disabled,
    };

CloneUrls _$CloneUrlsFromJson(Map<String, dynamic> json) {
  return CloneUrls(
    json['git'] as String,
    json['ssh'] as String,
    json['https'] as String,
    json['svn'] as String,
  );
}

Map<String, dynamic> _$CloneUrlsToJson(CloneUrls instance) => <String, dynamic>{
      'git': instance.git,
      'ssh': instance.ssh,
      'https': instance.https,
      'svn': instance.svn,
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    json['name'] as String,
    json['commit'] == null
        ? null
        : CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
    json['zipball_url'] as String,
    json['tarball_url'] as String,
  );
}

CommitData _$CommitDataFromJson(Map<String, dynamic> json) {
  return CommitData(
    json['sha'] as String,
    json['commit'] == null
        ? null
        : GitCommit.fromJson(json['commit'] as Map<String, dynamic>),
    json['url'] as String,
    json['html_url'] as String,
    json['comments_url'] as String,
    json['author'] == null
        ? null
        : CommitDataUser.fromJson(json['author'] as Map<String, dynamic>),
    json['committer'] == null
        ? null
        : CommitDataUser.fromJson(json['committer'] as Map<String, dynamic>),
    (json['parents'] as List)?.map((e) => e as Map<String, dynamic>)?.toList(),
  );
}

Map<String, dynamic> _$CommitDataToJson(CommitData instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'commit': instance.commit,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'comments_url': instance.commentsUrl,
      'author': instance.author,
      'committer': instance.committer,
      'parents': instance.parents,
    };

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) {
  return CommitDataUser(
    json['login'] as String,
    json['id'] as int,
    json['type'] as String,
  );
}

Map<String, dynamic> _$CommitDataUserToJson(CommitDataUser instance) =>
    <String, dynamic>{
      'login': instance.login,
      'type': instance.type,
      'id': instance.id,
    };

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) {
  return CommitInfo(
    json['sha'] as String,
    json['tree'] == null
        ? null
        : GitTree.fromJson(json['tree'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitInfoToJson(CommitInfo instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'tree': instance.tree,
    };

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) {
  return UserInformation(
    json['login'] as String,
    json['id'] as int,
    json['avatar_url'] as String,
    json['html_url'] as String,
  );
}

Map<String, dynamic> _$UserInformationToJson(UserInformation instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };

RepositorySlug _$RepositorySlugFromJson(Map<String, dynamic> json) {
  return RepositorySlug(
    json['owner'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$RepositorySlugToJson(RepositorySlug instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'name': instance.name,
    };

CreateRepository _$CreateRepositoryFromJson(Map<String, dynamic> json) {
  return CreateRepository(
    json['name'] as String,
    description: json['description'] as String,
    homepage: json['homepage'] as String,
    private: json['private'] as bool,
    hasIssues: json['has_issues'] as bool,
    hasDownloads: json['has_downloads'] as bool,
    teamId: json['team_id'] as int,
    autoInit: json['auto_init'] as bool,
    gitignoreTemplate: json['gitignore_template'] as String,
    licenseTemplate: json['license_template'] as String,
    hasWiki: json['has_wiki'] as bool,
  );
}

Map<String, dynamic> _$CreateRepositoryToJson(CreateRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'homepage': instance.homepage,
      'private': instance.private,
      'has_issues': instance.hasIssues,
      'has_wiki': instance.hasWiki,
      'has_downloads': instance.hasDownloads,
      'team_id': instance.teamId,
      'auto_init': instance.autoInit,
      'gitignore_template': instance.gitignoreTemplate,
      'license_template': instance.licenseTemplate,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return Branch(
    json['name'] as String,
    json['commit'] == null
        ? null
        : CommitData.fromJson(json['commit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'name': instance.name,
      'commit': instance.commit,
    };

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) {
  return LicenseDetails(
    name: json['name'] as String,
    path: json['path'] as String,
    sha: json['sha'] as String,
    size: json['size'] as int,
    url: json['url'] == null ? null : Uri.parse(json['url'] as String),
    htmlUrl:
        json['html_url'] == null ? null : Uri.parse(json['html_url'] as String),
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
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>),
  );
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
      'license': instance.license,
    };

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) {
  return LicenseKind(
    key: json['key'] as String,
    name: json['name'] as String,
    spdxId: json['spdx_id'] as String,
    url: json['url'] == null ? null : Uri.parse(json['url'] as String),
    nodeId: json['node_id'] as String,
  );
}

Map<String, dynamic> _$LicenseKindToJson(LicenseKind instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url?.toString(),
      'node_id': instance.nodeId,
    };
