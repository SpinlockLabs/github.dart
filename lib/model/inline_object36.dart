//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object36.g.dart';

abstract class InlineObject36 implements Built<InlineObject36, InlineObject36Builder> {

    /// **Required unless you provide `email`**. GitHub user ID for the person you are inviting.
    @nullable
    @BuiltValueField(wireName: r'invitee_id')
    int get inviteeId;

    /// **Required unless you provide `invitee_id`**. Email address of the person you are inviting, which can be an existing GitHub user.
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// Specify role for new member. Can be one of:   \\* `admin` - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* `direct_member` - Non-owner organization members with ability to see other members and join teams by invitation.   \\* `billing_manager` - Non-owner organization members with ability to manage the billing settings of your organization.
    @nullable
    @BuiltValueField(wireName: r'role')
    InlineObject36RoleEnum get role;
    // enum roleEnum {  admin,  direct_member,  billing_manager,  };

    /// Specify IDs for the teams you want to invite new members to.
    @nullable
    @BuiltValueField(wireName: r'team_ids')
    BuiltList<int> get teamIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject36._();

    static void _initializeBuilder(InlineObject36Builder b) => b
        ..role = const InlineObject36RoleEnum._('direct_member');

    factory InlineObject36([void updates(InlineObject36Builder b)]) = _$InlineObject36;
    static Serializer<InlineObject36> get serializer => _$inlineObject36Serializer;
}

class InlineObject36RoleEnum extends EnumClass {

  /// Specify role for new member. Can be one of:   \\* `admin` - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* `direct_member` - Non-owner organization members with ability to see other members and join teams by invitation.   \\* `billing_manager` - Non-owner organization members with ability to manage the billing settings of your organization.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject36RoleEnum admin = _$inlineObject36RoleEnum_admin;
  /// Specify role for new member. Can be one of:   \\* `admin` - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* `direct_member` - Non-owner organization members with ability to see other members and join teams by invitation.   \\* `billing_manager` - Non-owner organization members with ability to manage the billing settings of your organization.
  @BuiltValueEnumConst(wireName: r'direct_member')
  static const InlineObject36RoleEnum directMember = _$inlineObject36RoleEnum_directMember;
  /// Specify role for new member. Can be one of:   \\* `admin` - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* `direct_member` - Non-owner organization members with ability to see other members and join teams by invitation.   \\* `billing_manager` - Non-owner organization members with ability to manage the billing settings of your organization.
  @BuiltValueEnumConst(wireName: r'billing_manager')
  static const InlineObject36RoleEnum billingManager = _$inlineObject36RoleEnum_billingManager;

  static Serializer<InlineObject36RoleEnum> get serializer => _$inlineObject36RoleEnumSerializer;

  const InlineObject36RoleEnum._(String name): super(name);

  static BuiltSet<InlineObject36RoleEnum> get values => _$inlineObject36RoleEnumValues;
  static InlineObject36RoleEnum valueOf(String name) => _$inlineObject36RoleEnumValueOf(name);
}

