//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object60.g.dart';

abstract class InlineObject60 implements Built<InlineObject60, InlineObject60Builder> {

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

    /// Either `true` to make the repository private or `false` to make it public. Default: `false`.   **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private. **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject60VisibilityEnum get visibility;
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

    /// Updates the default branch for this repository.
    @nullable
    @BuiltValueField(wireName: r'default_branch')
    String get defaultBranch;

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

    /// `true` to archive this repository. **Note**: You cannot unarchive repositories through the API.
    @nullable
    @BuiltValueField(wireName: r'archived')
    bool get archived;

    // Boilerplate code needed to wire-up generated code
    InlineObject60._();

    static void _initializeBuilder(InlineObject60Builder b) => b
        ..private = false
        ..hasIssues = true
        ..hasProjects = true
        ..hasWiki = true
        ..isTemplate = false
        ..allowSquashMerge = true
        ..allowMergeCommit = true
        ..allowRebaseMerge = true
        ..deleteBranchOnMerge = false
        ..archived = false;

    factory InlineObject60([void updates(InlineObject60Builder b)]) = _$InlineObject60;
    static Serializer<InlineObject60> get serializer => _$inlineObject60Serializer;
}

class InlineObject60VisibilityEnum extends EnumClass {

  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'public')
  static const InlineObject60VisibilityEnum public = _$inlineObject60VisibilityEnum_public;
  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject60VisibilityEnum private = _$inlineObject60VisibilityEnum_private;
  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'visibility')
  static const InlineObject60VisibilityEnum visibility = _$inlineObject60VisibilityEnum_visibility;
  /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header.
  @BuiltValueEnumConst(wireName: r'internal')
  static const InlineObject60VisibilityEnum internal = _$inlineObject60VisibilityEnum_internal;

  static Serializer<InlineObject60VisibilityEnum> get serializer => _$inlineObject60VisibilityEnumSerializer;

  const InlineObject60VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject60VisibilityEnum> get values => _$inlineObject60VisibilityEnumValues;
  static InlineObject60VisibilityEnum valueOf(String name) => _$inlineObject60VisibilityEnumValueOf(name);
}

