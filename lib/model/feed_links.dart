//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/link_with_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feed_links.g.dart';

abstract class FeedLinks implements Built<FeedLinks, FeedLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'timeline')
    LinkWithType get timeline;

    @nullable
    @BuiltValueField(wireName: r'user')
    LinkWithType get user;

    @nullable
    @BuiltValueField(wireName: r'security_advisories')
    LinkWithType get securityAdvisories;

    @nullable
    @BuiltValueField(wireName: r'current_user')
    LinkWithType get currentUser;

    @nullable
    @BuiltValueField(wireName: r'current_user_public')
    LinkWithType get currentUserPublic;

    @nullable
    @BuiltValueField(wireName: r'current_user_actor')
    LinkWithType get currentUserActor;

    @nullable
    @BuiltValueField(wireName: r'current_user_organization')
    LinkWithType get currentUserOrganization;

    @nullable
    @BuiltValueField(wireName: r'current_user_organizations')
    BuiltList<LinkWithType> get currentUserOrganizations;

    // Boilerplate code needed to wire-up generated code
    FeedLinks._();

    static void _initializeBuilder(FeedLinksBuilder b) => b;

    factory FeedLinks([void updates(FeedLinksBuilder b)]) = _$FeedLinks;
    static Serializer<FeedLinks> get serializer => _$feedLinksSerializer;
}

