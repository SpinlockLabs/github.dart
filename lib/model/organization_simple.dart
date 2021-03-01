//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_simple.g.dart';

abstract class OrganizationSimple implements Built<OrganizationSimple, OrganizationSimpleBuilder> {

    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'repos_url')
    String get reposUrl;

    @nullable
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

    @nullable
    @BuiltValueField(wireName: r'hooks_url')
    String get hooksUrl;

    @nullable
    @BuiltValueField(wireName: r'issues_url')
    String get issuesUrl;

    @nullable
    @BuiltValueField(wireName: r'members_url')
    String get membersUrl;

    @nullable
    @BuiltValueField(wireName: r'public_members_url')
    String get publicMembersUrl;

    @nullable
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    // Boilerplate code needed to wire-up generated code
    OrganizationSimple._();

    static void _initializeBuilder(OrganizationSimpleBuilder b) => b;

    factory OrganizationSimple([void updates(OrganizationSimpleBuilder b)]) = _$OrganizationSimple;
    static Serializer<OrganizationSimple> get serializer => _$organizationSimpleSerializer;
}

