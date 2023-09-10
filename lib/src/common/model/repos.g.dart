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
      (json['commits'] as List<dynamic>?)
          ?.map((e) => RepositoryCommit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GitHubComparisonToJson(GitHubComparison instance) =>
    <String, dynamic>{
      'url': instance.url,
      'status': instance.status,
      'ahead_by': instance.aheadBy,
      'behind_by': instance.behindBy,
      'total_commits': instance.totalCommits,
      'files': instance.files,
      'commits': instance.commits,
    };

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
      createdAt: Repository.dynamicToDateTime(json['created_at']),
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
      pushedAt: Repository.dynamicToDateTime(json['pushed_at']),
      license: json['license'] == null
          ? null
          : LicenseKind.fromJson(json['license'] as Map<String, dynamic>),
      hasPages: json['has_pages'] as bool? ?? false,
      permissions: json['permissions'] == null
          ? null
          : RepositoryPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      allowAutoMerge: json['allow_auto_merge'] as bool?,
      allowForking: json['allow_forking'] as bool?,
      allowMergeCommit: json['allow_merge_commit'] as bool?,
      allowRebaseMerge: json['allow_rebase_merge'] as bool?,
      allowSquashMerge: json['allow_squash_merge'] as bool?,
      allowUpdateBranch: json['allow_update_branch'] as bool?,
      anonymousAccessEnabled: json['anonymous_access_enabled'] as bool?,
      archiveUrl: json['archive_url'] as String?,
      assigneesUrl: json['assignees_url'] as String?,
      blobsUrl: json['blobs_url'] as String?,
      branchesUrl: json['branches_url'] as String?,
      collaboratorsUrl: json['collaborators_url'] as String?,
      commentsUrl: json['comments_url'] as String?,
      commitsUrl: json['commits_url'] as String?,
      compareUrl: json['compare_url'] as String?,
      contentsUrl: json['contents_url'] as String?,
      contributorsUrl: json['contributors_url'] as String?,
      deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
      deploymentsUrl: json['deployments_url'] as String?,
      downloadsUrl: json['downloads_url'] as String?,
      eventsUrl: json['events_url'] as String?,
      forks: json['forks'] as int?,
      forksUrl: json['forks_url'] as String?,
      gitCommitsUrl: json['git_commits_url'] as String?,
      gitRefsUrl: json['git_refs_url'] as String?,
      gitTagsUrl: json['git_tags_url'] as String?,
      hasDiscussions: json['has_discussions'] as bool?,
      hasProjects: json['has_projects'] as bool?,
      hooksUrl: json['hooks_url'] as String?,
      isTemplate: json['is_template'] as bool?,
      issueCommentUrl: json['issue_comment_url'] as String?,
      issueEventsUrl: json['issue_events_url'] as String?,
      issuesUrl: json['issues_url'] as String?,
      keysUrl: json['keys_url'] as String?,
      labelsUrl: json['labels_url'] as String?,
      languagesUrl: json['languages_url'] as String?,
      masterBranch: json['master_branch'] as String?,
      mergeCommitMessage: json['merge_commit_message'] as String?,
      mergeCommitTitle: json['merge_commit_title'] as String?,
      mergesUrl: json['merges_url'] as String?,
      milestonesUrl: json['milestones_url'] as String?,
      mirrorUrl: json['mirror_url'] as String?,
      nodeId: json['node_id'] as String?,
      notificationsUrl: json['notifications_url'] as String?,
      openIssues: json['open_issues'] as int?,
      organization: json['organization'] == null
          ? null
          : User.fromJson(json['organization'] as Map<String, dynamic>),
      pullsUrl: json['pulls_url'] as String?,
      releasesUrl: json['releases_url'] as String?,
      squashMergeCommitMessage: json['squash_merge_commit_message'] as String?,
      squashMergeCommitTitle: json['squash_merge_commit_title'] as String?,
      stargazersUrl: json['stargazers_url'] as String?,
      starredAt: json['starred_at'] == null
          ? null
          : DateTime.parse(json['starred_at'] as String),
      statusesUrl: json['statuses_url'] as String?,
      subscribersUrl: json['subscribers_url'] as String?,
      subscriptionUrl: json['subscription_url'] as String?,
      tagsUrl: json['tags_url'] as String?,
      teamsUrl: json['teams_url'] as String?,
      tempCloneToken: json['temp_clone_token'] as String?,
      templateRepository: json['template_repository'] == null
          ? null
          : TemplateRepository.fromJson(
              json['template_repository'] as Map<String, dynamic>),
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      treesUrl: json['trees_url'] as String?,
      url: json['url'] as String?,
      visibility: json['visibility'] as String?,
      watchers: json['watchers'] as int?,
      webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
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
      'allow_auto_merge': instance.allowAutoMerge,
      'allow_forking': instance.allowForking,
      'allow_merge_commit': instance.allowMergeCommit,
      'allow_rebase_merge': instance.allowRebaseMerge,
      'allow_squash_merge': instance.allowSquashMerge,
      'allow_update_branch': instance.allowUpdateBranch,
      'anonymous_access_enabled': instance.anonymousAccessEnabled,
      'archive_url': instance.archiveUrl,
      'assignees_url': instance.assigneesUrl,
      'blobs_url': instance.blobsUrl,
      'branches_url': instance.branchesUrl,
      'collaborators_url': instance.collaboratorsUrl,
      'comments_url': instance.commentsUrl,
      'commits_url': instance.commitsUrl,
      'compare_url': instance.compareUrl,
      'contents_url': instance.contentsUrl,
      'contributors_url': instance.contributorsUrl,
      'delete_branch_on_merge': instance.deleteBranchOnMerge,
      'deployments_url': instance.deploymentsUrl,
      'downloads_url': instance.downloadsUrl,
      'events_url': instance.eventsUrl,
      'forks': instance.forks,
      'forks_url': instance.forksUrl,
      'git_commits_url': instance.gitCommitsUrl,
      'git_refs_url': instance.gitRefsUrl,
      'git_tags_url': instance.gitTagsUrl,
      'has_discussions': instance.hasDiscussions,
      'has_projects': instance.hasProjects,
      'hooks_url': instance.hooksUrl,
      'is_template': instance.isTemplate,
      'issue_comment_url': instance.issueCommentUrl,
      'issue_events_url': instance.issueEventsUrl,
      'issues_url': instance.issuesUrl,
      'keys_url': instance.keysUrl,
      'labels_url': instance.labelsUrl,
      'languages_url': instance.languagesUrl,
      'master_branch': instance.masterBranch,
      'merge_commit_message': instance.mergeCommitMessage,
      'merge_commit_title': instance.mergeCommitTitle,
      'merges_url': instance.mergesUrl,
      'milestones_url': instance.milestonesUrl,
      'mirror_url': instance.mirrorUrl,
      'node_id': instance.nodeId,
      'notifications_url': instance.notificationsUrl,
      'open_issues': instance.openIssues,
      'organization': instance.organization,
      'pulls_url': instance.pullsUrl,
      'releases_url': instance.releasesUrl,
      'squash_merge_commit_message': instance.squashMergeCommitMessage,
      'squash_merge_commit_title': instance.squashMergeCommitTitle,
      'stargazers_url': instance.stargazersUrl,
      'starred_at': instance.starredAt?.toIso8601String(),
      'statuses_url': instance.statusesUrl,
      'subscribers_url': instance.subscribersUrl,
      'subscription_url': instance.subscriptionUrl,
      'tags_url': instance.tagsUrl,
      'teams_url': instance.teamsUrl,
      'temp_clone_token': instance.tempCloneToken,
      'template_repository': instance.templateRepository,
      'topics': instance.topics,
      'trees_url': instance.treesUrl,
      'url': instance.url,
      'visibility': instance.visibility,
      'watchers': instance.watchers,
      'web_commit_signoff_required': instance.webCommitSignoffRequired,
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

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'name': instance.name,
      'commit': instance.commit,
      'zipball_url': instance.zipUrl,
      'tarball_url': instance.tarUrl,
    };

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
