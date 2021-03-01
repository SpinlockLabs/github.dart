// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_head_repo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestHeadRepo> _$pullRequestHeadRepoSerializer =
    new _$PullRequestHeadRepoSerializer();

class _$PullRequestHeadRepoSerializer
    implements StructuredSerializer<PullRequestHeadRepo> {
  @override
  final Iterable<Type> types = const [
    PullRequestHeadRepo,
    _$PullRequestHeadRepo
  ];
  @override
  final String wireName = 'PullRequestHeadRepo';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestHeadRepo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.archiveUrl != null) {
      result
        ..add('archive_url')
        ..add(serializers.serialize(object.archiveUrl,
            specifiedType: const FullType(String)));
    }
    if (object.assigneesUrl != null) {
      result
        ..add('assignees_url')
        ..add(serializers.serialize(object.assigneesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.blobsUrl != null) {
      result
        ..add('blobs_url')
        ..add(serializers.serialize(object.blobsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.branchesUrl != null) {
      result
        ..add('branches_url')
        ..add(serializers.serialize(object.branchesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.collaboratorsUrl != null) {
      result
        ..add('collaborators_url')
        ..add(serializers.serialize(object.collaboratorsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commentsUrl != null) {
      result
        ..add('comments_url')
        ..add(serializers.serialize(object.commentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commitsUrl != null) {
      result
        ..add('commits_url')
        ..add(serializers.serialize(object.commitsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.compareUrl != null) {
      result
        ..add('compare_url')
        ..add(serializers.serialize(object.compareUrl,
            specifiedType: const FullType(String)));
    }
    if (object.contentsUrl != null) {
      result
        ..add('contents_url')
        ..add(serializers.serialize(object.contentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.contributorsUrl != null) {
      result
        ..add('contributors_url')
        ..add(serializers.serialize(object.contributorsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.deploymentsUrl != null) {
      result
        ..add('deployments_url')
        ..add(serializers.serialize(object.deploymentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.downloadsUrl != null) {
      result
        ..add('downloads_url')
        ..add(serializers.serialize(object.downloadsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.eventsUrl != null) {
      result
        ..add('events_url')
        ..add(serializers.serialize(object.eventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.fork != null) {
      result
        ..add('fork')
        ..add(serializers.serialize(object.fork,
            specifiedType: const FullType(bool)));
    }
    if (object.forksUrl != null) {
      result
        ..add('forks_url')
        ..add(serializers.serialize(object.forksUrl,
            specifiedType: const FullType(String)));
    }
    if (object.fullName != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(object.fullName,
            specifiedType: const FullType(String)));
    }
    if (object.gitCommitsUrl != null) {
      result
        ..add('git_commits_url')
        ..add(serializers.serialize(object.gitCommitsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gitRefsUrl != null) {
      result
        ..add('git_refs_url')
        ..add(serializers.serialize(object.gitRefsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gitTagsUrl != null) {
      result
        ..add('git_tags_url')
        ..add(serializers.serialize(object.gitTagsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.hooksUrl != null) {
      result
        ..add('hooks_url')
        ..add(serializers.serialize(object.hooksUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.issueCommentUrl != null) {
      result
        ..add('issue_comment_url')
        ..add(serializers.serialize(object.issueCommentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issueEventsUrl != null) {
      result
        ..add('issue_events_url')
        ..add(serializers.serialize(object.issueEventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issuesUrl != null) {
      result
        ..add('issues_url')
        ..add(serializers.serialize(object.issuesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.keysUrl != null) {
      result
        ..add('keys_url')
        ..add(serializers.serialize(object.keysUrl,
            specifiedType: const FullType(String)));
    }
    if (object.labelsUrl != null) {
      result
        ..add('labels_url')
        ..add(serializers.serialize(object.labelsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.languagesUrl != null) {
      result
        ..add('languages_url')
        ..add(serializers.serialize(object.languagesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.mergesUrl != null) {
      result
        ..add('merges_url')
        ..add(serializers.serialize(object.mergesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.milestonesUrl != null) {
      result
        ..add('milestones_url')
        ..add(serializers.serialize(object.milestonesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.notificationsUrl != null) {
      result
        ..add('notifications_url')
        ..add(serializers.serialize(object.notificationsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(PullRequestHeadRepoOwner)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    if (object.pullsUrl != null) {
      result
        ..add('pulls_url')
        ..add(serializers.serialize(object.pullsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.releasesUrl != null) {
      result
        ..add('releases_url')
        ..add(serializers.serialize(object.releasesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.stargazersUrl != null) {
      result
        ..add('stargazers_url')
        ..add(serializers.serialize(object.stargazersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.statusesUrl != null) {
      result
        ..add('statuses_url')
        ..add(serializers.serialize(object.statusesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.subscribersUrl != null) {
      result
        ..add('subscribers_url')
        ..add(serializers.serialize(object.subscribersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.subscriptionUrl != null) {
      result
        ..add('subscription_url')
        ..add(serializers.serialize(object.subscriptionUrl,
            specifiedType: const FullType(String)));
    }
    if (object.tagsUrl != null) {
      result
        ..add('tags_url')
        ..add(serializers.serialize(object.tagsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.teamsUrl != null) {
      result
        ..add('teams_url')
        ..add(serializers.serialize(object.teamsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.treesUrl != null) {
      result
        ..add('trees_url')
        ..add(serializers.serialize(object.treesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.cloneUrl != null) {
      result
        ..add('clone_url')
        ..add(serializers.serialize(object.cloneUrl,
            specifiedType: const FullType(String)));
    }
    if (object.defaultBranch != null) {
      result
        ..add('default_branch')
        ..add(serializers.serialize(object.defaultBranch,
            specifiedType: const FullType(String)));
    }
    if (object.forks != null) {
      result
        ..add('forks')
        ..add(serializers.serialize(object.forks,
            specifiedType: const FullType(int)));
    }
    if (object.forksCount != null) {
      result
        ..add('forks_count')
        ..add(serializers.serialize(object.forksCount,
            specifiedType: const FullType(int)));
    }
    if (object.gitUrl != null) {
      result
        ..add('git_url')
        ..add(serializers.serialize(object.gitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.hasDownloads != null) {
      result
        ..add('has_downloads')
        ..add(serializers.serialize(object.hasDownloads,
            specifiedType: const FullType(bool)));
    }
    if (object.hasIssues != null) {
      result
        ..add('has_issues')
        ..add(serializers.serialize(object.hasIssues,
            specifiedType: const FullType(bool)));
    }
    if (object.hasProjects != null) {
      result
        ..add('has_projects')
        ..add(serializers.serialize(object.hasProjects,
            specifiedType: const FullType(bool)));
    }
    if (object.hasWiki != null) {
      result
        ..add('has_wiki')
        ..add(serializers.serialize(object.hasWiki,
            specifiedType: const FullType(bool)));
    }
    if (object.hasPages != null) {
      result
        ..add('has_pages')
        ..add(serializers.serialize(object.hasPages,
            specifiedType: const FullType(bool)));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.masterBranch != null) {
      result
        ..add('master_branch')
        ..add(serializers.serialize(object.masterBranch,
            specifiedType: const FullType(String)));
    }
    if (object.archived != null) {
      result
        ..add('archived')
        ..add(serializers.serialize(object.archived,
            specifiedType: const FullType(bool)));
    }
    if (object.disabled != null) {
      result
        ..add('disabled')
        ..add(serializers.serialize(object.disabled,
            specifiedType: const FullType(bool)));
    }
    if (object.mirrorUrl != null) {
      result
        ..add('mirror_url')
        ..add(serializers.serialize(object.mirrorUrl,
            specifiedType: const FullType(String)));
    }
    if (object.openIssues != null) {
      result
        ..add('open_issues')
        ..add(serializers.serialize(object.openIssues,
            specifiedType: const FullType(int)));
    }
    if (object.openIssuesCount != null) {
      result
        ..add('open_issues_count')
        ..add(serializers.serialize(object.openIssuesCount,
            specifiedType: const FullType(int)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(FullRepositoryPermissions)));
    }
    if (object.tempCloneToken != null) {
      result
        ..add('temp_clone_token')
        ..add(serializers.serialize(object.tempCloneToken,
            specifiedType: const FullType(String)));
    }
    if (object.allowMergeCommit != null) {
      result
        ..add('allow_merge_commit')
        ..add(serializers.serialize(object.allowMergeCommit,
            specifiedType: const FullType(bool)));
    }
    if (object.allowSquashMerge != null) {
      result
        ..add('allow_squash_merge')
        ..add(serializers.serialize(object.allowSquashMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.allowRebaseMerge != null) {
      result
        ..add('allow_rebase_merge')
        ..add(serializers.serialize(object.allowRebaseMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license,
            specifiedType: const FullType(PullRequestHeadRepoLicense)));
    }
    if (object.pushedAt != null) {
      result
        ..add('pushed_at')
        ..add(serializers.serialize(object.pushedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.sshUrl != null) {
      result
        ..add('ssh_url')
        ..add(serializers.serialize(object.sshUrl,
            specifiedType: const FullType(String)));
    }
    if (object.stargazersCount != null) {
      result
        ..add('stargazers_count')
        ..add(serializers.serialize(object.stargazersCount,
            specifiedType: const FullType(int)));
    }
    if (object.svnUrl != null) {
      result
        ..add('svn_url')
        ..add(serializers.serialize(object.svnUrl,
            specifiedType: const FullType(String)));
    }
    if (object.topics != null) {
      result
        ..add('topics')
        ..add(serializers.serialize(object.topics,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.watchers != null) {
      result
        ..add('watchers')
        ..add(serializers.serialize(object.watchers,
            specifiedType: const FullType(int)));
    }
    if (object.watchersCount != null) {
      result
        ..add('watchers_count')
        ..add(serializers.serialize(object.watchersCount,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  PullRequestHeadRepo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestHeadRepoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'archive_url':
          result.archiveUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assignees_url':
          result.assigneesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blobs_url':
          result.blobsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branches_url':
          result.branchesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'collaborators_url':
          result.collaboratorsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commits_url':
          result.commitsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'compare_url':
          result.compareUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents_url':
          result.contentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contributors_url':
          result.contributorsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deployments_url':
          result.deploymentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'downloads_url':
          result.downloadsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fork':
          result.fork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'forks_url':
          result.forksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_commits_url':
          result.gitCommitsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_refs_url':
          result.gitRefsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_tags_url':
          result.gitTagsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hooks_url':
          result.hooksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_comment_url':
          result.issueCommentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_events_url':
          result.issueEventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues_url':
          result.issuesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'keys_url':
          result.keysUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labels_url':
          result.labelsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'languages_url':
          result.languagesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merges_url':
          result.mergesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'milestones_url':
          result.milestonesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notifications_url':
          result.notificationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestHeadRepoOwner))
              as PullRequestHeadRepoOwner);
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pulls_url':
          result.pullsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'releases_url':
          result.releasesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stargazers_url':
          result.stargazersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statuses_url':
          result.statusesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscribers_url':
          result.subscribersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_url':
          result.subscriptionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags_url':
          result.tagsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teams_url':
          result.teamsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trees_url':
          result.treesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clone_url':
          result.cloneUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default_branch':
          result.defaultBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forks':
          result.forks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'forks_count':
          result.forksCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'git_url':
          result.gitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_downloads':
          result.hasDownloads = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_issues':
          result.hasIssues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_projects':
          result.hasProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_wiki':
          result.hasWiki = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_pages':
          result.hasPages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'master_branch':
          result.masterBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'disabled':
          result.disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mirror_url':
          result.mirrorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open_issues':
          result.openIssues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'open_issues_count':
          result.openIssuesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FullRepositoryPermissions))
              as FullRepositoryPermissions);
          break;
        case 'temp_clone_token':
          result.tempCloneToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allow_merge_commit':
          result.allowMergeCommit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_squash_merge':
          result.allowSquashMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_rebase_merge':
          result.allowRebaseMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'license':
          result.license.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestHeadRepoLicense))
              as PullRequestHeadRepoLicense);
          break;
        case 'pushed_at':
          result.pushedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ssh_url':
          result.sshUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stargazers_count':
          result.stargazersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'svn_url':
          result.svnUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'watchers':
          result.watchers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watchers_count':
          result.watchersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestHeadRepo extends PullRequestHeadRepo {
  @override
  final String archiveUrl;
  @override
  final String assigneesUrl;
  @override
  final String blobsUrl;
  @override
  final String branchesUrl;
  @override
  final String collaboratorsUrl;
  @override
  final String commentsUrl;
  @override
  final String commitsUrl;
  @override
  final String compareUrl;
  @override
  final String contentsUrl;
  @override
  final String contributorsUrl;
  @override
  final String deploymentsUrl;
  @override
  final String description;
  @override
  final String downloadsUrl;
  @override
  final String eventsUrl;
  @override
  final bool fork;
  @override
  final String forksUrl;
  @override
  final String fullName;
  @override
  final String gitCommitsUrl;
  @override
  final String gitRefsUrl;
  @override
  final String gitTagsUrl;
  @override
  final String hooksUrl;
  @override
  final String htmlUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String issueCommentUrl;
  @override
  final String issueEventsUrl;
  @override
  final String issuesUrl;
  @override
  final String keysUrl;
  @override
  final String labelsUrl;
  @override
  final String languagesUrl;
  @override
  final String mergesUrl;
  @override
  final String milestonesUrl;
  @override
  final String name;
  @override
  final String notificationsUrl;
  @override
  final PullRequestHeadRepoOwner owner;
  @override
  final bool private;
  @override
  final String pullsUrl;
  @override
  final String releasesUrl;
  @override
  final String stargazersUrl;
  @override
  final String statusesUrl;
  @override
  final String subscribersUrl;
  @override
  final String subscriptionUrl;
  @override
  final String tagsUrl;
  @override
  final String teamsUrl;
  @override
  final String treesUrl;
  @override
  final String url;
  @override
  final String cloneUrl;
  @override
  final String defaultBranch;
  @override
  final int forks;
  @override
  final int forksCount;
  @override
  final String gitUrl;
  @override
  final bool hasDownloads;
  @override
  final bool hasIssues;
  @override
  final bool hasProjects;
  @override
  final bool hasWiki;
  @override
  final bool hasPages;
  @override
  final String homepage;
  @override
  final String language;
  @override
  final String masterBranch;
  @override
  final bool archived;
  @override
  final bool disabled;
  @override
  final String mirrorUrl;
  @override
  final int openIssues;
  @override
  final int openIssuesCount;
  @override
  final FullRepositoryPermissions permissions;
  @override
  final String tempCloneToken;
  @override
  final bool allowMergeCommit;
  @override
  final bool allowSquashMerge;
  @override
  final bool allowRebaseMerge;
  @override
  final PullRequestHeadRepoLicense license;
  @override
  final DateTime pushedAt;
  @override
  final int size;
  @override
  final String sshUrl;
  @override
  final int stargazersCount;
  @override
  final String svnUrl;
  @override
  final BuiltList<String> topics;
  @override
  final int watchers;
  @override
  final int watchersCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PullRequestHeadRepo(
          [void Function(PullRequestHeadRepoBuilder) updates]) =>
      (new PullRequestHeadRepoBuilder()..update(updates)).build();

  _$PullRequestHeadRepo._(
      {this.archiveUrl,
      this.assigneesUrl,
      this.blobsUrl,
      this.branchesUrl,
      this.collaboratorsUrl,
      this.commentsUrl,
      this.commitsUrl,
      this.compareUrl,
      this.contentsUrl,
      this.contributorsUrl,
      this.deploymentsUrl,
      this.description,
      this.downloadsUrl,
      this.eventsUrl,
      this.fork,
      this.forksUrl,
      this.fullName,
      this.gitCommitsUrl,
      this.gitRefsUrl,
      this.gitTagsUrl,
      this.hooksUrl,
      this.htmlUrl,
      this.id,
      this.nodeId,
      this.issueCommentUrl,
      this.issueEventsUrl,
      this.issuesUrl,
      this.keysUrl,
      this.labelsUrl,
      this.languagesUrl,
      this.mergesUrl,
      this.milestonesUrl,
      this.name,
      this.notificationsUrl,
      this.owner,
      this.private,
      this.pullsUrl,
      this.releasesUrl,
      this.stargazersUrl,
      this.statusesUrl,
      this.subscribersUrl,
      this.subscriptionUrl,
      this.tagsUrl,
      this.teamsUrl,
      this.treesUrl,
      this.url,
      this.cloneUrl,
      this.defaultBranch,
      this.forks,
      this.forksCount,
      this.gitUrl,
      this.hasDownloads,
      this.hasIssues,
      this.hasProjects,
      this.hasWiki,
      this.hasPages,
      this.homepage,
      this.language,
      this.masterBranch,
      this.archived,
      this.disabled,
      this.mirrorUrl,
      this.openIssues,
      this.openIssuesCount,
      this.permissions,
      this.tempCloneToken,
      this.allowMergeCommit,
      this.allowSquashMerge,
      this.allowRebaseMerge,
      this.license,
      this.pushedAt,
      this.size,
      this.sshUrl,
      this.stargazersCount,
      this.svnUrl,
      this.topics,
      this.watchers,
      this.watchersCount,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  PullRequestHeadRepo rebuild(
          void Function(PullRequestHeadRepoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestHeadRepoBuilder toBuilder() =>
      new PullRequestHeadRepoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestHeadRepo &&
        archiveUrl == other.archiveUrl &&
        assigneesUrl == other.assigneesUrl &&
        blobsUrl == other.blobsUrl &&
        branchesUrl == other.branchesUrl &&
        collaboratorsUrl == other.collaboratorsUrl &&
        commentsUrl == other.commentsUrl &&
        commitsUrl == other.commitsUrl &&
        compareUrl == other.compareUrl &&
        contentsUrl == other.contentsUrl &&
        contributorsUrl == other.contributorsUrl &&
        deploymentsUrl == other.deploymentsUrl &&
        description == other.description &&
        downloadsUrl == other.downloadsUrl &&
        eventsUrl == other.eventsUrl &&
        fork == other.fork &&
        forksUrl == other.forksUrl &&
        fullName == other.fullName &&
        gitCommitsUrl == other.gitCommitsUrl &&
        gitRefsUrl == other.gitRefsUrl &&
        gitTagsUrl == other.gitTagsUrl &&
        hooksUrl == other.hooksUrl &&
        htmlUrl == other.htmlUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        issueCommentUrl == other.issueCommentUrl &&
        issueEventsUrl == other.issueEventsUrl &&
        issuesUrl == other.issuesUrl &&
        keysUrl == other.keysUrl &&
        labelsUrl == other.labelsUrl &&
        languagesUrl == other.languagesUrl &&
        mergesUrl == other.mergesUrl &&
        milestonesUrl == other.milestonesUrl &&
        name == other.name &&
        notificationsUrl == other.notificationsUrl &&
        owner == other.owner &&
        private == other.private &&
        pullsUrl == other.pullsUrl &&
        releasesUrl == other.releasesUrl &&
        stargazersUrl == other.stargazersUrl &&
        statusesUrl == other.statusesUrl &&
        subscribersUrl == other.subscribersUrl &&
        subscriptionUrl == other.subscriptionUrl &&
        tagsUrl == other.tagsUrl &&
        teamsUrl == other.teamsUrl &&
        treesUrl == other.treesUrl &&
        url == other.url &&
        cloneUrl == other.cloneUrl &&
        defaultBranch == other.defaultBranch &&
        forks == other.forks &&
        forksCount == other.forksCount &&
        gitUrl == other.gitUrl &&
        hasDownloads == other.hasDownloads &&
        hasIssues == other.hasIssues &&
        hasProjects == other.hasProjects &&
        hasWiki == other.hasWiki &&
        hasPages == other.hasPages &&
        homepage == other.homepage &&
        language == other.language &&
        masterBranch == other.masterBranch &&
        archived == other.archived &&
        disabled == other.disabled &&
        mirrorUrl == other.mirrorUrl &&
        openIssues == other.openIssues &&
        openIssuesCount == other.openIssuesCount &&
        permissions == other.permissions &&
        tempCloneToken == other.tempCloneToken &&
        allowMergeCommit == other.allowMergeCommit &&
        allowSquashMerge == other.allowSquashMerge &&
        allowRebaseMerge == other.allowRebaseMerge &&
        license == other.license &&
        pushedAt == other.pushedAt &&
        size == other.size &&
        sshUrl == other.sshUrl &&
        stargazersCount == other.stargazersCount &&
        svnUrl == other.svnUrl &&
        topics == other.topics &&
        watchers == other.watchers &&
        watchersCount == other.watchersCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, archiveUrl.hashCode), assigneesUrl.hashCode), blobsUrl.hashCode), branchesUrl.hashCode), collaboratorsUrl.hashCode), commentsUrl.hashCode), commitsUrl.hashCode), compareUrl.hashCode), contentsUrl.hashCode), contributorsUrl.hashCode), deploymentsUrl.hashCode), description.hashCode), downloadsUrl.hashCode), eventsUrl.hashCode), fork.hashCode), forksUrl.hashCode), fullName.hashCode), gitCommitsUrl.hashCode), gitRefsUrl.hashCode), gitTagsUrl.hashCode), hooksUrl.hashCode), htmlUrl.hashCode), id.hashCode), nodeId.hashCode), issueCommentUrl.hashCode), issueEventsUrl.hashCode), issuesUrl.hashCode), keysUrl.hashCode), labelsUrl.hashCode), languagesUrl.hashCode), mergesUrl.hashCode), milestonesUrl.hashCode), name.hashCode), notificationsUrl.hashCode), owner.hashCode), private.hashCode), pullsUrl.hashCode), releasesUrl.hashCode), stargazersUrl.hashCode), statusesUrl.hashCode), subscribersUrl.hashCode), subscriptionUrl.hashCode), tagsUrl.hashCode), teamsUrl.hashCode), treesUrl.hashCode), url.hashCode), cloneUrl.hashCode), defaultBranch.hashCode), forks.hashCode), forksCount.hashCode), gitUrl.hashCode), hasDownloads.hashCode), hasIssues.hashCode), hasProjects.hashCode), hasWiki.hashCode), hasPages.hashCode), homepage.hashCode), language.hashCode), masterBranch.hashCode), archived.hashCode), disabled.hashCode),
                                                                                mirrorUrl.hashCode),
                                                                            openIssues.hashCode),
                                                                        openIssuesCount.hashCode),
                                                                    permissions.hashCode),
                                                                tempCloneToken.hashCode),
                                                            allowMergeCommit.hashCode),
                                                        allowSquashMerge.hashCode),
                                                    allowRebaseMerge.hashCode),
                                                license.hashCode),
                                            pushedAt.hashCode),
                                        size.hashCode),
                                    sshUrl.hashCode),
                                stargazersCount.hashCode),
                            svnUrl.hashCode),
                        topics.hashCode),
                    watchers.hashCode),
                watchersCount.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestHeadRepo')
          ..add('archiveUrl', archiveUrl)
          ..add('assigneesUrl', assigneesUrl)
          ..add('blobsUrl', blobsUrl)
          ..add('branchesUrl', branchesUrl)
          ..add('collaboratorsUrl', collaboratorsUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('commitsUrl', commitsUrl)
          ..add('compareUrl', compareUrl)
          ..add('contentsUrl', contentsUrl)
          ..add('contributorsUrl', contributorsUrl)
          ..add('deploymentsUrl', deploymentsUrl)
          ..add('description', description)
          ..add('downloadsUrl', downloadsUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('fork', fork)
          ..add('forksUrl', forksUrl)
          ..add('fullName', fullName)
          ..add('gitCommitsUrl', gitCommitsUrl)
          ..add('gitRefsUrl', gitRefsUrl)
          ..add('gitTagsUrl', gitTagsUrl)
          ..add('hooksUrl', hooksUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('issueCommentUrl', issueCommentUrl)
          ..add('issueEventsUrl', issueEventsUrl)
          ..add('issuesUrl', issuesUrl)
          ..add('keysUrl', keysUrl)
          ..add('labelsUrl', labelsUrl)
          ..add('languagesUrl', languagesUrl)
          ..add('mergesUrl', mergesUrl)
          ..add('milestonesUrl', milestonesUrl)
          ..add('name', name)
          ..add('notificationsUrl', notificationsUrl)
          ..add('owner', owner)
          ..add('private', private)
          ..add('pullsUrl', pullsUrl)
          ..add('releasesUrl', releasesUrl)
          ..add('stargazersUrl', stargazersUrl)
          ..add('statusesUrl', statusesUrl)
          ..add('subscribersUrl', subscribersUrl)
          ..add('subscriptionUrl', subscriptionUrl)
          ..add('tagsUrl', tagsUrl)
          ..add('teamsUrl', teamsUrl)
          ..add('treesUrl', treesUrl)
          ..add('url', url)
          ..add('cloneUrl', cloneUrl)
          ..add('defaultBranch', defaultBranch)
          ..add('forks', forks)
          ..add('forksCount', forksCount)
          ..add('gitUrl', gitUrl)
          ..add('hasDownloads', hasDownloads)
          ..add('hasIssues', hasIssues)
          ..add('hasProjects', hasProjects)
          ..add('hasWiki', hasWiki)
          ..add('hasPages', hasPages)
          ..add('homepage', homepage)
          ..add('language', language)
          ..add('masterBranch', masterBranch)
          ..add('archived', archived)
          ..add('disabled', disabled)
          ..add('mirrorUrl', mirrorUrl)
          ..add('openIssues', openIssues)
          ..add('openIssuesCount', openIssuesCount)
          ..add('permissions', permissions)
          ..add('tempCloneToken', tempCloneToken)
          ..add('allowMergeCommit', allowMergeCommit)
          ..add('allowSquashMerge', allowSquashMerge)
          ..add('allowRebaseMerge', allowRebaseMerge)
          ..add('license', license)
          ..add('pushedAt', pushedAt)
          ..add('size', size)
          ..add('sshUrl', sshUrl)
          ..add('stargazersCount', stargazersCount)
          ..add('svnUrl', svnUrl)
          ..add('topics', topics)
          ..add('watchers', watchers)
          ..add('watchersCount', watchersCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PullRequestHeadRepoBuilder
    implements Builder<PullRequestHeadRepo, PullRequestHeadRepoBuilder> {
  _$PullRequestHeadRepo _$v;

  String _archiveUrl;
  String get archiveUrl => _$this._archiveUrl;
  set archiveUrl(String archiveUrl) => _$this._archiveUrl = archiveUrl;

  String _assigneesUrl;
  String get assigneesUrl => _$this._assigneesUrl;
  set assigneesUrl(String assigneesUrl) => _$this._assigneesUrl = assigneesUrl;

  String _blobsUrl;
  String get blobsUrl => _$this._blobsUrl;
  set blobsUrl(String blobsUrl) => _$this._blobsUrl = blobsUrl;

  String _branchesUrl;
  String get branchesUrl => _$this._branchesUrl;
  set branchesUrl(String branchesUrl) => _$this._branchesUrl = branchesUrl;

  String _collaboratorsUrl;
  String get collaboratorsUrl => _$this._collaboratorsUrl;
  set collaboratorsUrl(String collaboratorsUrl) =>
      _$this._collaboratorsUrl = collaboratorsUrl;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  String _commitsUrl;
  String get commitsUrl => _$this._commitsUrl;
  set commitsUrl(String commitsUrl) => _$this._commitsUrl = commitsUrl;

  String _compareUrl;
  String get compareUrl => _$this._compareUrl;
  set compareUrl(String compareUrl) => _$this._compareUrl = compareUrl;

  String _contentsUrl;
  String get contentsUrl => _$this._contentsUrl;
  set contentsUrl(String contentsUrl) => _$this._contentsUrl = contentsUrl;

  String _contributorsUrl;
  String get contributorsUrl => _$this._contributorsUrl;
  set contributorsUrl(String contributorsUrl) =>
      _$this._contributorsUrl = contributorsUrl;

  String _deploymentsUrl;
  String get deploymentsUrl => _$this._deploymentsUrl;
  set deploymentsUrl(String deploymentsUrl) =>
      _$this._deploymentsUrl = deploymentsUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _downloadsUrl;
  String get downloadsUrl => _$this._downloadsUrl;
  set downloadsUrl(String downloadsUrl) => _$this._downloadsUrl = downloadsUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  bool _fork;
  bool get fork => _$this._fork;
  set fork(bool fork) => _$this._fork = fork;

  String _forksUrl;
  String get forksUrl => _$this._forksUrl;
  set forksUrl(String forksUrl) => _$this._forksUrl = forksUrl;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _gitCommitsUrl;
  String get gitCommitsUrl => _$this._gitCommitsUrl;
  set gitCommitsUrl(String gitCommitsUrl) =>
      _$this._gitCommitsUrl = gitCommitsUrl;

  String _gitRefsUrl;
  String get gitRefsUrl => _$this._gitRefsUrl;
  set gitRefsUrl(String gitRefsUrl) => _$this._gitRefsUrl = gitRefsUrl;

  String _gitTagsUrl;
  String get gitTagsUrl => _$this._gitTagsUrl;
  set gitTagsUrl(String gitTagsUrl) => _$this._gitTagsUrl = gitTagsUrl;

  String _hooksUrl;
  String get hooksUrl => _$this._hooksUrl;
  set hooksUrl(String hooksUrl) => _$this._hooksUrl = hooksUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _issueCommentUrl;
  String get issueCommentUrl => _$this._issueCommentUrl;
  set issueCommentUrl(String issueCommentUrl) =>
      _$this._issueCommentUrl = issueCommentUrl;

  String _issueEventsUrl;
  String get issueEventsUrl => _$this._issueEventsUrl;
  set issueEventsUrl(String issueEventsUrl) =>
      _$this._issueEventsUrl = issueEventsUrl;

  String _issuesUrl;
  String get issuesUrl => _$this._issuesUrl;
  set issuesUrl(String issuesUrl) => _$this._issuesUrl = issuesUrl;

  String _keysUrl;
  String get keysUrl => _$this._keysUrl;
  set keysUrl(String keysUrl) => _$this._keysUrl = keysUrl;

  String _labelsUrl;
  String get labelsUrl => _$this._labelsUrl;
  set labelsUrl(String labelsUrl) => _$this._labelsUrl = labelsUrl;

  String _languagesUrl;
  String get languagesUrl => _$this._languagesUrl;
  set languagesUrl(String languagesUrl) => _$this._languagesUrl = languagesUrl;

  String _mergesUrl;
  String get mergesUrl => _$this._mergesUrl;
  set mergesUrl(String mergesUrl) => _$this._mergesUrl = mergesUrl;

  String _milestonesUrl;
  String get milestonesUrl => _$this._milestonesUrl;
  set milestonesUrl(String milestonesUrl) =>
      _$this._milestonesUrl = milestonesUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _notificationsUrl;
  String get notificationsUrl => _$this._notificationsUrl;
  set notificationsUrl(String notificationsUrl) =>
      _$this._notificationsUrl = notificationsUrl;

  PullRequestHeadRepoOwnerBuilder _owner;
  PullRequestHeadRepoOwnerBuilder get owner =>
      _$this._owner ??= new PullRequestHeadRepoOwnerBuilder();
  set owner(PullRequestHeadRepoOwnerBuilder owner) => _$this._owner = owner;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  String _pullsUrl;
  String get pullsUrl => _$this._pullsUrl;
  set pullsUrl(String pullsUrl) => _$this._pullsUrl = pullsUrl;

  String _releasesUrl;
  String get releasesUrl => _$this._releasesUrl;
  set releasesUrl(String releasesUrl) => _$this._releasesUrl = releasesUrl;

  String _stargazersUrl;
  String get stargazersUrl => _$this._stargazersUrl;
  set stargazersUrl(String stargazersUrl) =>
      _$this._stargazersUrl = stargazersUrl;

  String _statusesUrl;
  String get statusesUrl => _$this._statusesUrl;
  set statusesUrl(String statusesUrl) => _$this._statusesUrl = statusesUrl;

  String _subscribersUrl;
  String get subscribersUrl => _$this._subscribersUrl;
  set subscribersUrl(String subscribersUrl) =>
      _$this._subscribersUrl = subscribersUrl;

  String _subscriptionUrl;
  String get subscriptionUrl => _$this._subscriptionUrl;
  set subscriptionUrl(String subscriptionUrl) =>
      _$this._subscriptionUrl = subscriptionUrl;

  String _tagsUrl;
  String get tagsUrl => _$this._tagsUrl;
  set tagsUrl(String tagsUrl) => _$this._tagsUrl = tagsUrl;

  String _teamsUrl;
  String get teamsUrl => _$this._teamsUrl;
  set teamsUrl(String teamsUrl) => _$this._teamsUrl = teamsUrl;

  String _treesUrl;
  String get treesUrl => _$this._treesUrl;
  set treesUrl(String treesUrl) => _$this._treesUrl = treesUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _cloneUrl;
  String get cloneUrl => _$this._cloneUrl;
  set cloneUrl(String cloneUrl) => _$this._cloneUrl = cloneUrl;

  String _defaultBranch;
  String get defaultBranch => _$this._defaultBranch;
  set defaultBranch(String defaultBranch) =>
      _$this._defaultBranch = defaultBranch;

  int _forks;
  int get forks => _$this._forks;
  set forks(int forks) => _$this._forks = forks;

  int _forksCount;
  int get forksCount => _$this._forksCount;
  set forksCount(int forksCount) => _$this._forksCount = forksCount;

  String _gitUrl;
  String get gitUrl => _$this._gitUrl;
  set gitUrl(String gitUrl) => _$this._gitUrl = gitUrl;

  bool _hasDownloads;
  bool get hasDownloads => _$this._hasDownloads;
  set hasDownloads(bool hasDownloads) => _$this._hasDownloads = hasDownloads;

  bool _hasIssues;
  bool get hasIssues => _$this._hasIssues;
  set hasIssues(bool hasIssues) => _$this._hasIssues = hasIssues;

  bool _hasProjects;
  bool get hasProjects => _$this._hasProjects;
  set hasProjects(bool hasProjects) => _$this._hasProjects = hasProjects;

  bool _hasWiki;
  bool get hasWiki => _$this._hasWiki;
  set hasWiki(bool hasWiki) => _$this._hasWiki = hasWiki;

  bool _hasPages;
  bool get hasPages => _$this._hasPages;
  set hasPages(bool hasPages) => _$this._hasPages = hasPages;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _masterBranch;
  String get masterBranch => _$this._masterBranch;
  set masterBranch(String masterBranch) => _$this._masterBranch = masterBranch;

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  bool _disabled;
  bool get disabled => _$this._disabled;
  set disabled(bool disabled) => _$this._disabled = disabled;

  String _mirrorUrl;
  String get mirrorUrl => _$this._mirrorUrl;
  set mirrorUrl(String mirrorUrl) => _$this._mirrorUrl = mirrorUrl;

  int _openIssues;
  int get openIssues => _$this._openIssues;
  set openIssues(int openIssues) => _$this._openIssues = openIssues;

  int _openIssuesCount;
  int get openIssuesCount => _$this._openIssuesCount;
  set openIssuesCount(int openIssuesCount) =>
      _$this._openIssuesCount = openIssuesCount;

  FullRepositoryPermissionsBuilder _permissions;
  FullRepositoryPermissionsBuilder get permissions =>
      _$this._permissions ??= new FullRepositoryPermissionsBuilder();
  set permissions(FullRepositoryPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  String _tempCloneToken;
  String get tempCloneToken => _$this._tempCloneToken;
  set tempCloneToken(String tempCloneToken) =>
      _$this._tempCloneToken = tempCloneToken;

  bool _allowMergeCommit;
  bool get allowMergeCommit => _$this._allowMergeCommit;
  set allowMergeCommit(bool allowMergeCommit) =>
      _$this._allowMergeCommit = allowMergeCommit;

  bool _allowSquashMerge;
  bool get allowSquashMerge => _$this._allowSquashMerge;
  set allowSquashMerge(bool allowSquashMerge) =>
      _$this._allowSquashMerge = allowSquashMerge;

  bool _allowRebaseMerge;
  bool get allowRebaseMerge => _$this._allowRebaseMerge;
  set allowRebaseMerge(bool allowRebaseMerge) =>
      _$this._allowRebaseMerge = allowRebaseMerge;

  PullRequestHeadRepoLicenseBuilder _license;
  PullRequestHeadRepoLicenseBuilder get license =>
      _$this._license ??= new PullRequestHeadRepoLicenseBuilder();
  set license(PullRequestHeadRepoLicenseBuilder license) =>
      _$this._license = license;

  DateTime _pushedAt;
  DateTime get pushedAt => _$this._pushedAt;
  set pushedAt(DateTime pushedAt) => _$this._pushedAt = pushedAt;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _sshUrl;
  String get sshUrl => _$this._sshUrl;
  set sshUrl(String sshUrl) => _$this._sshUrl = sshUrl;

  int _stargazersCount;
  int get stargazersCount => _$this._stargazersCount;
  set stargazersCount(int stargazersCount) =>
      _$this._stargazersCount = stargazersCount;

  String _svnUrl;
  String get svnUrl => _$this._svnUrl;
  set svnUrl(String svnUrl) => _$this._svnUrl = svnUrl;

  ListBuilder<String> _topics;
  ListBuilder<String> get topics =>
      _$this._topics ??= new ListBuilder<String>();
  set topics(ListBuilder<String> topics) => _$this._topics = topics;

  int _watchers;
  int get watchers => _$this._watchers;
  set watchers(int watchers) => _$this._watchers = watchers;

  int _watchersCount;
  int get watchersCount => _$this._watchersCount;
  set watchersCount(int watchersCount) => _$this._watchersCount = watchersCount;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  PullRequestHeadRepoBuilder() {
    PullRequestHeadRepo._initializeBuilder(this);
  }

  PullRequestHeadRepoBuilder get _$this {
    if (_$v != null) {
      _archiveUrl = _$v.archiveUrl;
      _assigneesUrl = _$v.assigneesUrl;
      _blobsUrl = _$v.blobsUrl;
      _branchesUrl = _$v.branchesUrl;
      _collaboratorsUrl = _$v.collaboratorsUrl;
      _commentsUrl = _$v.commentsUrl;
      _commitsUrl = _$v.commitsUrl;
      _compareUrl = _$v.compareUrl;
      _contentsUrl = _$v.contentsUrl;
      _contributorsUrl = _$v.contributorsUrl;
      _deploymentsUrl = _$v.deploymentsUrl;
      _description = _$v.description;
      _downloadsUrl = _$v.downloadsUrl;
      _eventsUrl = _$v.eventsUrl;
      _fork = _$v.fork;
      _forksUrl = _$v.forksUrl;
      _fullName = _$v.fullName;
      _gitCommitsUrl = _$v.gitCommitsUrl;
      _gitRefsUrl = _$v.gitRefsUrl;
      _gitTagsUrl = _$v.gitTagsUrl;
      _hooksUrl = _$v.hooksUrl;
      _htmlUrl = _$v.htmlUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _issueCommentUrl = _$v.issueCommentUrl;
      _issueEventsUrl = _$v.issueEventsUrl;
      _issuesUrl = _$v.issuesUrl;
      _keysUrl = _$v.keysUrl;
      _labelsUrl = _$v.labelsUrl;
      _languagesUrl = _$v.languagesUrl;
      _mergesUrl = _$v.mergesUrl;
      _milestonesUrl = _$v.milestonesUrl;
      _name = _$v.name;
      _notificationsUrl = _$v.notificationsUrl;
      _owner = _$v.owner?.toBuilder();
      _private = _$v.private;
      _pullsUrl = _$v.pullsUrl;
      _releasesUrl = _$v.releasesUrl;
      _stargazersUrl = _$v.stargazersUrl;
      _statusesUrl = _$v.statusesUrl;
      _subscribersUrl = _$v.subscribersUrl;
      _subscriptionUrl = _$v.subscriptionUrl;
      _tagsUrl = _$v.tagsUrl;
      _teamsUrl = _$v.teamsUrl;
      _treesUrl = _$v.treesUrl;
      _url = _$v.url;
      _cloneUrl = _$v.cloneUrl;
      _defaultBranch = _$v.defaultBranch;
      _forks = _$v.forks;
      _forksCount = _$v.forksCount;
      _gitUrl = _$v.gitUrl;
      _hasDownloads = _$v.hasDownloads;
      _hasIssues = _$v.hasIssues;
      _hasProjects = _$v.hasProjects;
      _hasWiki = _$v.hasWiki;
      _hasPages = _$v.hasPages;
      _homepage = _$v.homepage;
      _language = _$v.language;
      _masterBranch = _$v.masterBranch;
      _archived = _$v.archived;
      _disabled = _$v.disabled;
      _mirrorUrl = _$v.mirrorUrl;
      _openIssues = _$v.openIssues;
      _openIssuesCount = _$v.openIssuesCount;
      _permissions = _$v.permissions?.toBuilder();
      _tempCloneToken = _$v.tempCloneToken;
      _allowMergeCommit = _$v.allowMergeCommit;
      _allowSquashMerge = _$v.allowSquashMerge;
      _allowRebaseMerge = _$v.allowRebaseMerge;
      _license = _$v.license?.toBuilder();
      _pushedAt = _$v.pushedAt;
      _size = _$v.size;
      _sshUrl = _$v.sshUrl;
      _stargazersCount = _$v.stargazersCount;
      _svnUrl = _$v.svnUrl;
      _topics = _$v.topics?.toBuilder();
      _watchers = _$v.watchers;
      _watchersCount = _$v.watchersCount;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestHeadRepo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestHeadRepo;
  }

  @override
  void update(void Function(PullRequestHeadRepoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestHeadRepo build() {
    _$PullRequestHeadRepo _$result;
    try {
      _$result = _$v ??
          new _$PullRequestHeadRepo._(
              archiveUrl: archiveUrl,
              assigneesUrl: assigneesUrl,
              blobsUrl: blobsUrl,
              branchesUrl: branchesUrl,
              collaboratorsUrl: collaboratorsUrl,
              commentsUrl: commentsUrl,
              commitsUrl: commitsUrl,
              compareUrl: compareUrl,
              contentsUrl: contentsUrl,
              contributorsUrl: contributorsUrl,
              deploymentsUrl: deploymentsUrl,
              description: description,
              downloadsUrl: downloadsUrl,
              eventsUrl: eventsUrl,
              fork: fork,
              forksUrl: forksUrl,
              fullName: fullName,
              gitCommitsUrl: gitCommitsUrl,
              gitRefsUrl: gitRefsUrl,
              gitTagsUrl: gitTagsUrl,
              hooksUrl: hooksUrl,
              htmlUrl: htmlUrl,
              id: id,
              nodeId: nodeId,
              issueCommentUrl: issueCommentUrl,
              issueEventsUrl: issueEventsUrl,
              issuesUrl: issuesUrl,
              keysUrl: keysUrl,
              labelsUrl: labelsUrl,
              languagesUrl: languagesUrl,
              mergesUrl: mergesUrl,
              milestonesUrl: milestonesUrl,
              name: name,
              notificationsUrl: notificationsUrl,
              owner: _owner?.build(),
              private: private,
              pullsUrl: pullsUrl,
              releasesUrl: releasesUrl,
              stargazersUrl: stargazersUrl,
              statusesUrl: statusesUrl,
              subscribersUrl: subscribersUrl,
              subscriptionUrl: subscriptionUrl,
              tagsUrl: tagsUrl,
              teamsUrl: teamsUrl,
              treesUrl: treesUrl,
              url: url,
              cloneUrl: cloneUrl,
              defaultBranch: defaultBranch,
              forks: forks,
              forksCount: forksCount,
              gitUrl: gitUrl,
              hasDownloads: hasDownloads,
              hasIssues: hasIssues,
              hasProjects: hasProjects,
              hasWiki: hasWiki,
              hasPages: hasPages,
              homepage: homepage,
              language: language,
              masterBranch: masterBranch,
              archived: archived,
              disabled: disabled,
              mirrorUrl: mirrorUrl,
              openIssues: openIssues,
              openIssuesCount: openIssuesCount,
              permissions: _permissions?.build(),
              tempCloneToken: tempCloneToken,
              allowMergeCommit: allowMergeCommit,
              allowSquashMerge: allowSquashMerge,
              allowRebaseMerge: allowRebaseMerge,
              license: _license?.build(),
              pushedAt: pushedAt,
              size: size,
              sshUrl: sshUrl,
              stargazersCount: stargazersCount,
              svnUrl: svnUrl,
              topics: _topics?.build(),
              watchers: watchers,
              watchersCount: watchersCount,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'permissions';
        _permissions?.build();

        _$failedField = 'license';
        _license?.build();

        _$failedField = 'topics';
        _topics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestHeadRepo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
