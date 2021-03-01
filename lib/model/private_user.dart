//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/private_user_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'private_user.g.dart';

abstract class PrivateUser implements Built<PrivateUser, PrivateUserBuilder> {

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
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    @nullable
    @BuiltValueField(wireName: r'gravatar_id')
    String get gravatarId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

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
    @BuiltValueField(wireName: r'repos_url')
    String get reposUrl;

    @nullable
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

    @nullable
    @BuiltValueField(wireName: r'received_events_url')
    String get receivedEventsUrl;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'site_admin')
    bool get siteAdmin;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'company')
    String get company;

    @nullable
    @BuiltValueField(wireName: r'blog')
    String get blog;

    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'hireable')
    bool get hireable;

    @nullable
    @BuiltValueField(wireName: r'bio')
    String get bio;

    @nullable
    @BuiltValueField(wireName: r'twitter_username')
    String get twitterUsername;

    @nullable
    @BuiltValueField(wireName: r'public_repos')
    int get publicRepos;

    @nullable
    @BuiltValueField(wireName: r'public_gists')
    int get publicGists;

    @nullable
    @BuiltValueField(wireName: r'followers')
    int get followers;

    @nullable
    @BuiltValueField(wireName: r'following')
    int get following;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'private_gists')
    int get privateGists;

    @nullable
    @BuiltValueField(wireName: r'total_private_repos')
    int get totalPrivateRepos;

    @nullable
    @BuiltValueField(wireName: r'owned_private_repos')
    int get ownedPrivateRepos;

    @nullable
    @BuiltValueField(wireName: r'disk_usage')
    int get diskUsage;

    @nullable
    @BuiltValueField(wireName: r'collaborators')
    int get collaborators;

    @nullable
    @BuiltValueField(wireName: r'two_factor_authentication')
    bool get twoFactorAuthentication;

    @nullable
    @BuiltValueField(wireName: r'plan')
    PrivateUserPlan get plan;

    @nullable
    @BuiltValueField(wireName: r'suspended_at')
    DateTime get suspendedAt;

    @nullable
    @BuiltValueField(wireName: r'business_plus')
    bool get businessPlus;

    @nullable
    @BuiltValueField(wireName: r'ldap_dn')
    String get ldapDn;

    // Boilerplate code needed to wire-up generated code
    PrivateUser._();

    static void _initializeBuilder(PrivateUserBuilder b) => b;

    factory PrivateUser([void updates(PrivateUserBuilder b)]) = _$PrivateUser;
    static Serializer<PrivateUser> get serializer => _$privateUserSerializer;
}

