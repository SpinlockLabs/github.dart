//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_simple.g.dart';

abstract class TeamSimple implements Built<TeamSimple, TeamSimpleBuilder> {

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
    @BuiltValueField(wireName: r'members_url')
    String get membersUrl;

    /// Name of the team
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Description of the team
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Permission that the team will have for its repositories
    @nullable
    @BuiltValueField(wireName: r'permission')
    String get permission;

    /// The level of privacy this team should have
    @nullable
    @BuiltValueField(wireName: r'privacy')
    String get privacy;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'repositories_url')
    String get repositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    /// Distinguished Name (DN) that team maps to within LDAP environment
    @nullable
    @BuiltValueField(wireName: r'ldap_dn')
    String get ldapDn;

    // Boilerplate code needed to wire-up generated code
    TeamSimple._();

    static void _initializeBuilder(TeamSimpleBuilder b) => b;

    factory TeamSimple([void updates(TeamSimpleBuilder b)]) = _$TeamSimple;
    static Serializer<TeamSimple> get serializer => _$teamSimpleSerializer;
}

