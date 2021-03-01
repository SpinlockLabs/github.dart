//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object41.g.dart';

abstract class InlineObject41 implements Built<InlineObject41, InlineObject41Builder> {

    /// The name of the team.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The description of the team.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// List GitHub IDs for organization members who will become team maintainers.
    @nullable
    @BuiltValueField(wireName: r'maintainers')
    BuiltList<String> get maintainers;

    /// The full name (e.g., \"organization-name/repository-name\") of repositories to add the team to.
    @nullable
    @BuiltValueField(wireName: r'repo_names')
    BuiltList<String> get repoNames;

    /// The level of privacy this team should have. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   Default: `secret`   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.   Default for child team: `closed`
    @nullable
    @BuiltValueField(wireName: r'privacy')
    InlineObject41PrivacyEnum get privacy;
    // enum privacyEnum {  secret,  closed,  };

    /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject41PermissionEnum get permission;
    // enum permissionEnum {  pull,  push,  admin,  };

    /// The ID of a team to set as the parent team.
    @nullable
    @BuiltValueField(wireName: r'parent_team_id')
    int get parentTeamId;

    // Boilerplate code needed to wire-up generated code
    InlineObject41._();

    static void _initializeBuilder(InlineObject41Builder b) => b
        ..permission = const InlineObject41PermissionEnum._('pull');

    factory InlineObject41([void updates(InlineObject41Builder b)]) = _$InlineObject41;
    static Serializer<InlineObject41> get serializer => _$inlineObject41Serializer;
}

class InlineObject41PrivacyEnum extends EnumClass {

  /// The level of privacy this team should have. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   Default: `secret`   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.   Default for child team: `closed`
  @BuiltValueEnumConst(wireName: r'secret')
  static const InlineObject41PrivacyEnum secret = _$inlineObject41PrivacyEnum_secret;
  /// The level of privacy this team should have. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   Default: `secret`   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.   Default for child team: `closed`
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject41PrivacyEnum closed = _$inlineObject41PrivacyEnum_closed;

  static Serializer<InlineObject41PrivacyEnum> get serializer => _$inlineObject41PrivacyEnumSerializer;

  const InlineObject41PrivacyEnum._(String name): super(name);

  static BuiltSet<InlineObject41PrivacyEnum> get values => _$inlineObject41PrivacyEnumValues;
  static InlineObject41PrivacyEnum valueOf(String name) => _$inlineObject41PrivacyEnumValueOf(name);
}

class InlineObject41PermissionEnum extends EnumClass {

  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'pull')
  static const InlineObject41PermissionEnum pull = _$inlineObject41PermissionEnum_pull;
  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'push')
  static const InlineObject41PermissionEnum push = _$inlineObject41PermissionEnum_push;
  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject41PermissionEnum admin = _$inlineObject41PermissionEnum_admin;

  static Serializer<InlineObject41PermissionEnum> get serializer => _$inlineObject41PermissionEnumSerializer;

  const InlineObject41PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject41PermissionEnum> get values => _$inlineObject41PermissionEnumValues;
  static InlineObject41PermissionEnum valueOf(String name) => _$inlineObject41PermissionEnumValueOf(name);
}

