// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) {
  return GitHubComparison(
    json['url'] as String?,
    json['status'] as String?,
    json['aheadBy'] as int?,
    json['behindBy'] as int?,
    json['totalCommits'] as int?,
  );
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
    name: json['name'] as String? ?? '',
    id: json['id'] as int? ?? 0,
    fullName: json['fullName'] as String? ?? '',
    owner: json['owner'] == null
        ? null
        : UserInformation.fromJson(json['owner'] as Map<String, dynamic>),
    htmlUrl: json['htmlUrl'] as String? ?? '',
    description: json['description'] as String? ?? '',
    cloneUrl: json['cloneUrl'] as String? ?? '',
    gitUrl: json['gitUrl'] as String? ?? '',
    sshUrl: json['sshUrl'] as String? ?? '',
    svnUrl: json['svnUrl'] as String? ?? '',
    defaultBranch: json['defaultBranch'] as String? ?? '',
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    isPrivate: json['private'] as bool? ?? false,
    isFork: json['fork'] as bool? ?? false,
    stargazersCount: json['stargazersCount'] as int? ?? 0,
    watchersCount: json['watchersCount'] as int? ?? 0,
    language: json['language'] as String? ?? '',
    hasWiki: json['hasWiki'] as bool? ?? false,
    hasDownloads: json['hasDownloads'] as bool? ?? false,
    forksCount: json['forksCount'] as int? ?? 0,
    openIssuesCount: json['openIssuesCount'] as int? ?? 0,
    subscribersCount: json['subscribersCount'] as int? ?? 0,
    networkCount: json['networkCount'] as int? ?? 0,
    hasIssues: json['hasIssues'] as bool? ?? false,
    size: json['size'] as int? ?? 0,
    archived: json['archived'] as bool? ?? false,
    disabled: json['disabled'] as bool? ?? false,
    homepage: json['homepage'] as String? ?? '',
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    pushedAt: json['pushedAt'] == null
        ? null
        : DateTime.parse(json['pushedAt'] as String),
    license: json['license'] == null
        ? null
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>),
    hasPages: json['hasPages'] as bool? ?? false,
  );
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'fullName': instance.fullName,
      'owner': instance.owner,
      'private': instance.isPrivate,
      'fork': instance.isFork,
      'htmlUrl': instance.htmlUrl,
      'description': instance.description,
      'cloneUrl': instance.cloneUrl,
      'sshUrl': instance.sshUrl,
      'svnUrl': instance.svnUrl,
      'gitUrl': instance.gitUrl,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazersCount': instance.stargazersCount,
      'watchersCount': instance.watchersCount,
      'language': instance.language,
      'hasIssues': instance.hasIssues,
      'hasWiki': instance.hasWiki,
      'hasDownloads': instance.hasDownloads,
      'hasPages': instance.hasPages,
      'forksCount': instance.forksCount,
      'openIssuesCount': instance.openIssuesCount,
      'defaultBranch': instance.defaultBranch,
      'subscribersCount': instance.subscribersCount,
      'networkCount': instance.networkCount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'pushedAt': instance.pushedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'license': instance.license,
      'archived': instance.archived,
      'disabled': instance.disabled,
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    json['name'] as String,
    CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
    json['zipball_url'] as String,
    json['tarball_url'] as String,
  );
}

CommitData _$CommitDataFromJson(Map<String, dynamic> json) {
  return CommitData(
    json['sha'] as String?,
    json['commit'] == null
        ? null
        : GitCommit.fromJson(json['commit'] as Map<String, dynamic>),
    json['url'] as String?,
    json['htmlUrl'] as String?,
    json['commentsUrl'] as String?,
    json['author'] == null
        ? null
        : CommitDataUser.fromJson(json['author'] as Map<String, dynamic>),
    json['committer'] == null
        ? null
        : CommitDataUser.fromJson(json['committer'] as Map<String, dynamic>),
    (json['parents'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$CommitDataToJson(CommitData instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'commit': instance.commit,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'commentsUrl': instance.commentsUrl,
      'author': instance.author,
      'committer': instance.committer,
      'parents': instance.parents,
    };

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) {
  return CommitDataUser(
    json['login'] as String?,
    json['id'] as int?,
    json['type'] as String?,
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
    json['sha'] as String?,
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
    json['avatarUrl'] as String,
    json['htmlUrl'] as String,
  );
}

Map<String, dynamic> _$UserInformationToJson(UserInformation instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
      'htmlUrl': instance.htmlUrl,
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
    json['name'] as String?,
    description: json['description'] as String?,
    homepage: json['homepage'] as String?,
    private: json['private'] as bool?,
    hasIssues: json['hasIssues'] as bool?,
    hasDownloads: json['hasDownloads'] as bool?,
    teamId: json['teamId'] as int?,
    autoInit: json['autoInit'] as bool?,
    gitignoreTemplate: json['gitignoreTemplate'] as String?,
    licenseTemplate: json['licenseTemplate'] as String?,
    hasWiki: json['hasWiki'] as bool?,
  );
}

Map<String, dynamic> _$CreateRepositoryToJson(CreateRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'homepage': instance.homepage,
      'private': instance.private,
      'hasIssues': instance.hasIssues,
      'hasWiki': instance.hasWiki,
      'hasDownloads': instance.hasDownloads,
      'teamId': instance.teamId,
      'autoInit': instance.autoInit,
      'gitignoreTemplate': instance.gitignoreTemplate,
      'licenseTemplate': instance.licenseTemplate,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return Branch(
    json['name'] as String?,
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
    name: json['name'] as String?,
    path: json['path'] as String?,
    sha: json['sha'] as String?,
    size: json['size'] as int?,
    url: json['url'] == null ? null : Uri.parse(json['url'] as String),
    htmlUrl:
        json['htmlUrl'] == null ? null : Uri.parse(json['htmlUrl'] as String),
    gitUrl: json['gitUrl'] == null ? null : Uri.parse(json['gitUrl'] as String),
    downloadUrl: json['downloadUrl'] == null
        ? null
        : Uri.parse(json['downloadUrl'] as String),
    type: json['type'] as String?,
    content: json['content'] as String?,
    encoding: json['encoding'] as String?,
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
      'htmlUrl': instance.htmlUrl?.toString(),
      'gitUrl': instance.gitUrl?.toString(),
      'downloadUrl': instance.downloadUrl?.toString(),
      'type': instance.type,
      'content': instance.content,
      'encoding': instance.encoding,
      '_links': instance.links,
      'license': instance.license,
    };

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) {
  return LicenseKind(
    key: json['key'] as String?,
    name: json['name'] as String?,
    spdxId: json['spdxId'] as String?,
    url: json['url'] == null ? null : Uri.parse(json['url'] as String),
    nodeId: json['nodeId'] as String?,
  );
}

Map<String, dynamic> _$LicenseKindToJson(LicenseKind instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdxId': instance.spdxId,
      'url': instance.url?.toString(),
      'nodeId': instance.nodeId,
    };
