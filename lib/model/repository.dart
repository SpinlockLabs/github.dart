//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repository_template_repository.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/license_simple.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository.g.dart';

abstract class Repository implements Built<Repository, RepositoryBuilder> {

    /// Unique identifier of the repository
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The name of the repository.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'full_name')
    String get fullName;

    @nullable
    @BuiltValueField(wireName: r'license')
    LicenseSimple get license;

    @nullable
    @BuiltValueField(wireName: r'forks')
    int get forks;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    RepositoryPermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'owner')
    SimpleUser get owner;

    /// Whether the repository is private or public.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'fork')
    bool get fork;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'archive_url')
    String get archiveUrl;

    @nullable
    @BuiltValueField(wireName: r'assignees_url')
    String get assigneesUrl;

    @nullable
    @BuiltValueField(wireName: r'blobs_url')
    String get blobsUrl;

    @nullable
    @BuiltValueField(wireName: r'branches_url')
    String get branchesUrl;

    @nullable
    @BuiltValueField(wireName: r'collaborators_url')
    String get collaboratorsUrl;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'commits_url')
    String get commitsUrl;

    @nullable
    @BuiltValueField(wireName: r'compare_url')
    String get compareUrl;

    @nullable
    @BuiltValueField(wireName: r'contents_url')
    String get contentsUrl;

    @nullable
    @BuiltValueField(wireName: r'contributors_url')
    String get contributorsUrl;

    @nullable
    @BuiltValueField(wireName: r'deployments_url')
    String get deploymentsUrl;

    @nullable
    @BuiltValueField(wireName: r'downloads_url')
    String get downloadsUrl;

    @nullable
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

    @nullable
    @BuiltValueField(wireName: r'forks_url')
    String get forksUrl;

    @nullable
    @BuiltValueField(wireName: r'git_commits_url')
    String get gitCommitsUrl;

    @nullable
    @BuiltValueField(wireName: r'git_refs_url')
    String get gitRefsUrl;

    @nullable
    @BuiltValueField(wireName: r'git_tags_url')
    String get gitTagsUrl;

    @nullable
    @BuiltValueField(wireName: r'git_url')
    String get gitUrl;

    @nullable
    @BuiltValueField(wireName: r'issue_comment_url')
    String get issueCommentUrl;

    @nullable
    @BuiltValueField(wireName: r'issue_events_url')
    String get issueEventsUrl;

    @nullable
    @BuiltValueField(wireName: r'issues_url')
    String get issuesUrl;

    @nullable
    @BuiltValueField(wireName: r'keys_url')
    String get keysUrl;

    @nullable
    @BuiltValueField(wireName: r'labels_url')
    String get labelsUrl;

    @nullable
    @BuiltValueField(wireName: r'languages_url')
    String get languagesUrl;

    @nullable
    @BuiltValueField(wireName: r'merges_url')
    String get mergesUrl;

    @nullable
    @BuiltValueField(wireName: r'milestones_url')
    String get milestonesUrl;

    @nullable
    @BuiltValueField(wireName: r'notifications_url')
    String get notificationsUrl;

    @nullable
    @BuiltValueField(wireName: r'pulls_url')
    String get pullsUrl;

    @nullable
    @BuiltValueField(wireName: r'releases_url')
    String get releasesUrl;

    @nullable
    @BuiltValueField(wireName: r'ssh_url')
    String get sshUrl;

    @nullable
    @BuiltValueField(wireName: r'stargazers_url')
    String get stargazersUrl;

    @nullable
    @BuiltValueField(wireName: r'statuses_url')
    String get statusesUrl;

    @nullable
    @BuiltValueField(wireName: r'subscribers_url')
    String get subscribersUrl;

    @nullable
    @BuiltValueField(wireName: r'subscription_url')
    String get subscriptionUrl;

    @nullable
    @BuiltValueField(wireName: r'tags_url')
    String get tagsUrl;

    @nullable
    @BuiltValueField(wireName: r'teams_url')
    String get teamsUrl;

    @nullable
    @BuiltValueField(wireName: r'trees_url')
    String get treesUrl;

    @nullable
    @BuiltValueField(wireName: r'clone_url')
    String get cloneUrl;

    @nullable
    @BuiltValueField(wireName: r'mirror_url')
    String get mirrorUrl;

    @nullable
    @BuiltValueField(wireName: r'hooks_url')
    String get hooksUrl;

    @nullable
    @BuiltValueField(wireName: r'svn_url')
    String get svnUrl;

    @nullable
    @BuiltValueField(wireName: r'homepage')
    String get homepage;

    @nullable
    @BuiltValueField(wireName: r'language')
    String get language;

    @nullable
    @BuiltValueField(wireName: r'forks_count')
    int get forksCount;

    @nullable
    @BuiltValueField(wireName: r'stargazers_count')
    int get stargazersCount;

    @nullable
    @BuiltValueField(wireName: r'watchers_count')
    int get watchersCount;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    /// The default branch of the repository.
    @nullable
    @BuiltValueField(wireName: r'default_branch')
    String get defaultBranch;

    @nullable
    @BuiltValueField(wireName: r'open_issues_count')
    int get openIssuesCount;

    /// Whether this repository acts as a template that can be used to generate new repositories.
    @nullable
    @BuiltValueField(wireName: r'is_template')
    bool get isTemplate;

    @nullable
    @BuiltValueField(wireName: r'topics')
    BuiltList<String> get topics;

    /// Whether issues are enabled.
    @nullable
    @BuiltValueField(wireName: r'has_issues')
    bool get hasIssues;

    /// Whether projects are enabled.
    @nullable
    @BuiltValueField(wireName: r'has_projects')
    bool get hasProjects;

    /// Whether the wiki is enabled.
    @nullable
    @BuiltValueField(wireName: r'has_wiki')
    bool get hasWiki;

    @nullable
    @BuiltValueField(wireName: r'has_pages')
    bool get hasPages;

    /// Whether downloads are enabled.
    @nullable
    @BuiltValueField(wireName: r'has_downloads')
    bool get hasDownloads;

    /// Whether the repository is archived.
    @nullable
    @BuiltValueField(wireName: r'archived')
    bool get archived;

    /// Returns whether or not this repository disabled.
    @nullable
    @BuiltValueField(wireName: r'disabled')
    bool get disabled;

    /// The repository visibility: public, private, or internal.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    String get visibility;

    @nullable
    @BuiltValueField(wireName: r'pushed_at')
    DateTime get pushedAt;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// Whether to allow rebase merges for pull requests.
    @nullable
    @BuiltValueField(wireName: r'allow_rebase_merge')
    bool get allowRebaseMerge;

    @nullable
    @BuiltValueField(wireName: r'template_repository')
    RepositoryTemplateRepository get templateRepository;

    @nullable
    @BuiltValueField(wireName: r'temp_clone_token')
    String get tempCloneToken;

    /// Whether to allow squash merges for pull requests.
    @nullable
    @BuiltValueField(wireName: r'allow_squash_merge')
    bool get allowSquashMerge;

    /// Whether to delete head branches when pull requests are merged
    @nullable
    @BuiltValueField(wireName: r'delete_branch_on_merge')
    bool get deleteBranchOnMerge;

    /// Whether to allow merge commits for pull requests.
    @nullable
    @BuiltValueField(wireName: r'allow_merge_commit')
    bool get allowMergeCommit;

    @nullable
    @BuiltValueField(wireName: r'subscribers_count')
    int get subscribersCount;

    @nullable
    @BuiltValueField(wireName: r'network_count')
    int get networkCount;

    @nullable
    @BuiltValueField(wireName: r'open_issues')
    int get openIssues;

    @nullable
    @BuiltValueField(wireName: r'watchers')
    int get watchers;

    @nullable
    @BuiltValueField(wireName: r'master_branch')
    String get masterBranch;

    @nullable
    @BuiltValueField(wireName: r'starred_at')
    String get starredAt;

    // Boilerplate code needed to wire-up generated code
    Repository._();

    static void _initializeBuilder(RepositoryBuilder b) => b
        ..private = false
        ..isTemplate = false
        ..hasIssues = true
        ..hasProjects = true
        ..hasWiki = true
        ..hasDownloads = true
        ..archived = false
        ..visibility = 'public'
        ..allowRebaseMerge = true
        ..allowSquashMerge = true
        ..deleteBranchOnMerge = false
        ..allowMergeCommit = true;

    factory Repository([void updates(RepositoryBuilder b)]) = _$Repository;
    static Serializer<Repository> get serializer => _$repositorySerializer;
}

