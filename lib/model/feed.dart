//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/feed_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feed.g.dart';

abstract class Feed implements Built<Feed, FeedBuilder> {

    @nullable
    @BuiltValueField(wireName: r'timeline_url')
    String get timelineUrl;

    @nullable
    @BuiltValueField(wireName: r'user_url')
    String get userUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_public_url')
    String get currentUserPublicUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_url')
    String get currentUserUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_actor_url')
    String get currentUserActorUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_organization_url')
    String get currentUserOrganizationUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_organization_urls')
    BuiltList<String> get currentUserOrganizationUrls;

    @nullable
    @BuiltValueField(wireName: r'security_advisories_url')
    String get securityAdvisoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'_links')
    FeedLinks get links;

    // Boilerplate code needed to wire-up generated code
    Feed._();

    static void _initializeBuilder(FeedBuilder b) => b;

    factory Feed([void updates(FeedBuilder b)]) = _$Feed;
    static Serializer<Feed> get serializer => _$feedSerializer;
}

