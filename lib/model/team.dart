//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/team_simple.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team.g.dart';

abstract class Team implements Built<Team, TeamBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'privacy')
    String get privacy;

    @nullable
    @BuiltValueField(wireName: r'permission')
    String get permission;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'members_url')
    String get membersUrl;

    @nullable
    @BuiltValueField(wireName: r'repositories_url')
    String get repositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'parent')
    TeamSimple get parent;

    // Boilerplate code needed to wire-up generated code
    Team._();

    static void _initializeBuilder(TeamBuilder b) => b;

    factory Team([void updates(TeamBuilder b)]) = _$Team;
    static Serializer<Team> get serializer => _$teamSerializer;
}

