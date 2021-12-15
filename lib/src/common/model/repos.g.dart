// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) =>
    GitHubComparison(
      json['url'] as String?,
      json['status'] as String?,
      json['ahead_by'] as int?,
      json['behind_by'] as int?,
      json['total_commits'] as int?,
      (json['files'] as List<dynamic>?)
          ?.map((e) => CommitFile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Repository _$RepositoryFromJson(Map<String, dynamic> json) => Repository(
      name: json['name'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      fullName: json['full_name'] as String? ?? '',
      owner: json['owner'] == null
          ? null
          : UserInformation.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String? ?? '',
      description: json['description'] as String? ?? '',
      cloneUrl: json['clone_url'] as String? ?? '',
      gitUrl: json['git_url'] as String? ?? '',
      sshUrl: json['ssh_url'] as String? ?? '',
      svnUrl: json['svn_url'] as String? ?? '',
      defaultBranch: json['default_branch'] as String? ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      isPrivate: json['private'] as bool? ?? false,
      isFork: json['fork'] as bool? ?? false,
      stargazersCount: json['stargazers_count'] as int? ?? 0,
      watchersCount: json['watchers_count'] as int? ?? 0,
      language: json['language'] as String? ?? '',
      hasWiki: json['has_wiki'] as bool? ?? false,
      hasDownloads: json['has_downloads'] as bool? ?? false,
      forksCount: json['forks_count'] as int? ?? 0,
      openIssuesCount: json['open_issues_count'] as int? ?? 0,
      subscribersCount: json['subscribers_count'] as int? ?? 0,
      networkCount: json['network_count'] as int? ?? 0,
      hasIssues: json['has_issues'] as bool? ?? false,
      size: json['size'] as int? ?? 0,
      archived: json['archived'] as bool? ?? false,
      disabled: json['disabled'] as bool? ?? false,
      homepage: json['homepage'] as String? ?? '',
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      pushedAt: json['pushed_at'] == null
          ? null
          : DateTime.parse(json['pushed_at'] as String),
      license: json['license'] == null
          ? null
          : LicenseKind.fromJson(json['license'] as Map<String, dynamic>),
      hasPages: json['has_pages'] as bool? ?? false,
      permissions: json['permissions'] == null
          ? null
          : RepositoryPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
    );

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
      'clone_url': instance.cloneUrl,
      'ssh_url': instance.sshUrl,
      'svn_url': instance.svnUrl,
      'git_url': instance.gitUrl,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'has_issues': instance.hasIssues,
      'has_wiki': instance.hasWiki,
      'has_downloads': instance.hasDownloads,
      'has_pages': instance.hasPages,
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
      'permissions': instance.permissions,
    };

RepositoryPermissions _$RepositoryPermissionsFromJson(
        Map<String, dynamic> json) =>
    RepositoryPermissions(
      admin: json['admin'] as bool? ?? false,
      push: json['push'] as bool? ?? false,
      pull: json['pull'] as bool? ?? false,
    );

Map<String, dynamic> _$RepositoryPermissionsToJson(
        RepositoryPermissions instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'push': instance.push,
      'pull': instance.pull,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      json['name'] as String,
      CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
      json['zipball_url'] as String,
      json['tarball_url'] as String,
    );

CommitData _$CommitDataFromJson(Map<String, dynamic> json) => CommitData(
      json['sha'] as String?,
      json['commit'] == null
          ? null
          : GitCommit.fromJson(json['commit'] as Map<String, dynamic>),
      json['url'] as String?,
      json['html_url'] as String?,
      json['comments_url'] as String?,
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

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) =>
    CommitDataUser(
      json['login'] as String?,
      json['id'] as int?,
      json['type'] as String?,
    );

Map<String, dynamic> _$CommitDataUserToJson(CommitDataUser instance) =>
    <String, dynamic>{
      'login': instance.login,
      'type': instance.type,
      'id': instance.id,
    };

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) => CommitInfo(
      json['sha'] as String?,
      json['tree'] == null
          ? null
          : GitTree.fromJson(json['tree'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommitInfoToJson(CommitInfo instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'tree': instance.tree,
    };

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) =>
    UserInformation(
      json['login'] as String,
      json['id'] as int,
      json['avatar_url'] as String,
      json['html_url'] as String,
    );

Map<String, dynamic> _$UserInformationToJson(UserInformation instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };

RepositorySlug _$RepositorySlugFromJson(Map<String, dynamic> json) =>
    RepositorySlug(
      json['owner'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$RepositorySlugToJson(RepositorySlug instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'name': instance.name,
    };

CreateRepository _$CreateRepositoryFromJson(Map<String, dynamic> json) =>
    CreateRepository(
      json['name'] as String?,
      description: json['description'] as String?,
      homepage: json['homepage'] as String?,
      private: json['private'] as bool?,
      hasIssues: json['has_issues'] as bool?,
      hasDownloads: json['has_downloads'] as bool?,
      teamId: json['team_id'] as int?,
      autoInit: json['auto_init'] as bool?,
      gitignoreTemplate: json['gitignore_template'] as String?,
      licenseTemplate: json['license_template'] as String?,
      hasWiki: json['has_wiki'] as bool?,
    );

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

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      json['name'] as String?,
      json['commit'] == null
          ? null
          : CommitData.fromJson(json['commit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'name': instance.name,
      'commit': instance.commit,
    };

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) =>
    LicenseDetails(
      name: json['name'] as String?,
      path: json['path'] as String?,
      sha: json['sha'] as String?,
      size: json['size'] as int?,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      htmlUrl: json['html_url'] == null
          ? null
          : Uri.parse(json['html_url'] as String),
      gitUrl:
          json['git_url'] == null ? null : Uri.parse(json['git_url'] as String),
      downloadUrl: json['download_url'] == null
          ? null
          : Uri.parse(json['download_url'] as String),
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

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) => LicenseKind(
      key: json['key'] as String?,
      name: json['name'] as String?,
      spdxId: json['spdx_id'] as String?,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      nodeId: json['node_id'] as String?,
    );

Map<String, dynamic> _$LicenseKindToJson(LicenseKind instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url?.toString(),
      'node_id': instance.nodeId,
    };
