//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object42.g.dart';

abstract class InlineObject42 implements Built<InlineObject42, InlineObject42Builder> {

    /// The name of the team.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The description of the team.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. When a team is nested, the `privacy` for parent teams cannot be `secret`. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.
    @nullable
    @BuiltValueField(wireName: r'privacy')
    InlineObject42PrivacyEnum get privacy;
    // enum privacyEnum {  secret,  closed,  };

    /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject42PermissionEnum get permission;
    // enum permissionEnum {  pull,  push,  admin,  };

    /// The ID of a team to set as the parent team.
    @nullable
    @BuiltValueField(wireName: r'parent_team_id')
    int get parentTeamId;

    // Boilerplate code needed to wire-up generated code
    InlineObject42._();

    static void _initializeBuilder(InlineObject42Builder b) => b
        ..permission = const InlineObject42PermissionEnum._('pull');

    factory InlineObject42([void updates(InlineObject42Builder b)]) = _$InlineObject42;
    static Serializer<InlineObject42> get serializer => _$inlineObject42Serializer;
}

class InlineObject42PrivacyEnum extends EnumClass {

  /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. When a team is nested, the `privacy` for parent teams cannot be `secret`. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.
  @BuiltValueEnumConst(wireName: r'secret')
  static const InlineObject42PrivacyEnum secret = _$inlineObject42PrivacyEnum_secret;
  /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. When a team is nested, the `privacy` for parent teams cannot be `secret`. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject42PrivacyEnum closed = _$inlineObject42PrivacyEnum_closed;

  static Serializer<InlineObject42PrivacyEnum> get serializer => _$inlineObject42PrivacyEnumSerializer;

  const InlineObject42PrivacyEnum._(String name): super(name);

  static BuiltSet<InlineObject42PrivacyEnum> get values => _$inlineObject42PrivacyEnumValues;
  static InlineObject42PrivacyEnum valueOf(String name) => _$inlineObject42PrivacyEnumValueOf(name);
}

class InlineObject42PermissionEnum extends EnumClass {

  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'pull')
  static const InlineObject42PermissionEnum pull = _$inlineObject42PermissionEnum_pull;
  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'push')
  static const InlineObject42PermissionEnum push = _$inlineObject42PermissionEnum_push;
  /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject42PermissionEnum admin = _$inlineObject42PermissionEnum_admin;

  static Serializer<InlineObject42PermissionEnum> get serializer => _$inlineObject42PermissionEnumSerializer;

  const InlineObject42PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject42PermissionEnum> get values => _$inlineObject42PermissionEnumValues;
  static InlineObject42PermissionEnum valueOf(String name) => _$inlineObject42PermissionEnumValueOf(name);
}

