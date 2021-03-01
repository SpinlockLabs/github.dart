//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repository_template_repository_permissions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository_template_repository_owner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_template_repository.g.dart';

abstract class RepositoryTemplateRepository implements Built<RepositoryTemplateRepository, RepositoryTemplateRepositoryBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'full_name')
    String get fullName;

    @nullable
    @BuiltValueField(wireName: r'owner')
    RepositoryTemplateRepositoryOwner get owner;

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

    @nullable
    @BuiltValueField(wireName: r'default_branch')
    String get defaultBranch;

    @nullable
    @BuiltValueField(wireName: r'open_issues_count')
    int get openIssuesCount;

    @nullable
    @BuiltValueField(wireName: r'is_template')
    bool get isTemplate;

    @nullable
    @BuiltValueField(wireName: r'topics')
    BuiltList<String> get topics;

    @nullable
    @BuiltValueField(wireName: r'has_issues')
    bool get hasIssues;

    @nullable
    @BuiltValueField(wireName: r'has_projects')
    bool get hasProjects;

    @nullable
    @BuiltValueField(wireName: r'has_wiki')
    bool get hasWiki;

    @nullable
    @BuiltValueField(wireName: r'has_pages')
    bool get hasPages;

    @nullable
    @BuiltValueField(wireName: r'has_downloads')
    bool get hasDownloads;

    @nullable
    @BuiltValueField(wireName: r'archived')
    bool get archived;

    @nullable
    @BuiltValueField(wireName: r'disabled')
    bool get disabled;

    @nullable
    @BuiltValueField(wireName: r'visibility')
    String get visibility;

    @nullable
    @BuiltValueField(wireName: r'pushed_at')
    String get pushedAt;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    RepositoryTemplateRepositoryPermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'allow_rebase_merge')
    bool get allowRebaseMerge;

    @nullable
    @BuiltValueField(wireName: r'temp_clone_token')
    String get tempCloneToken;

    @nullable
    @BuiltValueField(wireName: r'allow_squash_merge')
    bool get allowSquashMerge;

    @nullable
    @BuiltValueField(wireName: r'delete_branch_on_merge')
    bool get deleteBranchOnMerge;

    @nullable
    @BuiltValueField(wireName: r'allow_merge_commit')
    bool get allowMergeCommit;

    @nullable
    @BuiltValueField(wireName: r'subscribers_count')
    int get subscribersCount;

    @nullable
    @BuiltValueField(wireName: r'network_count')
    int get networkCount;

    // Boilerplate code needed to wire-up generated code
    RepositoryTemplateRepository._();

    static void _initializeBuilder(RepositoryTemplateRepositoryBuilder b) => b;

    factory RepositoryTemplateRepository([void updates(RepositoryTemplateRepositoryBuilder b)]) = _$RepositoryTemplateRepository;
    static Serializer<RepositoryTemplateRepository> get serializer => _$repositoryTemplateRepositorySerializer;
}

