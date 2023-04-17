// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubApp _$GitHubAppFromJson(Map<String, dynamic> json) => GitHubApp(
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      events:
          (json['events'] as List<dynamic>?)?.map((e) => e as String).toList(),
      externalUrl: json['external_url'] as String?,
      htmlUrl: json['html_url'] as String?,
      id: json['id'] as int?,
      installationsCount: json['installations_count'] as int?,
      name: json['name'] as String?,
      nodeId: json['node_id'] as String?,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      pem: json['pem'] as String?,
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      webhookSecret: json['webhook_secret'] as String?,
    );

Map<String, dynamic> _$GitHubAppToJson(GitHubApp instance) => <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'created_at': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'events': instance.events,
      'external_url': instance.externalUrl,
      'html_url': instance.htmlUrl,
      'id': instance.id,
      'installations_count': instance.installationsCount,
      'name': instance.name,
      'node_id': instance.nodeId,
      'owner': instance.owner,
      'pem': instance.pem,
      'permissions': instance.permissions,
      'slug': instance.slug,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'webhook_secret': instance.webhookSecret,
    };

Rename _$RenameFromJson(Map<String, dynamic> json) => Rename(
      from: json['from'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$RenameToJson(Rename instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };

DismissedReview _$DismissedReviewFromJson(Map<String, dynamic> json) =>
    DismissedReview(
      dismissalCommitId: json['dismissal_commit_id'] as String?,
      dismissalMessage: json['dismissal_message'] as String?,
      reviewId: json['review_id'] as int?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$DismissedReviewToJson(DismissedReview instance) =>
    <String, dynamic>{
      'dismissal_commit_id': instance.dismissalCommitId,
      'dismissal_message': instance.dismissalMessage,
      'review_id': instance.reviewId,
      'state': instance.state,
    };

ProjectCard _$ProjectCardFromJson(Map<String, dynamic> json) => ProjectCard(
      columnName: json['column_name'] as String?,
      id: json['id'] as int?,
      previousColumnName: json['previous_column_name'] as String?,
      projectId: json['project_id'] as int?,
      projectUrl: json['project_url'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ProjectCardToJson(ProjectCard instance) =>
    <String, dynamic>{
      'column_name': instance.columnName,
      'id': instance.id,
      'previous_column_name': instance.previousColumnName,
      'project_id': instance.projectId,
      'project_url': instance.projectUrl,
      'url': instance.url,
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      issue: json['issue'] == null
          ? null
          : Issue.fromJson(json['issue'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'issue': instance.issue,
      'type': instance.type,
    };

License _$LicenseFromJson(Map<String, dynamic> json) => License(
      htmlUrl: json['html_url'] as String?,
      key: json['key'] as String?,
      name: json['name'] as String?,
      nodeId: json['node_id'] as String?,
      spdxId: json['spdx_id'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LicenseToJson(License instance) => <String, dynamic>{
      'html_url': instance.htmlUrl,
      'key': instance.key,
      'name': instance.name,
      'node_id': instance.nodeId,
      'spdx_id': instance.spdxId,
      'url': instance.url,
    };

TemplateRepository _$TemplateRepositoryFromJson(Map<String, dynamic> json) =>
    TemplateRepository(
      allowAutoMerge: json['allow_auto_merge'] as bool?,
      allowMergeCommit: json['allow_merge_commit'] as bool?,
      allowRebaseMerge: json['allow_rebase_merge'] as bool?,
      allowSquashMerge: json['allow_squash_merge'] as bool?,
      allowUpdateBranch: json['allow_update_branch'] as bool?,
      archiveUrl: json['archive_url'] as String?,
      archived: json['archived'] as bool?,
      assigneesUrl: json['assignees_url'] as String?,
      blobsUrl: json['blobs_url'] as String?,
      branchesUrl: json['branches_url'] as String?,
      cloneUrl: json['clone_url'] as String?,
      collaboratorsUrl: json['collaborators_url'] as String?,
      commentsUrl: json['comments_url'] as String?,
      commitsUrl: json['commits_url'] as String?,
      compareUrl: json['compare_url'] as String?,
      contentsUrl: json['contents_url'] as String?,
      contributorsUrl: json['contributors_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      defaultBranch: json['default_branch'] as String?,
      deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
      deploymentsUrl: json['deployments_url'] as String?,
      description: json['description'] as String?,
      disabled: json['disabled'] as bool?,
      downloadsUrl: json['downloads_url'] as String?,
      eventsUrl: json['events_url'] as String?,
      fork: json['fork'] as bool?,
      forksCount: json['forks_count'] as int?,
      forksUrl: json['forks_url'] as String?,
      fullName: json['full_name'] as String?,
      gitCommitsUrl: json['git_commits_url'] as String?,
      gitRefsUrl: json['git_refs_url'] as String?,
      gitTagsUrl: json['git_tags_url'] as String?,
      gitUrl: json['git_url'] as String?,
      hasDownloads: json['has_downloads'] as bool?,
      hasIssues: json['has_issues'] as bool?,
      hasPages: json['has_pages'] as bool?,
      hasProjects: json['has_projects'] as bool?,
      hasWiki: json['has_wiki'] as bool?,
      homepage: json['homepage'] as String?,
      hooksUrl: json['hooks_url'] as String?,
      htmlUrl: json['html_url'] as String?,
      id: json['id'] as int?,
      isTemplate: json['is_template'] as bool?,
      issueCommentUrl: json['issue_comment_url'] as String?,
      issueEventsUrl: json['issue_events_url'] as String?,
      issuesUrl: json['issues_url'] as String?,
      keysUrl: json['keys_url'] as String?,
      labelsUrl: json['labels_url'] as String?,
      language: json['language'] as String?,
      languagesUrl: json['languages_url'] as String?,
      mergeCommitMessage: json['merge_commit_message'] as String?,
      mergeCommitTitle: json['merge_commit_title'] as String?,
      mergesUrl: json['merges_url'] as String?,
      milestonesUrl: json['milestones_url'] as String?,
      mirrorUrl: json['mirror_url'] as String?,
      name: json['name'] as String?,
      networkCount: json['network_count'] as int?,
      nodeId: json['node_id'] as String?,
      notificationsUrl: json['notifications_url'] as String?,
      openIssuesCount: json['open_issues_count'] as int?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      private: json['private'] as bool?,
      pullsUrl: json['pulls_url'] as String?,
      pushedAt: json['pushed_at'] == null
          ? null
          : DateTime.parse(json['pushed_at'] as String),
      releasesUrl: json['releases_url'] as String?,
      size: json['size'] as int?,
      squashMergeCommitMessage: json['squash_merge_commit_message'] as String?,
      squashMergeCommitTitle: json['squash_merge_commit_title'] as String?,
      sshUrl: json['ssh_url'] as String?,
      stargazersCount: json['stargazers_count'] as int?,
      stargazersUrl: json['stargazers_url'] as String?,
      statusesUrl: json['statuses_url'] as String?,
      subscribersCount: json['subscribers_count'] as int?,
      subscribersUrl: json['subscribers_url'] as String?,
      subscriptionUrl: json['subscription_url'] as String?,
      svnUrl: json['svn_url'] as String?,
      tagsUrl: json['tags_url'] as String?,
      teamsUrl: json['teams_url'] as String?,
      tempCloneToken: json['temp_clone_token'] as String?,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      treesUrl: json['trees_url'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
      visibility: json['visibility'] as String?,
      watchersCount: json['watchers_count'] as int?,
    );

Map<String, dynamic> _$TemplateRepositoryToJson(TemplateRepository instance) =>
    <String, dynamic>{
      'allow_auto_merge': instance.allowAutoMerge,
      'allow_merge_commit': instance.allowMergeCommit,
      'allow_rebase_merge': instance.allowRebaseMerge,
      'allow_squash_merge': instance.allowSquashMerge,
      'allow_update_branch': instance.allowUpdateBranch,
      'archive_url': instance.archiveUrl,
      'archived': instance.archived,
      'assignees_url': instance.assigneesUrl,
      'blobs_url': instance.blobsUrl,
      'branches_url': instance.branchesUrl,
      'clone_url': instance.cloneUrl,
      'collaborators_url': instance.collaboratorsUrl,
      'comments_url': instance.commentsUrl,
      'commits_url': instance.commitsUrl,
      'compare_url': instance.compareUrl,
      'contents_url': instance.contentsUrl,
      'contributors_url': instance.contributorsUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'default_branch': instance.defaultBranch,
      'delete_branch_on_merge': instance.deleteBranchOnMerge,
      'deployments_url': instance.deploymentsUrl,
      'description': instance.description,
      'disabled': instance.disabled,
      'downloads_url': instance.downloadsUrl,
      'events_url': instance.eventsUrl,
      'fork': instance.fork,
      'forks_count': instance.forksCount,
      'forks_url': instance.forksUrl,
      'full_name': instance.fullName,
      'git_commits_url': instance.gitCommitsUrl,
      'git_refs_url': instance.gitRefsUrl,
      'git_tags_url': instance.gitTagsUrl,
      'git_url': instance.gitUrl,
      'has_downloads': instance.hasDownloads,
      'has_issues': instance.hasIssues,
      'has_pages': instance.hasPages,
      'has_projects': instance.hasProjects,
      'has_wiki': instance.hasWiki,
      'homepage': instance.homepage,
      'hooks_url': instance.hooksUrl,
      'html_url': instance.htmlUrl,
      'id': instance.id,
      'is_template': instance.isTemplate,
      'issue_comment_url': instance.issueCommentUrl,
      'issue_events_url': instance.issueEventsUrl,
      'issues_url': instance.issuesUrl,
      'keys_url': instance.keysUrl,
      'labels_url': instance.labelsUrl,
      'language': instance.language,
      'languages_url': instance.languagesUrl,
      'merge_commit_message': instance.mergeCommitMessage,
      'merge_commit_title': instance.mergeCommitTitle,
      'merges_url': instance.mergesUrl,
      'milestones_url': instance.milestonesUrl,
      'mirror_url': instance.mirrorUrl,
      'name': instance.name,
      'network_count': instance.networkCount,
      'node_id': instance.nodeId,
      'notifications_url': instance.notificationsUrl,
      'open_issues_count': instance.openIssuesCount,
      'owner': instance.owner,
      'permissions': instance.permissions,
      'private': instance.private,
      'pulls_url': instance.pullsUrl,
      'pushed_at': instance.pushedAt?.toIso8601String(),
      'releases_url': instance.releasesUrl,
      'size': instance.size,
      'squash_merge_commit_message': instance.squashMergeCommitMessage,
      'squash_merge_commit_title': instance.squashMergeCommitTitle,
      'ssh_url': instance.sshUrl,
      'stargazers_count': instance.stargazersCount,
      'stargazers_url': instance.stargazersUrl,
      'statuses_url': instance.statusesUrl,
      'subscribers_count': instance.subscribersCount,
      'subscribers_url': instance.subscribersUrl,
      'subscription_url': instance.subscriptionUrl,
      'svn_url': instance.svnUrl,
      'tags_url': instance.tagsUrl,
      'teams_url': instance.teamsUrl,
      'temp_clone_token': instance.tempCloneToken,
      'topics': instance.topics,
      'trees_url': instance.treesUrl,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      'visibility': instance.visibility,
      'watchers_count': instance.watchersCount,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      avatarUrl: json['avatar_url'] as String?,
      eventsUrl: json['events_url'] as String?,
      followersUrl: json['followers_url'] as String?,
      followingUrl: json['following_url'] as String?,
      gistsUrl: json['gists_url'] as String?,
      gravatarId: json['gravatar_id'] as String?,
      htmlUrl: json['html_url'] as String?,
      id: json['id'] as int?,
      login: json['login'] as String?,
      nodeId: json['node_id'] as String?,
      organizationsUrl: json['organizations_url'] as String?,
      receivedEventsUrl: json['received_events_url'] as String?,
      reposUrl: json['repos_url'] as String?,
      siteAdmin: json['site_admin'] as bool?,
      starredUrl: json['starred_url'] as String?,
      subscriptionsUrl: json['subscriptions_url'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'events_url': instance.eventsUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'gravatar_id': instance.gravatarId,
      'html_url': instance.htmlUrl,
      'id': instance.id,
      'login': instance.login,
      'node_id': instance.nodeId,
      'organizations_url': instance.organizationsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'repos_url': instance.reposUrl,
      'site_admin': instance.siteAdmin,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'type': instance.type,
      'url': instance.url,
    };

Tree _$TreeFromJson(Map<String, dynamic> json) => Tree(
      sha: json['sha'] as String?,
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
    );

Map<String, dynamic> _$TreeToJson(Tree instance) => <String, dynamic>{
      'sha': instance.sha,
      'url': instance.url,
      'html_url': instance.htmlUrl,
    };

Verification _$VerificationFromJson(Map<String, dynamic> json) => Verification(
      payload: json['payload'] as String?,
      reason: json['reason'] as String?,
      signature: json['signature'] as String?,
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$VerificationToJson(Verification instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'reason': instance.reason,
      'signature': instance.signature,
      'verified': instance.verified,
    };

HtmlLink _$HtmlLinkFromJson(Map<String, dynamic> json) => HtmlLink(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$HtmlLinkToJson(HtmlLink instance) => <String, dynamic>{
      'href': instance.href,
    };

PullRequestLink _$PullRequestLinkFromJson(Map<String, dynamic> json) =>
    PullRequestLink(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$PullRequestLinkToJson(PullRequestLink instance) =>
    <String, dynamic>{
      'href': instance.href,
    };
