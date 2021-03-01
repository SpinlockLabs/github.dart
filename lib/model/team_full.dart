//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/organization_full.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/team_simple.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_full.g.dart';

abstract class TeamFull implements Built<TeamFull, TeamFullBuilder> {

    /// Unique identifier of the team
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// URL for the team
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// Name of the team
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// The level of privacy this team should have
    @nullable
    @BuiltValueField(wireName: r'privacy')
    TeamFullPrivacyEnum get privacy;
    // enum privacyEnum {  closed,  secret,  };

    /// Permission that the team will have for its repositories
    @nullable
    @BuiltValueField(wireName: r'permission')
    String get permission;

    @nullable
    @BuiltValueField(wireName: r'members_url')
    String get membersUrl;

    @nullable
    @BuiltValueField(wireName: r'repositories_url')
    String get repositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'parent')
    TeamSimple get parent;

    @nullable
    @BuiltValueField(wireName: r'members_count')
    int get membersCount;

    @nullable
    @BuiltValueField(wireName: r'repos_count')
    int get reposCount;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'organization')
    OrganizationFull get organization;

    /// Distinguished Name (DN) that team maps to within LDAP environment
    @nullable
    @BuiltValueField(wireName: r'ldap_dn')
    String get ldapDn;

    // Boilerplate code needed to wire-up generated code
    TeamFull._();

    static void _initializeBuilder(TeamFullBuilder b) => b;

    factory TeamFull([void updates(TeamFullBuilder b)]) = _$TeamFull;
    static Serializer<TeamFull> get serializer => _$teamFullSerializer;
}

class TeamFullPrivacyEnum extends EnumClass {

  /// The level of privacy this team should have
  @BuiltValueEnumConst(wireName: r'closed')
  static const TeamFullPrivacyEnum closed = _$teamFullPrivacyEnum_closed;
  /// The level of privacy this team should have
  @BuiltValueEnumConst(wireName: r'secret')
  static const TeamFullPrivacyEnum secret = _$teamFullPrivacyEnum_secret;

  static Serializer<TeamFullPrivacyEnum> get serializer => _$teamFullPrivacyEnumSerializer;

  const TeamFullPrivacyEnum._(String name): super(name);

  static BuiltSet<TeamFullPrivacyEnum> get values => _$teamFullPrivacyEnumValues;
  static TeamFullPrivacyEnum valueOf(String name) => _$teamFullPrivacyEnumValueOf(name);
}

