// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_template_repository.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryTemplateRepository>
    _$repositoryTemplateRepositorySerializer =
    new _$RepositoryTemplateRepositorySerializer();

class _$RepositoryTemplateRepositorySerializer
    implements StructuredSerializer<RepositoryTemplateRepository> {
  @override
  final Iterable<Type> types = const [
    RepositoryTemplateRepository,
    _$RepositoryTemplateRepository
  ];
  @override
  final String wireName = 'RepositoryTemplateRepository';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositoryTemplateRepository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.fullName != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(object.fullName,
            specifiedType: const FullType(String)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(RepositoryTemplateRepositoryOwner)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.fork != null) {
      result
        ..add('fork')
        ..add(serializers.serialize(object.fork,
            specifiedType: const FullType(bool)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
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
    if (object.forksUrl != null) {
      result
        ..add('forks_url')
        ..add(serializers.serialize(object.forksUrl,
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
    if (object.gitUrl != null) {
      result
        ..add('git_url')
        ..add(serializers.serialize(object.gitUrl,
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
    if (object.notificationsUrl != null) {
      result
        ..add('notifications_url')
        ..add(serializers.serialize(object.notificationsUrl,
            specifiedType: const FullType(String)));
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
    if (object.sshUrl != null) {
      result
        ..add('ssh_url')
        ..add(serializers.serialize(object.sshUrl,
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
    if (object.cloneUrl != null) {
      result
        ..add('clone_url')
        ..add(serializers.serialize(object.cloneUrl,
            specifiedType: const FullType(String)));
    }
    if (object.mirrorUrl != null) {
      result
        ..add('mirror_url')
        ..add(serializers.serialize(object.mirrorUrl,
            specifiedType: const FullType(String)));
    }
    if (object.hooksUrl != null) {
      result
        ..add('hooks_url')
        ..add(serializers.serialize(object.hooksUrl,
            specifiedType: const FullType(String)));
    }
    if (object.svnUrl != null) {
      result
        ..add('svn_url')
        ..add(serializers.serialize(object.svnUrl,
            specifiedType: const FullType(String)));
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
    if (object.forksCount != null) {
      result
        ..add('forks_count')
        ..add(serializers.serialize(object.forksCount,
            specifiedType: const FullType(int)));
    }
    if (object.stargazersCount != null) {
      result
        ..add('stargazers_count')
        ..add(serializers.serialize(object.stargazersCount,
            specifiedType: const FullType(int)));
    }
    if (object.watchersCount != null) {
      result
        ..add('watchers_count')
        ..add(serializers.serialize(object.watchersCount,
            specifiedType: const FullType(int)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.defaultBranch != null) {
      result
        ..add('default_branch')
        ..add(serializers.serialize(object.defaultBranch,
            specifiedType: const FullType(String)));
    }
    if (object.openIssuesCount != null) {
      result
        ..add('open_issues_count')
        ..add(serializers.serialize(object.openIssuesCount,
            specifiedType: const FullType(int)));
    }
    if (object.isTemplate != null) {
      result
        ..add('is_template')
        ..add(serializers.serialize(object.isTemplate,
            specifiedType: const FullType(bool)));
    }
    if (object.topics != null) {
      result
        ..add('topics')
        ..add(serializers.serialize(object.topics,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    if (object.hasDownloads != null) {
      result
        ..add('has_downloads')
        ..add(serializers.serialize(object.hasDownloads,
            specifiedType: const FullType(bool)));
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
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(String)));
    }
    if (object.pushedAt != null) {
      result
        ..add('pushed_at')
        ..add(serializers.serialize(object.pushedAt,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType:
                const FullType(RepositoryTemplateRepositoryPermissions)));
    }
    if (object.allowRebaseMerge != null) {
      result
        ..add('allow_rebase_merge')
        ..add(serializers.serialize(object.allowRebaseMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.tempCloneToken != null) {
      result
        ..add('temp_clone_token')
        ..add(serializers.serialize(object.tempCloneToken,
            specifiedType: const FullType(String)));
    }
    if (object.allowSquashMerge != null) {
      result
        ..add('allow_squash_merge')
        ..add(serializers.serialize(object.allowSquashMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.deleteBranchOnMerge != null) {
      result
        ..add('delete_branch_on_merge')
        ..add(serializers.serialize(object.deleteBranchOnMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.allowMergeCommit != null) {
      result
        ..add('allow_merge_commit')
        ..add(serializers.serialize(object.allowMergeCommit,
            specifiedType: const FullType(bool)));
    }
    if (object.subscribersCount != null) {
      result
        ..add('subscribers_count')
        ..add(serializers.serialize(object.subscribersCount,
            specifiedType: const FullType(int)));
    }
    if (object.networkCount != null) {
      result
        ..add('network_count')
        ..add(serializers.serialize(object.networkCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RepositoryTemplateRepository deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryTemplateRepositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(RepositoryTemplateRepositoryOwner))
              as RepositoryTemplateRepositoryOwner);
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fork':
          result.fork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
        case 'downloads_url':
          result.downloadsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forks_url':
          result.forksUrl = serializers.deserialize(value,
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
        case 'git_url':
          result.gitUrl = serializers.deserialize(value,
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
        case 'notifications_url':
          result.notificationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pulls_url':
          result.pullsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'releases_url':
          result.releasesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ssh_url':
          result.sshUrl = serializers.deserialize(value,
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
        case 'clone_url':
          result.cloneUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mirror_url':
          result.mirrorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hooks_url':
          result.hooksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'svn_url':
          result.svnUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forks_count':
          result.forksCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stargazers_count':
          result.stargazersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watchers_count':
          result.watchersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'default_branch':
          result.defaultBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open_issues_count':
          result.openIssuesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_template':
          result.isTemplate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
        case 'has_downloads':
          result.hasDownloads = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'disabled':
          result.disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pushed_at':
          result.pushedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(RepositoryTemplateRepositoryPermissions))
              as RepositoryTemplateRepositoryPermissions);
          break;
        case 'allow_rebase_merge':
          result.allowRebaseMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'temp_clone_token':
          result.tempCloneToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allow_squash_merge':
          result.allowSquashMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'delete_branch_on_merge':
          result.deleteBranchOnMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_merge_commit':
          result.allowMergeCommit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'subscribers_count':
          result.subscribersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'network_count':
          result.networkCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryTemplateRepository extends RepositoryTemplateRepository {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final RepositoryTemplateRepositoryOwner owner;
  @override
  final bool private;
  @override
  final String htmlUrl;
  @override
  final String description;
  @override
  final bool fork;
  @override
  final String url;
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
  final String downloadsUrl;
  @override
  final String eventsUrl;
  @override
  final String forksUrl;
  @override
  final String gitCommitsUrl;
  @override
  final String gitRefsUrl;
  @override
  final String gitTagsUrl;
  @override
  final String gitUrl;
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
  final String notificationsUrl;
  @override
  final String pullsUrl;
  @override
  final String releasesUrl;
  @override
  final String sshUrl;
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
  final String cloneUrl;
  @override
  final String mirrorUrl;
  @override
  final String hooksUrl;
  @override
  final String svnUrl;
  @override
  final String homepage;
  @override
  final String language;
  @override
  final int forksCount;
  @override
  final int stargazersCount;
  @override
  final int watchersCount;
  @override
  final int size;
  @override
  final String defaultBranch;
  @override
  final int openIssuesCount;
  @override
  final bool isTemplate;
  @override
  final BuiltList<String> topics;
  @override
  final bool hasIssues;
  @override
  final bool hasProjects;
  @override
  final bool hasWiki;
  @override
  final bool hasPages;
  @override
  final bool hasDownloads;
  @override
  final bool archived;
  @override
  final bool disabled;
  @override
  final String visibility;
  @override
  final String pushedAt;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final RepositoryTemplateRepositoryPermissions permissions;
  @override
  final bool allowRebaseMerge;
  @override
  final String tempCloneToken;
  @override
  final bool allowSquashMerge;
  @override
  final bool deleteBranchOnMerge;
  @override
  final bool allowMergeCommit;
  @override
  final int subscribersCount;
  @override
  final int networkCount;

  factory _$RepositoryTemplateRepository(
          [void Function(RepositoryTemplateRepositoryBuilder) updates]) =>
      (new RepositoryTemplateRepositoryBuilder()..update(updates)).build();

  _$RepositoryTemplateRepository._(
      {this.id,
      this.nodeId,
      this.name,
      this.fullName,
      this.owner,
      this.private,
      this.htmlUrl,
      this.description,
      this.fork,
      this.url,
      this.archiveUrl,
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
      this.downloadsUrl,
      this.eventsUrl,
      this.forksUrl,
      this.gitCommitsUrl,
      this.gitRefsUrl,
      this.gitTagsUrl,
      this.gitUrl,
      this.issueCommentUrl,
      this.issueEventsUrl,
      this.issuesUrl,
      this.keysUrl,
      this.labelsUrl,
      this.languagesUrl,
      this.mergesUrl,
      this.milestonesUrl,
      this.notificationsUrl,
      this.pullsUrl,
      this.releasesUrl,
      this.sshUrl,
      this.stargazersUrl,
      this.statusesUrl,
      this.subscribersUrl,
      this.subscriptionUrl,
      this.tagsUrl,
      this.teamsUrl,
      this.treesUrl,
      this.cloneUrl,
      this.mirrorUrl,
      this.hooksUrl,
      this.svnUrl,
      this.homepage,
      this.language,
      this.forksCount,
      this.stargazersCount,
      this.watchersCount,
      this.size,
      this.defaultBranch,
      this.openIssuesCount,
      this.isTemplate,
      this.topics,
      this.hasIssues,
      this.hasProjects,
      this.hasWiki,
      this.hasPages,
      this.hasDownloads,
      this.archived,
      this.disabled,
      this.visibility,
      this.pushedAt,
      this.createdAt,
      this.updatedAt,
      this.permissions,
      this.allowRebaseMerge,
      this.tempCloneToken,
      this.allowSquashMerge,
      this.deleteBranchOnMerge,
      this.allowMergeCommit,
      this.subscribersCount,
      this.networkCount})
      : super._();

  @override
  RepositoryTemplateRepository rebuild(
          void Function(RepositoryTemplateRepositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryTemplateRepositoryBuilder toBuilder() =>
      new RepositoryTemplateRepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryTemplateRepository &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        fullName == other.fullName &&
        owner == other.owner &&
        private == other.private &&
        htmlUrl == other.htmlUrl &&
        description == other.description &&
        fork == other.fork &&
        url == other.url &&
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
        downloadsUrl == other.downloadsUrl &&
        eventsUrl == other.eventsUrl &&
        forksUrl == other.forksUrl &&
        gitCommitsUrl == other.gitCommitsUrl &&
        gitRefsUrl == other.gitRefsUrl &&
        gitTagsUrl == other.gitTagsUrl &&
        gitUrl == other.gitUrl &&
        issueCommentUrl == other.issueCommentUrl &&
        issueEventsUrl == other.issueEventsUrl &&
        issuesUrl == other.issuesUrl &&
        keysUrl == other.keysUrl &&
        labelsUrl == other.labelsUrl &&
        languagesUrl == other.languagesUrl &&
        mergesUrl == other.mergesUrl &&
        milestonesUrl == other.milestonesUrl &&
        notificationsUrl == other.notificationsUrl &&
        pullsUrl == other.pullsUrl &&
        releasesUrl == other.releasesUrl &&
        sshUrl == other.sshUrl &&
        stargazersUrl == other.stargazersUrl &&
        statusesUrl == other.statusesUrl &&
        subscribersUrl == other.subscribersUrl &&
        subscriptionUrl == other.subscriptionUrl &&
        tagsUrl == other.tagsUrl &&
        teamsUrl == other.teamsUrl &&
        treesUrl == other.treesUrl &&
        cloneUrl == other.cloneUrl &&
        mirrorUrl == other.mirrorUrl &&
        hooksUrl == other.hooksUrl &&
        svnUrl == other.svnUrl &&
        homepage == other.homepage &&
        language == other.language &&
        forksCount == other.forksCount &&
        stargazersCount == other.stargazersCount &&
        watchersCount == other.watchersCount &&
        size == other.size &&
        defaultBranch == other.defaultBranch &&
        openIssuesCount == other.openIssuesCount &&
        isTemplate == other.isTemplate &&
        topics == other.topics &&
        hasIssues == other.hasIssues &&
        hasProjects == other.hasProjects &&
        hasWiki == other.hasWiki &&
        hasPages == other.hasPages &&
        hasDownloads == other.hasDownloads &&
        archived == other.archived &&
        disabled == other.disabled &&
        visibility == other.visibility &&
        pushedAt == other.pushedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        permissions == other.permissions &&
        allowRebaseMerge == other.allowRebaseMerge &&
        tempCloneToken == other.tempCloneToken &&
        allowSquashMerge == other.allowSquashMerge &&
        deleteBranchOnMerge == other.deleteBranchOnMerge &&
        allowMergeCommit == other.allowMergeCommit &&
        subscribersCount == other.subscribersCount &&
        networkCount == other.networkCount;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), nodeId.hashCode), name.hashCode), fullName.hashCode), owner.hashCode), private.hashCode), htmlUrl.hashCode), description.hashCode), fork.hashCode), url.hashCode), archiveUrl.hashCode), assigneesUrl.hashCode), blobsUrl.hashCode), branchesUrl.hashCode), collaboratorsUrl.hashCode), commentsUrl.hashCode), commitsUrl.hashCode), compareUrl.hashCode), contentsUrl.hashCode), contributorsUrl.hashCode), deploymentsUrl.hashCode), downloadsUrl.hashCode), eventsUrl.hashCode), forksUrl.hashCode), gitCommitsUrl.hashCode), gitRefsUrl.hashCode), gitTagsUrl.hashCode), gitUrl.hashCode), issueCommentUrl.hashCode), issueEventsUrl.hashCode), issuesUrl.hashCode), keysUrl.hashCode), labelsUrl.hashCode), languagesUrl.hashCode), mergesUrl.hashCode), milestonesUrl.hashCode), notificationsUrl.hashCode), pullsUrl.hashCode), releasesUrl.hashCode), sshUrl.hashCode), stargazersUrl.hashCode), statusesUrl.hashCode), subscribersUrl.hashCode), subscriptionUrl.hashCode), tagsUrl.hashCode), teamsUrl.hashCode), treesUrl.hashCode), cloneUrl.hashCode), mirrorUrl.hashCode), hooksUrl.hashCode), svnUrl.hashCode), homepage.hashCode), language.hashCode), forksCount.hashCode), stargazersCount.hashCode), watchersCount.hashCode), size.hashCode), defaultBranch.hashCode), openIssuesCount.hashCode), isTemplate.hashCode), topics.hashCode),
                                                                                hasIssues.hashCode),
                                                                            hasProjects.hashCode),
                                                                        hasWiki.hashCode),
                                                                    hasPages.hashCode),
                                                                hasDownloads.hashCode),
                                                            archived.hashCode),
                                                        disabled.hashCode),
                                                    visibility.hashCode),
                                                pushedAt.hashCode),
                                            createdAt.hashCode),
                                        updatedAt.hashCode),
                                    permissions.hashCode),
                                allowRebaseMerge.hashCode),
                            tempCloneToken.hashCode),
                        allowSquashMerge.hashCode),
                    deleteBranchOnMerge.hashCode),
                allowMergeCommit.hashCode),
            subscribersCount.hashCode),
        networkCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryTemplateRepository')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('fullName', fullName)
          ..add('owner', owner)
          ..add('private', private)
          ..add('htmlUrl', htmlUrl)
          ..add('description', description)
          ..add('fork', fork)
          ..add('url', url)
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
          ..add('downloadsUrl', downloadsUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('forksUrl', forksUrl)
          ..add('gitCommitsUrl', gitCommitsUrl)
          ..add('gitRefsUrl', gitRefsUrl)
          ..add('gitTagsUrl', gitTagsUrl)
          ..add('gitUrl', gitUrl)
          ..add('issueCommentUrl', issueCommentUrl)
          ..add('issueEventsUrl', issueEventsUrl)
          ..add('issuesUrl', issuesUrl)
          ..add('keysUrl', keysUrl)
          ..add('labelsUrl', labelsUrl)
          ..add('languagesUrl', languagesUrl)
          ..add('mergesUrl', mergesUrl)
          ..add('milestonesUrl', milestonesUrl)
          ..add('notificationsUrl', notificationsUrl)
          ..add('pullsUrl', pullsUrl)
          ..add('releasesUrl', releasesUrl)
          ..add('sshUrl', sshUrl)
          ..add('stargazersUrl', stargazersUrl)
          ..add('statusesUrl', statusesUrl)
          ..add('subscribersUrl', subscribersUrl)
          ..add('subscriptionUrl', subscriptionUrl)
          ..add('tagsUrl', tagsUrl)
          ..add('teamsUrl', teamsUrl)
          ..add('treesUrl', treesUrl)
          ..add('cloneUrl', cloneUrl)
          ..add('mirrorUrl', mirrorUrl)
          ..add('hooksUrl', hooksUrl)
          ..add('svnUrl', svnUrl)
          ..add('homepage', homepage)
          ..add('language', language)
          ..add('forksCount', forksCount)
          ..add('stargazersCount', stargazersCount)
          ..add('watchersCount', watchersCount)
          ..add('size', size)
          ..add('defaultBranch', defaultBranch)
          ..add('openIssuesCount', openIssuesCount)
          ..add('isTemplate', isTemplate)
          ..add('topics', topics)
          ..add('hasIssues', hasIssues)
          ..add('hasProjects', hasProjects)
          ..add('hasWiki', hasWiki)
          ..add('hasPages', hasPages)
          ..add('hasDownloads', hasDownloads)
          ..add('archived', archived)
          ..add('disabled', disabled)
          ..add('visibility', visibility)
          ..add('pushedAt', pushedAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('permissions', permissions)
          ..add('allowRebaseMerge', allowRebaseMerge)
          ..add('tempCloneToken', tempCloneToken)
          ..add('allowSquashMerge', allowSquashMerge)
          ..add('deleteBranchOnMerge', deleteBranchOnMerge)
          ..add('allowMergeCommit', allowMergeCommit)
          ..add('subscribersCount', subscribersCount)
          ..add('networkCount', networkCount))
        .toString();
  }
}

