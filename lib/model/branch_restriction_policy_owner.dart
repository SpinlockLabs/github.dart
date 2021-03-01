//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_restriction_policy_owner.g.dart';

abstract class BranchRestrictionPolicyOwner implements Built<BranchRestrictionPolicyOwner, BranchRestrictionPolicyOwnerBuilder> {

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

    @nullable
    @BuiltValueField(wireName: r'gravatar_id')
    String get gravatarId;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'followers_url')
    String get followersUrl;

    @nullable
    @BuiltValueField(wireName: r'following_url')
    String get followingUrl;

    @nullable
    @BuiltValueField(wireName: r'gists_url')
    String get gistsUrl;

    @nullable
    @BuiltValueField(wireName: r'starred_url')
    String get starredUrl;

    @nullable
    @BuiltValueField(wireName: r'subscriptions_url')
    String get subscriptionsUrl;

    @nullable
    @BuiltValueField(wireName: r'organizations_url')
    String get organizationsUrl;

    @nullable
    @BuiltValueField(wireName: r'received_events_url')
    String get receivedEventsUrl;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    BranchRestrictionPolicyOwner._();

    static void _initializeBuilder(BranchRestrictionPolicyOwnerBuilder b) => b;

    factory BranchRestrictionPolicyOwner([void updates(BranchRestrictionPolicyOwnerBuilder b)]) = _$BranchRestrictionPolicyOwner;
    static Serializer<BranchRestrictionPolicyOwner> get serializer => _$branchRestrictionPolicyOwnerSerializer;
}

