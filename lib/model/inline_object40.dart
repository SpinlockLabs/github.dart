//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object40.g.dart';

abstract class InlineObject40 implements Built<InlineObject40, InlineObject40Builder> {

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

    /// Either `true` to create a private repository or `false` to create a public one.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject40VisibilityEnum get visibility;
    // enum visibilityEnum {  public,  private,  visibility,  internal,  };

    /// Either `true` to enable issues for this repository or `false` to disable them.
    @nullable
    @BuiltValueField(wireName: r'has_issues')
    bool get hasIssues;

    /// Either `true` to enable projects for this repository or `false` to disable them. **Note:** If you're creating a repository in an organization that has disabled repository projects, the default is `false`, and if you pass `true`, the API returns an error.
    @nullable
    @BuiltValueField(wireName: r'has_projects')
    bool get hasProjects;

    /// Either `true` to enable the wiki for this repository or `false` to disable it.
    @nullable
    @BuiltValueField(wireName: r'has_wiki')
    bool get hasWiki;

    /// Either `true` to make this repo available as a template repository or `false` to prevent it.
    @nullable
    @BuiltValueField(wireName: r'is_template')
    bool get isTemplate;

    /// The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
    @nullable
    @BuiltValueField(wireName: r'team_id')
    int get teamId;

    /// Pass `true` to create an initial commit with empty README.
    @nullable
    @BuiltValueField(wireName: r'auto_init')
    bool get autoInit;

    /// Desired language or platform [.gitignore template](https://github.com/github/gitignore) to apply. Use the name of the template without the extension. For example, \"Haskell\".
    @nullable
    @BuiltValueField(wireName: r'gitignore_template')
    String get gitignoreTemplate;

    /// Choose an [open source license template](https://choosealicense.com/) that best suits your needs, and then use the [license keyword](https://help.github.com/articles/licensing-a-repository/#searching-github-by-license-type) as the `license_template` string. For example, \"mit\" or \"mpl-2.0\".
    @nullable
    @BuiltValueField(wireName: r'license_template')
    String get licenseTemplate;

    /// Either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging.
    @nullable
    @BuiltValueField(wireName: r'allow_squash_merge')
    bool get allowSquashMerge;

    /// Either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits.
    @nullable
    @BuiltValueField(wireName: r'allow_merge_commit')
    bool get allowMergeCommit;

    /// Either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging.
    @nullable
    @BuiltValueField(wireName: r'allow_rebase_merge')
    bool get allowRebaseMerge;

    /// Either `true` to allow automatically deleting head branches when pull requests are merged, or `false` to prevent automatic deletion.
    @nullable
    @BuiltValueField(wireName: r'delete_branch_on_merge')
    bool get deleteBranchOnMerge;

    // Boilerplate code needed to wire-up generated code
    InlineObject40._();

    static void _initializeBuilder(InlineObject40Builder b) => b
        ..private = false
        ..hasIssues = true
        ..hasProjects = true
        ..hasWiki = true
        ..isTemplate = false
        ..autoInit = false
        ..allowSquashMerge = true
        ..allowMergeCommit = true
        ..allowRebaseMerge = true
        ..deleteBranchOnMerge = false;

    factory InlineObject40([void updates(InlineObject40Builder b)]) = _$InlineObject40;
    static Serializer<InlineObject40> get serializer => _$inlineObject40Serializer;
}

class InlineObject40VisibilityEnum extends EnumClass {

  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'public')
  static const InlineObject40VisibilityEnum public = _$inlineObject40VisibilityEnum_public;
  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject40VisibilityEnum private = _$inlineObject40VisibilityEnum_private;
  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'visibility')
  static const InlineObject40VisibilityEnum visibility = _$inlineObject40VisibilityEnum_visibility;
  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'internal')
  static const InlineObject40VisibilityEnum internal = _$inlineObject40VisibilityEnum_internal;

  static Serializer<InlineObject40VisibilityEnum> get serializer => _$inlineObject40VisibilityEnumSerializer;

  const InlineObject40VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject40VisibilityEnum> get values => _$inlineObject40VisibilityEnumValues;
  static InlineObject40VisibilityEnum valueOf(String name) => _$inlineObject40VisibilityEnumValueOf(name);
}

