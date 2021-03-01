//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_invitation.g.dart';

abstract class OrganizationInvitation implements Built<OrganizationInvitation, OrganizationInvitationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'role')
    String get role;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'failed_at')
    String get failedAt;

    @nullable
    @BuiltValueField(wireName: r'failed_reason')
    String get failedReason;

    @nullable
    @BuiltValueField(wireName: r'inviter')
    SimpleUser get inviter;

    @nullable
    @BuiltValueField(wireName: r'team_count')
    int get teamCount;

    @nullable
    @BuiltValueField(wireName: r'invitation_team_url')
    String get invitationTeamUrl;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'invitation_teams_url')
    String get invitationTeamsUrl;

    // Boilerplate code needed to wire-up generated code
    OrganizationInvitation._();

    static void _initializeBuilder(OrganizationInvitationBuilder b) => b;

    factory OrganizationInvitation([void updates(OrganizationInvitationBuilder b)]) = _$OrganizationInvitation;
    static Serializer<OrganizationInvitation> get serializer => _$organizationInvitationSerializer;
}

