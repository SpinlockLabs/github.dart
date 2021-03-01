//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object163.g.dart';

abstract class InlineObject163 implements Built<InlineObject163, InlineObject163Builder> {

    /// The name of the team.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The description of the team.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.
    @nullable
    @BuiltValueField(wireName: r'privacy')
    InlineObject163PrivacyEnum get privacy;
    // enum privacyEnum {  secret,  closed,  };

    /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject163PermissionEnum get permission;
    // enum permissionEnum {  pull,  push,  admin,  };

    /// The ID of a team to set as the parent team.
    @nullable
    @BuiltValueField(wireName: r'parent_team_id')
    int get parentTeamId;

    // Boilerplate code needed to wire-up generated code
    InlineObject163._();

    static void _initializeBuilder(InlineObject163Builder b) => b
        ..permission = const InlineObject163PermissionEnum._('pull');

    factory InlineObject163([void updates(InlineObject163Builder b)]) = _$InlineObject163;
    static Serializer<InlineObject163> get serializer => _$inlineObject163Serializer;
}

class InlineObject163PrivacyEnum extends EnumClass {

  /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.
  @BuiltValueEnumConst(wireName: r'secret')
  static const InlineObject163PrivacyEnum secret = _$inlineObject163PrivacyEnum_secret;
  /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject163PrivacyEnum closed = _$inlineObject163PrivacyEnum_closed;

  static Serializer<InlineObject163PrivacyEnum> get serializer => _$inlineObject163PrivacyEnumSerializer;

  const InlineObject163PrivacyEnum._(String name): super(name);

  static BuiltSet<InlineObject163PrivacyEnum> get values => _$inlineObject163PrivacyEnumValues;
  static InlineObject163PrivacyEnum valueOf(String name) => _$inlineObject163PrivacyEnumValueOf(name);
}

class InlineObject163PermissionEnum extends EnumClass {

  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'pull')
  static const InlineObject163PermissionEnum pull = _$inlineObject163PermissionEnum_pull;
  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'push')
  static const InlineObject163PermissionEnum push = _$inlineObject163PermissionEnum_push;
  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject163PermissionEnum admin = _$inlineObject163PermissionEnum_admin;

  static Serializer<InlineObject163PermissionEnum> get serializer => _$inlineObject163PermissionEnumSerializer;

  const InlineObject163PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject163PermissionEnum> get values => _$inlineObject163PermissionEnumValues;
  static InlineObject163PermissionEnum valueOf(String name) => _$inlineObject163PermissionEnumValueOf(name);
}

