//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_discussion.g.dart';

abstract class TeamDiscussion implements Built<TeamDiscussion, TeamDiscussionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleUser get author;

    /// The main text of the discussion.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    /// The current version of the body content. If provided, this update operation will be rejected if the given version does not match the latest version on the server.
    @nullable
    @BuiltValueField(wireName: r'body_version')
    String get bodyVersion;

    @nullable
    @BuiltValueField(wireName: r'comments_count')
    int get commentsCount;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'last_edited_at')
    DateTime get lastEditedAt;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The unique sequence number of a team discussion.
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// Whether or not this discussion should be pinned for easy retrieval.
    @nullable
    @BuiltValueField(wireName: r'pinned')
    bool get pinned;

    /// Whether or not this discussion should be restricted to team members and organization administrators.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    @nullable
    @BuiltValueField(wireName: r'team_url')
    String get teamUrl;

    /// The title of the discussion.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'reactions')
    ReactionRollup get reactions;

    // Boilerplate code needed to wire-up generated code
    TeamDiscussion._();

    static void _initializeBuilder(TeamDiscussionBuilder b) => b;

    factory TeamDiscussion([void updates(TeamDiscussionBuilder b)]) = _$TeamDiscussion;
    static Serializer<TeamDiscussion> get serializer => _$teamDiscussionSerializer;
}

