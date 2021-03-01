//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object181.g.dart';

abstract class InlineObject181 implements Built<InlineObject181, InlineObject181Builder> {

    /// The name of the repository.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// A short description of the repository.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// A URL with more information about the repository.
    @nullable
    @BuiltValueField(wireName: r'homepage')
    String get homepage;

    /// Whether the repository is private or public.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

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

    /// The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
    @nullable
    @BuiltValueField(wireName: r'team_id')
    int get teamId;

    /// Whether the repository is initialized with a minimal README.
    @nullable
    @BuiltValueField(wireName: r'auto_init')
    bool get autoInit;

    /// The desired language or platform to apply to the .gitignore.
    @nullable
    @BuiltValueField(wireName: r'gitignore_template')
    String get gitignoreTemplate;

    /// The license keyword of the open source license for this repository.
    @nullable
    @BuiltValueField(wireName: r'license_template')
    String get licenseTemplate;

    /// Whether to allow squash merges for pull requests.
    @nullable
    @BuiltValueField(wireName: r'allow_squash_merge')
    bool get allowSquashMerge;

    /// Whether to allow merge commits for pull requests.
    @nullable
    @BuiltValueField(wireName: r'allow_merge_commit')
    bool get allowMergeCommit;

    /// Whether to allow rebase merges for pull requests.
    @nullable
    @BuiltValueField(wireName: r'allow_rebase_merge')
    bool get allowRebaseMerge;

    /// Whether to delete head branches when pull requests are merged
    @nullable
    @BuiltValueField(wireName: r'delete_branch_on_merge')
    bool get deleteBranchOnMerge;

    /// Whether downloads are enabled.
    @nullable
    @BuiltValueField(wireName: r'has_downloads')
    bool get hasDownloads;

    /// Whether this repository acts as a template that can be used to generate new repositories.
    @nullable
    @BuiltValueField(wireName: r'is_template')
    bool get isTemplate;

    // Boilerplate code needed to wire-up generated code
    InlineObject181._();

    static void _initializeBuilder(InlineObject181Builder b) => b
        ..private = false
        ..hasIssues = true
        ..hasProjects = true
        ..hasWiki = true
        ..autoInit = false
        ..allowSquashMerge = true
        ..allowMergeCommit = true
        ..allowRebaseMerge = true
        ..deleteBranchOnMerge = false
        ..hasDownloads = true
        ..isTemplate = false;

    factory InlineObject181([void updates(InlineObject181Builder b)]) = _$InlineObject181;
    static Serializer<InlineObject181> get serializer => _$inlineObject181Serializer;
}

