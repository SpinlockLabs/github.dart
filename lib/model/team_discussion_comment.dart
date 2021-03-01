//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_discussion_comment.g.dart';

abstract class TeamDiscussionComment implements Built<TeamDiscussionComment, TeamDiscussionCommentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleUser get author;

    /// The main text of the comment.
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
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'last_edited_at')
    DateTime get lastEditedAt;

    @nullable
    @BuiltValueField(wireName: r'discussion_url')
    String get discussionUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The unique sequence number of a team discussion comment.
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

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
    TeamDiscussionComment._();

    static void _initializeBuilder(TeamDiscussionCommentBuilder b) => b;

    factory TeamDiscussionComment([void updates(TeamDiscussionCommentBuilder b)]) = _$TeamDiscussionComment;
    static Serializer<TeamDiscussionComment> get serializer => _$teamDiscussionCommentSerializer;
}

