//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_membership.g.dart';

abstract class TeamMembership implements Built<TeamMembership, TeamMembershipBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The role of the user in the team.
    @nullable
    @BuiltValueField(wireName: r'role')
    TeamMembershipRoleEnum get role;
    // enum roleEnum {  member,  maintainer,  };

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    // Boilerplate code needed to wire-up generated code
    TeamMembership._();

    static void _initializeBuilder(TeamMembershipBuilder b) => b
        ..role = const TeamMembershipRoleEnum._('member');

    factory TeamMembership([void updates(TeamMembershipBuilder b)]) = _$TeamMembership;
    static Serializer<TeamMembership> get serializer => _$teamMembershipSerializer;
}

class TeamMembershipRoleEnum extends EnumClass {

  /// The role of the user in the team.
  @BuiltValueEnumConst(wireName: r'member')
  static const TeamMembershipRoleEnum member = _$teamMembershipRoleEnum_member;
  /// The role of the user in the team.
  @BuiltValueEnumConst(wireName: r'maintainer')
  static const TeamMembershipRoleEnum maintainer = _$teamMembershipRoleEnum_maintainer;

  static Serializer<TeamMembershipRoleEnum> get serializer => _$teamMembershipRoleEnumSerializer;

  const TeamMembershipRoleEnum._(String name): super(name);

  static BuiltSet<TeamMembershipRoleEnum> get values => _$teamMembershipRoleEnumValues;
  static TeamMembershipRoleEnum valueOf(String name) => _$teamMembershipRoleEnumValueOf(name);
}

