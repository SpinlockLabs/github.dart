//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_search_result_item.g.dart';

abstract class UserSearchResultItem implements Built<UserSearchResultItem, UserSearchResultItemBuilder> {

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
    @BuiltValueField(wireName: r'subscriptions_url')
    String get subscriptionsUrl;

    @nullable
    @BuiltValueField(wireName: r'organizations_url')
    String get organizationsUrl;

    @nullable
    @BuiltValueField(wireName: r'repos_url')
    String get reposUrl;

    @nullable
    @BuiltValueField(wireName: r'received_events_url')
    String get receivedEventsUrl;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'score')
    int get score;

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
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

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
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'bio')
    String get bio;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    @nullable
    @BuiltValueField(wireName: r'site_admin')
    bool get siteAdmin;

    @nullable
    @BuiltValueField(wireName: r'hireable')
    bool get hireable;

    @nullable
    @BuiltValueField(wireName: r'text_matches')
    BuiltList<JsonObject> get textMatches;

    @nullable
    @BuiltValueField(wireName: r'blog')
    String get blog;

    @nullable
    @BuiltValueField(wireName: r'company')
    String get company;

    @nullable
    @BuiltValueField(wireName: r'suspended_at')
    DateTime get suspendedAt;

    // Boilerplate code needed to wire-up generated code
    UserSearchResultItem._();

    static void _initializeBuilder(UserSearchResultItemBuilder b) => b;

    factory UserSearchResultItem([void updates(UserSearchResultItemBuilder b)]) = _$UserSearchResultItem;
    static Serializer<UserSearchResultItem> get serializer => _$userSearchResultItemSerializer;
}

