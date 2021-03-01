//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object24.g.dart';

abstract class InlineObject24 implements Built<InlineObject24, InlineObject24Builder> {

    /// Billing email address. This address is not publicized.
    @nullable
    @BuiltValueField(wireName: r'billing_email')
    String get billingEmail;

    /// The company name.
    @nullable
    @BuiltValueField(wireName: r'company')
    String get company;

    /// The publicly visible email address.
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// The Twitter username of the company.
    @nullable
    @BuiltValueField(wireName: r'twitter_username')
    String get twitterUsername;

    /// The location.
    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    /// The shorthand name of the company.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The description of the company.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Toggles whether an organization can use organization projects.
    @nullable
    @BuiltValueField(wireName: r'has_organization_projects')
    bool get hasOrganizationProjects;

    /// Toggles whether repositories that belong to the organization can use repository projects.
    @nullable
    @BuiltValueField(wireName: r'has_repository_projects')
    bool get hasRepositoryProjects;

    /// Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default.
    @nullable
    @BuiltValueField(wireName: r'default_repository_permission')
    InlineObject24DefaultRepositoryPermissionEnum get defaultRepositoryPermission;
    // enum defaultRepositoryPermissionEnum {  read,  write,  admin,  none,  };

    /// Toggles the ability of non-admin organization members to create repositories. Can be one of:   \\* `true` - all organization members can create repositories.   \\* `false` - only organization owners can create repositories.   Default: `true`   **Note:** A parameter can override this parameter. See `members_allowed_repository_creation_type` in this table for details. **Note:** A parameter can override this parameter. See `members_allowed_repository_creation_type` in this table for details.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_repositories')
    bool get membersCanCreateRepositories;

    /// Toggles whether organization members can create internal repositories, which are visible to all enterprise members. You can only allow members to create internal repositories if your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. Can be one of:   \\* `true` - all organization members can create internal repositories.   \\* `false` - only organization owners can create internal repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_internal_repositories')
    bool get membersCanCreateInternalRepositories;

    /// Toggles whether organization members can create private repositories, which are visible to organization members with permission. Can be one of:   \\* `true` - all organization members can create private repositories.   \\* `false` - only organization owners can create private repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_private_repositories')
    bool get membersCanCreatePrivateRepositories;

    /// Toggles whether organization members can create public repositories, which are visible to anyone. Can be one of:   \\* `true` - all organization members can create public repositories.   \\* `false` - only organization owners can create public repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_public_repositories')
    bool get membersCanCreatePublicRepositories;

    /// Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* `all` - all organization members can create public and private repositories.   \\* `private` - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* `none` - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in `members_can_create_repositories`. See the parameter deprecation notice in the operation description for details.
    @nullable
    @BuiltValueField(wireName: r'members_allowed_repository_creation_type')
    InlineObject24MembersAllowedRepositoryCreationTypeEnum get membersAllowedRepositoryCreationType;
    // enum membersAllowedRepositoryCreationTypeEnum {  all,  private,  none,  };

    /// Toggles whether organization members can create GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create GitHub Pages sites.   \\* `false` - no organization members can create GitHub Pages sites. Existing published sites will not be impacted.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_pages')
    bool get membersCanCreatePages;

    /// Toggles whether organization members can create public GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create public GitHub Pages sites.   \\* `false` - no organization members can create public GitHub Pages sites. Existing published sites will not be impacted.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_public_pages')
    bool get membersCanCreatePublicPages;

    /// Toggles whether organization members can create private GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create private GitHub Pages sites.   \\* `false` - no organization members can create private GitHub Pages sites. Existing published sites will not be impacted.
    @nullable
    @BuiltValueField(wireName: r'members_can_create_private_pages')
    bool get membersCanCreatePrivatePages;

    @nullable
    @BuiltValueField(wireName: r'blog')
    String get blog;

    // Boilerplate code needed to wire-up generated code
    InlineObject24._();

    static void _initializeBuilder(InlineObject24Builder b) => b
        ..defaultRepositoryPermission = const InlineObject24DefaultRepositoryPermissionEnum._('read')
        ..membersCanCreateRepositories = true
        ..membersCanCreatePages = true
        ..membersCanCreatePublicPages = true
        ..membersCanCreatePrivatePages = true;

    factory InlineObject24([void updates(InlineObject24Builder b)]) = _$InlineObject24;
    static Serializer<InlineObject24> get serializer => _$inlineObject24Serializer;
}

class InlineObject24DefaultRepositoryPermissionEnum extends EnumClass {

  /// Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default.
  @BuiltValueEnumConst(wireName: r'read')
  static const InlineObject24DefaultRepositoryPermissionEnum read = _$inlineObject24DefaultRepositoryPermissionEnum_read;
  /// Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default.
  @BuiltValueEnumConst(wireName: r'write')
  static const InlineObject24DefaultRepositoryPermissionEnum write = _$inlineObject24DefaultRepositoryPermissionEnum_write;
  /// Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject24DefaultRepositoryPermissionEnum admin = _$inlineObject24DefaultRepositoryPermissionEnum_admin;
  /// Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default.
  @BuiltValueEnumConst(wireName: r'none')
  static const InlineObject24DefaultRepositoryPermissionEnum none = _$inlineObject24DefaultRepositoryPermissionEnum_none;

  static Serializer<InlineObject24DefaultRepositoryPermissionEnum> get serializer => _$inlineObject24DefaultRepositoryPermissionEnumSerializer;

  const InlineObject24DefaultRepositoryPermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject24DefaultRepositoryPermissionEnum> get values => _$inlineObject24DefaultRepositoryPermissionEnumValues;
  static InlineObject24DefaultRepositoryPermissionEnum valueOf(String name) => _$inlineObject24DefaultRepositoryPermissionEnumValueOf(name);
}

class InlineObject24MembersAllowedRepositoryCreationTypeEnum extends EnumClass {

  /// Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* `all` - all organization members can create public and private repositories.   \\* `private` - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* `none` - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in `members_can_create_repositories`. See the parameter deprecation notice in the operation description for details.
  @BuiltValueEnumConst(wireName: r'all')
  static const InlineObject24MembersAllowedRepositoryCreationTypeEnum all = _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_all;
  /// Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* `all` - all organization members can create public and private repositories.   \\* `private` - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* `none` - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in `members_can_create_repositories`. See the parameter deprecation notice in the operation description for details.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject24MembersAllowedRepositoryCreationTypeEnum private = _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_private;
  /// Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* `all` - all organization members can create public and private repositories.   \\* `private` - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* `none` - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in `members_can_create_repositories`. See the parameter deprecation notice in the operation description for details.
  @BuiltValueEnumConst(wireName: r'none')
  static const InlineObject24MembersAllowedRepositoryCreationTypeEnum none = _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_none;

  static Serializer<InlineObject24MembersAllowedRepositoryCreationTypeEnum> get serializer => _$inlineObject24MembersAllowedRepositoryCreationTypeEnumSerializer;

  const InlineObject24MembersAllowedRepositoryCreationTypeEnum._(String name): super(name);

  static BuiltSet<InlineObject24MembersAllowedRepositoryCreationTypeEnum> get values => _$inlineObject24MembersAllowedRepositoryCreationTypeEnumValues;
  static InlineObject24MembersAllowedRepositoryCreationTypeEnum valueOf(String name) => _$inlineObject24MembersAllowedRepositoryCreationTypeEnumValueOf(name);
}