class RepositoryTemplateRepositoryBuilder
    implements
        Builder<RepositoryTemplateRepository,
            RepositoryTemplateRepositoryBuilder> {
  _$RepositoryTemplateRepository _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  RepositoryTemplateRepositoryOwnerBuilder _owner;
  RepositoryTemplateRepositoryOwnerBuilder get owner =>
      _$this._owner ??= new RepositoryTemplateRepositoryOwnerBuilder();
  set owner(RepositoryTemplateRepositoryOwnerBuilder owner) =>
      _$this._owner = owner;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _fork;
  bool get fork => _$this._fork;
  set fork(bool fork) => _$this._fork = fork;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

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

  String _downloadsUrl;
  String get downloadsUrl => _$this._downloadsUrl;
  set downloadsUrl(String downloadsUrl) => _$this._downloadsUrl = downloadsUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _forksUrl;
  String get forksUrl => _$this._forksUrl;
  set forksUrl(String forksUrl) => _$this._forksUrl = forksUrl;

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

  String _gitUrl;
  String get gitUrl => _$this._gitUrl;
  set gitUrl(String gitUrl) => _$this._gitUrl = gitUrl;

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

  String _notificationsUrl;
  String get notificationsUrl => _$this._notificationsUrl;
  set notificationsUrl(String notificationsUrl) =>
      _$this._notificationsUrl = notificationsUrl;

  String _pullsUrl;
  String get pullsUrl => _$this._pullsUrl;
  set pullsUrl(String pullsUrl) => _$this._pullsUrl = pullsUrl;

  String _releasesUrl;
  String get releasesUrl => _$this._releasesUrl;
  set releasesUrl(String releasesUrl) => _$this._releasesUrl = releasesUrl;

  String _sshUrl;
  String get sshUrl => _$this._sshUrl;
  set sshUrl(String sshUrl) => _$this._sshUrl = sshUrl;

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

  String _cloneUrl;
  String get cloneUrl => _$this._cloneUrl;
  set cloneUrl(String cloneUrl) => _$this._cloneUrl = cloneUrl;

  String _mirrorUrl;
  String get mirrorUrl => _$this._mirrorUrl;
  set mirrorUrl(String mirrorUrl) => _$this._mirrorUrl = mirrorUrl;

  String _hooksUrl;
  String get hooksUrl => _$this._hooksUrl;
  set hooksUrl(String hooksUrl) => _$this._hooksUrl = hooksUrl;

  String _svnUrl;
  String get svnUrl => _$this._svnUrl;
  set svnUrl(String svnUrl) => _$this._svnUrl = svnUrl;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  int _forksCount;
  int get forksCount => _$this._forksCount;
  set forksCount(int forksCount) => _$this._forksCount = forksCount;

  int _stargazersCount;
  int get stargazersCount => _$this._stargazersCount;
  set stargazersCount(int stargazersCount) =>
      _$this._stargazersCount = stargazersCount;

  int _watchersCount;
  int get watchersCount => _$this._watchersCount;
  set watchersCount(int watchersCount) => _$this._watchersCount = watchersCount;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _defaultBranch;
  String get defaultBranch => _$this._defaultBranch;
  set defaultBranch(String defaultBranch) =>
      _$this._defaultBranch = defaultBranch;

  int _openIssuesCount;
  int get openIssuesCount => _$this._openIssuesCount;
  set openIssuesCount(int openIssuesCount) =>
      _$this._openIssuesCount = openIssuesCount;

  bool _isTemplate;
  bool get isTemplate => _$this._isTemplate;
  set isTemplate(bool isTemplate) => _$this._isTemplate = isTemplate;

  ListBuilder<String> _topics;
  ListBuilder<String> get topics =>
      _$this._topics ??= new ListBuilder<String>();
  set topics(ListBuilder<String> topics) => _$this._topics = topics;

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

  bool _hasDownloads;
  bool get hasDownloads => _$this._hasDownloads;
  set hasDownloads(bool hasDownloads) => _$this._hasDownloads = hasDownloads;

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  bool _disabled;
  bool get disabled => _$this._disabled;
  set disabled(bool disabled) => _$this._disabled = disabled;

  String _visibility;
  String get visibility => _$this._visibility;
  set visibility(String visibility) => _$this._visibility = visibility;

  String _pushedAt;
  String get pushedAt => _$this._pushedAt;
  set pushedAt(String pushedAt) => _$this._pushedAt = pushedAt;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  RepositoryTemplateRepositoryPermissionsBuilder _permissions;
  RepositoryTemplateRepositoryPermissionsBuilder get permissions =>
      _$this._permissions ??=
          new RepositoryTemplateRepositoryPermissionsBuilder();
  set permissions(RepositoryTemplateRepositoryPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  bool _allowRebaseMerge;
  bool get allowRebaseMerge => _$this._allowRebaseMerge;
  set allowRebaseMerge(bool allowRebaseMerge) =>
      _$this._allowRebaseMerge = allowRebaseMerge;

  String _tempCloneToken;
  String get tempCloneToken => _$this._tempCloneToken;
  set tempCloneToken(String tempCloneToken) =>
      _$this._tempCloneToken = tempCloneToken;

  bool _allowSquashMerge;
  bool get allowSquashMerge => _$this._allowSquashMerge;
  set allowSquashMerge(bool allowSquashMerge) =>
      _$this._allowSquashMerge = allowSquashMerge;

  bool _deleteBranchOnMerge;
  bool get deleteBranchOnMerge => _$this._deleteBranchOnMerge;
  set deleteBranchOnMerge(bool deleteBranchOnMerge) =>
      _$this._deleteBranchOnMerge = deleteBranchOnMerge;

  bool _allowMergeCommit;
  bool get allowMergeCommit => _$this._allowMergeCommit;
  set allowMergeCommit(bool allowMergeCommit) =>
      _$this._allowMergeCommit = allowMergeCommit;

  int _subscribersCount;
  int get subscribersCount => _$this._subscribersCount;
  set subscribersCount(int subscribersCount) =>
      _$this._subscribersCount = subscribersCount;

  int _networkCount;
  int get networkCount => _$this._networkCount;
  set networkCount(int networkCount) => _$this._networkCount = networkCount;

  RepositoryTemplateRepositoryBuilder() {
    RepositoryTemplateRepository._initializeBuilder(this);
  }

  RepositoryTemplateRepositoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _fullName = _$v.fullName;
      _owner = _$v.owner?.toBuilder();
      _private = _$v.private;
      _htmlUrl = _$v.htmlUrl;
      _description = _$v.description;
      _fork = _$v.fork;
      _url = _$v.url;
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
      _downloadsUrl = _$v.downloadsUrl;
      _eventsUrl = _$v.eventsUrl;
      _forksUrl = _$v.forksUrl;
      _gitCommitsUrl = _$v.gitCommitsUrl;
      _gitRefsUrl = _$v.gitRefsUrl;
      _gitTagsUrl = _$v.gitTagsUrl;
      _gitUrl = _$v.gitUrl;
      _issueCommentUrl = _$v.issueCommentUrl;
      _issueEventsUrl = _$v.issueEventsUrl;
      _issuesUrl = _$v.issuesUrl;
      _keysUrl = _$v.keysUrl;
      _labelsUrl = _$v.labelsUrl;
      _languagesUrl = _$v.languagesUrl;
      _mergesUrl = _$v.mergesUrl;
      _milestonesUrl = _$v.milestonesUrl;
      _notificationsUrl = _$v.notificationsUrl;
      _pullsUrl = _$v.pullsUrl;
      _releasesUrl = _$v.releasesUrl;
      _sshUrl = _$v.sshUrl;
      _stargazersUrl = _$v.stargazersUrl;
      _statusesUrl = _$v.statusesUrl;
      _subscribersUrl = _$v.subscribersUrl;
      _subscriptionUrl = _$v.subscriptionUrl;
      _tagsUrl = _$v.tagsUrl;
      _teamsUrl = _$v.teamsUrl;
      _treesUrl = _$v.treesUrl;
      _cloneUrl = _$v.cloneUrl;
      _mirrorUrl = _$v.mirrorUrl;
      _hooksUrl = _$v.hooksUrl;
      _svnUrl = _$v.svnUrl;
      _homepage = _$v.homepage;
      _language = _$v.language;
      _forksCount = _$v.forksCount;
      _stargazersCount = _$v.stargazersCount;
      _watchersCount = _$v.watchersCount;
      _size = _$v.size;
      _defaultBranch = _$v.defaultBranch;
      _openIssuesCount = _$v.openIssuesCount;
      _isTemplate = _$v.isTemplate;
      _topics = _$v.topics?.toBuilder();
      _hasIssues = _$v.hasIssues;
      _hasProjects = _$v.hasProjects;
      _hasWiki = _$v.hasWiki;
      _hasPages = _$v.hasPages;
      _hasDownloads = _$v.hasDownloads;
      _archived = _$v.archived;
      _disabled = _$v.disabled;
      _visibility = _$v.visibility;
      _pushedAt = _$v.pushedAt;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _permissions = _$v.permissions?.toBuilder();
      _allowRebaseMerge = _$v.allowRebaseMerge;
      _tempCloneToken = _$v.tempCloneToken;
      _allowSquashMerge = _$v.allowSquashMerge;
      _deleteBranchOnMerge = _$v.deleteBranchOnMerge;
      _allowMergeCommit = _$v.allowMergeCommit;
      _subscribersCount = _$v.subscribersCount;
      _networkCount = _$v.networkCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryTemplateRepository other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryTemplateRepository;
  }

  @override
  void update(void Function(RepositoryTemplateRepositoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryTemplateRepository build() {
    _$RepositoryTemplateRepository _$result;
    try {
      _$result = _$v ??
          new _$RepositoryTemplateRepository._(
              id: id,
              nodeId: nodeId,
              name: name,
              fullName: fullName,
              owner: _owner?.build(),
              private: private,
              htmlUrl: htmlUrl,
              description: description,
              fork: fork,
              url: url,
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
              downloadsUrl: downloadsUrl,
              eventsUrl: eventsUrl,
              forksUrl: forksUrl,
              gitCommitsUrl: gitCommitsUrl,
              gitRefsUrl: gitRefsUrl,
              gitTagsUrl: gitTagsUrl,
              gitUrl: gitUrl,
              issueCommentUrl: issueCommentUrl,
              issueEventsUrl: issueEventsUrl,
              issuesUrl: issuesUrl,
              keysUrl: keysUrl,
              labelsUrl: labelsUrl,
              languagesUrl: languagesUrl,
              mergesUrl: mergesUrl,
              milestonesUrl: milestonesUrl,
              notificationsUrl: notificationsUrl,
              pullsUrl: pullsUrl,
              releasesUrl: releasesUrl,
              sshUrl: sshUrl,
              stargazersUrl: stargazersUrl,
              statusesUrl: statusesUrl,
              subscribersUrl: subscribersUrl,
              subscriptionUrl: subscriptionUrl,
              tagsUrl: tagsUrl,
              teamsUrl: teamsUrl,
              treesUrl: treesUrl,
              cloneUrl: cloneUrl,
              mirrorUrl: mirrorUrl,
              hooksUrl: hooksUrl,
              svnUrl: svnUrl,
              homepage: homepage,
              language: language,
              forksCount: forksCount,
              stargazersCount: stargazersCount,
              watchersCount: watchersCount,
              size: size,
              defaultBranch: defaultBranch,
              openIssuesCount: openIssuesCount,
              isTemplate: isTemplate,
              topics: _topics?.build(),
              hasIssues: hasIssues,
              hasProjects: hasProjects,
              hasWiki: hasWiki,
              hasPages: hasPages,
              hasDownloads: hasDownloads,
              archived: archived,
              disabled: disabled,
              visibility: visibility,
              pushedAt: pushedAt,
              createdAt: createdAt,
              updatedAt: updatedAt,
              permissions: _permissions?.build(),
              allowRebaseMerge: allowRebaseMerge,
              tempCloneToken: tempCloneToken,
              allowSquashMerge: allowSquashMerge,
              deleteBranchOnMerge: deleteBranchOnMerge,
              allowMergeCommit: allowMergeCommit,
              subscribersCount: subscribersCount,
              networkCount: networkCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'topics';
        _topics?.build();

        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RepositoryTemplateRepository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
